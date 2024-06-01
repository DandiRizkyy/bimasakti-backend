var express = require('express');
var router = express.Router();
const axios = require('axios');
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const inquiryApi = process.env.INQUIRY_API;

router.post('/', async function(req, res, next) {
    if (req.is('application/json')) {
        const jsonData = req.body;
        console.log(jsonData);
        try {
            // Send data to external API
            const response = await axios.post(inquiryApi, jsonData);

            // Save response to database using Prisma
            const savedData = await prisma.inquiry.create({
                data: {
                    ...response.data,
                    userId: 1
                }
            });

            // Send saved data to client
            res.json({
                status: 'success',
                data: savedData
            });
        } catch (error) {
            console.error(error);
            res.status(500).json({
                status: 'error',
                message: 'Failed to post data to the API'
            });
        }
    } else {
        res.status(400).send('Bad Request: Content-Type must be application/json');
    }
});

module.exports = router;
