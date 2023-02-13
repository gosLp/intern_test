-- CreateTable
CREATE TABLE "banks" (
    "name" VARCHAR(49),
    "id" BIGINT NOT NULL,

    CONSTRAINT "banks_id_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "branches" (
    "ifsc" VARCHAR(11) NOT NULL,
    "bank_id" BIGINT,
    "branch" VARCHAR(74),
    "address" VARCHAR(195),
    "city" VARCHAR(50),
    "district" VARCHAR(50),
    "state" VARCHAR(26),

    CONSTRAINT "branches_ifsc_pkey" PRIMARY KEY ("ifsc")
);

-- CreateIndex
CREATE UNIQUE INDEX "banks_id_key" ON "banks"("id");

-- CreateIndex
CREATE UNIQUE INDEX "branches_ifsc_key" ON "branches"("ifsc");

-- AddForeignKey
ALTER TABLE "branches" ADD CONSTRAINT "branches_banks_fkey" FOREIGN KEY ("bank_id") REFERENCES "banks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
