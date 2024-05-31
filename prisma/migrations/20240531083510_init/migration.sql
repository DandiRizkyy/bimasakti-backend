-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Inquiry" (
    "id" SERIAL NOT NULL,
    "kodeproduk" TEXT NOT NULL,
    "waktu" TEXT NOT NULL,
    "idpelanggan1" TEXT NOT NULL,
    "idpelanggan2" TEXT NOT NULL,
    "idpelanggan3" TEXT NOT NULL,
    "nominal" TEXT NOT NULL,
    "biayaadmin" TEXT NOT NULL,
    "uid" TEXT NOT NULL,
    "pin" TEXT NOT NULL,
    "ref1" TEXT NOT NULL,
    "ref2" TEXT NOT NULL,
    "ref3" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "keterangan" TEXT NOT NULL,
    "fee" TEXT NOT NULL,
    "saldoterpotong" TEXT NOT NULL,
    "switcherid" TEXT NOT NULL,
    "billercode" TEXT NOT NULL,
    "customerid1" TEXT NOT NULL,
    "customerid2" TEXT NOT NULL,
    "customerid3" TEXT NOT NULL,
    "billquantity" TEXT NOT NULL,
    "noref1" TEXT NOT NULL,
    "noref2" TEXT NOT NULL,
    "customername" TEXT NOT NULL,
    "customeraddress" TEXT NOT NULL,
    "customerdetailinformation" TEXT NOT NULL,
    "billeradmincharge" TEXT NOT NULL,
    "totalbillamount" TEXT NOT NULL,
    "pdamname" TEXT NOT NULL,
    "monthperiod1" TEXT NOT NULL,
    "yearperiod1" TEXT NOT NULL,
    "firstmeterread1" TEXT NOT NULL,
    "lastmeterread1" TEXT NOT NULL,
    "penalty1" TEXT NOT NULL,
    "billamount1" TEXT NOT NULL,
    "miscamount1" TEXT NOT NULL,
    "monthperiod2" TEXT NOT NULL,
    "yearperiod2" TEXT NOT NULL,
    "firstmeterread2" TEXT NOT NULL,
    "lastmeterread2" TEXT NOT NULL,
    "penalty2" TEXT NOT NULL,
    "billamount2" TEXT NOT NULL,
    "miscamount2" TEXT NOT NULL,
    "monthperiod3" TEXT NOT NULL,
    "yearperiod3" TEXT NOT NULL,
    "firstmeterread3" TEXT NOT NULL,
    "lastmeterread3" TEXT NOT NULL,
    "penalty3" TEXT NOT NULL,
    "billamount3" TEXT NOT NULL,
    "miscamount3" TEXT NOT NULL,
    "monthperiod4" TEXT NOT NULL,
    "yearperiod4" TEXT NOT NULL,
    "firstmeterread4" TEXT NOT NULL,
    "lastmeterread4" TEXT NOT NULL,
    "penalty4" TEXT NOT NULL,
    "billamount4" TEXT NOT NULL,
    "miscamount4" TEXT NOT NULL,
    "monthperiod5" TEXT NOT NULL,
    "yearperiod5" TEXT NOT NULL,
    "firstmeterread5" TEXT NOT NULL,
    "lastmeterread5" TEXT NOT NULL,
    "penalty5" TEXT NOT NULL,
    "billamount5" TEXT NOT NULL,
    "miscamount5" TEXT NOT NULL,
    "monthperiod6" TEXT NOT NULL,
    "yearperiod6" TEXT NOT NULL,
    "firstmeterread6" TEXT NOT NULL,
    "lastmeterread6" TEXT NOT NULL,
    "penalty6" TEXT NOT NULL,
    "billamount6" TEXT NOT NULL,
    "miscamount6" TEXT NOT NULL,
    "typemsg" TEXT NOT NULL,
    "totalbayar" TEXT NOT NULL,
    "saldo" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Inquiry_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Payment" (
    "id" SERIAL NOT NULL,
    "kodeproduk" TEXT NOT NULL,
    "waktu" TEXT NOT NULL,
    "idpelanggan1" TEXT NOT NULL,
    "idpelanggan2" TEXT NOT NULL,
    "idpelanggan3" TEXT NOT NULL,
    "nominal" TEXT NOT NULL,
    "biayaadmin" TEXT NOT NULL,
    "uid" TEXT NOT NULL,
    "pin" TEXT NOT NULL,
    "ref1" TEXT NOT NULL,
    "ref2" TEXT NOT NULL,
    "ref3" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "keterangan" TEXT NOT NULL,
    "fee" TEXT NOT NULL,
    "saldoterpotong" TEXT NOT NULL,
    "switcherid" TEXT NOT NULL,
    "billercode" TEXT NOT NULL,
    "customerid1" TEXT NOT NULL,
    "customerid2" TEXT NOT NULL,
    "customerid3" TEXT NOT NULL,
    "billquantity" TEXT NOT NULL,
    "noref1" TEXT NOT NULL,
    "noref2" TEXT NOT NULL,
    "customername" TEXT NOT NULL,
    "customeraddress" TEXT NOT NULL,
    "customerdetailinformation" TEXT NOT NULL,
    "billeradmincharge" TEXT NOT NULL,
    "totalbillamount" TEXT NOT NULL,
    "pdamname" TEXT NOT NULL,
    "monthperiod1" TEXT NOT NULL,
    "yearperiod1" TEXT NOT NULL,
    "firstmeterread1" TEXT NOT NULL,
    "lastmeterread1" TEXT NOT NULL,
    "penalty1" TEXT NOT NULL,
    "billamount1" TEXT NOT NULL,
    "miscamount1" TEXT NOT NULL,
    "monthperiod2" TEXT NOT NULL,
    "yearperiod2" TEXT NOT NULL,
    "firstmeterread2" TEXT NOT NULL,
    "lastmeterread2" TEXT NOT NULL,
    "penalty2" TEXT NOT NULL,
    "billamount2" TEXT NOT NULL,
    "miscamount2" TEXT NOT NULL,
    "monthperiod3" TEXT NOT NULL,
    "yearperiod3" TEXT NOT NULL,
    "firstmeterread3" TEXT NOT NULL,
    "lastmeterread3" TEXT NOT NULL,
    "penalty3" TEXT NOT NULL,
    "billamount3" TEXT NOT NULL,
    "miscamount3" TEXT NOT NULL,
    "monthperiod4" TEXT NOT NULL,
    "yearperiod4" TEXT NOT NULL,
    "firstmeterread4" TEXT NOT NULL,
    "lastmeterread4" TEXT NOT NULL,
    "penalty4" TEXT NOT NULL,
    "billamount4" TEXT NOT NULL,
    "miscamount4" TEXT NOT NULL,
    "monthperiod5" TEXT NOT NULL,
    "yearperiod5" TEXT NOT NULL,
    "firstmeterread5" TEXT NOT NULL,
    "lastmeterread5" TEXT NOT NULL,
    "penalty5" TEXT NOT NULL,
    "billamount5" TEXT NOT NULL,
    "miscamount5" TEXT NOT NULL,
    "monthperiod6" TEXT NOT NULL,
    "yearperiod6" TEXT NOT NULL,
    "firstmeterread6" TEXT NOT NULL,
    "lastmeterread6" TEXT NOT NULL,
    "penalty6" TEXT NOT NULL,
    "billamount6" TEXT NOT NULL,
    "miscamount6" TEXT NOT NULL,
    "typemsg" TEXT NOT NULL,
    "totalbayar" TEXT NOT NULL,
    "saldo" TEXT NOT NULL,
    "urlstruk" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Payment_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- AddForeignKey
ALTER TABLE "Inquiry" ADD CONSTRAINT "Inquiry_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Payment" ADD CONSTRAINT "Payment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;