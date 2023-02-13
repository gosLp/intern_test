import { PrismaClient } from '@prisma/client';
export default prisma = global.prisma || new PrismaClient({
    log: ["query", "error", "warn"],
});
