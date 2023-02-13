import {PrismaClient} from '@prisma/client';

declare global {
    var prisma: PrismaClient| undefined;

}

export  default  prisma = global.prisma|| new PrismaClient({
    log: ["query", "error", "warn"],
});