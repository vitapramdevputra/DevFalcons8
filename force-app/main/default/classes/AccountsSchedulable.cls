public with sharing class AccountsSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        AccountsBatch ab = new AccountsBatch() ;
        integer numberOfRecords = 20;
        //1 way
        ID batchId = Database.executeBatch(ab, numberOfRecords);
    }
}
