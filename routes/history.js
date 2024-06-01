var express = require('express');
var router = express.Router();
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

router.get('/', async function(req, res, next) {
  try {

    const page = parseInt(req.query.page) || 1;
    const itemsPerPage = 10;
    
    // 1. Calculate the offset for the database query
    const skip = (page - 1) * itemsPerPage;

    // 2. Fetch the total count of records in the database
    const totalRecords = await prisma.payment.count();

    // 3. Calculate the total number of pages
    const totalPages = Math.ceil(totalRecords / itemsPerPage);

    // 4. Fetch the data from the database with pagination
    const results = await prisma.payment.findMany({
      skip: skip,
      take: itemsPerPage,
    });

    if (results.length === 0) {
      res.status(404).json({
        msg: 'No records found',
      });
      return;
    }

    res.status(200).json({
      msg: 'success',
      currentPages: page,
      totalPages: totalPages,
      data: results,
    });
  } catch (error) {
    console.error('Error fetching data:', error);
    res.status(500).json({
      msg: 'error',
      error: error.message,
    });
  }
});

module.exports = router;
