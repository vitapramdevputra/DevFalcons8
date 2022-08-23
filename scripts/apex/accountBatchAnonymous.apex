AccountsBatch ab = new AccountsBatch('No') ;
integer numberOfRecords = 20;
//1 way
ID batchId = Database.executeBatch(ab, numberOfRecords);

//another way
ID batchId2 = Database.executeBatch(new AccountsBatch('Yes'), 20);