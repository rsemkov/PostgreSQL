ALTER table minions_info 
	ADD COLUMN "code" CHAR(4),
	ADD COLUMN "task" TEXT,
	ADD COLUMN "salary" DECIMAL(8, 3);