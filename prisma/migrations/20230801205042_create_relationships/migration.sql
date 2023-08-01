/*
  Warnings:

  - Added the required column `gym_id` to the `check_in` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `check_in` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "check_in" ADD COLUMN     "gym_id" TEXT NOT NULL,
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "user" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AddForeignKey
ALTER TABLE "check_in" ADD CONSTRAINT "check_in_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "check_in" ADD CONSTRAINT "check_in_gym_id_fkey" FOREIGN KEY ("gym_id") REFERENCES "gym"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
