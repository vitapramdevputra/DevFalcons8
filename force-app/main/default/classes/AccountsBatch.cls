public with sharing class AccountsBatch implements Database.Batchable<SObject>, database.stateful{
    integer updateCount = 0;
    set<id> accountIdsProccessed = new set<id>();
    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('****INSIDE START...');
        
        Database.QueryLocator q1 = database.getQueryLocator([select id, description, Active__c from account]);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        system.debug('****INSIDE EXECUTE...');
        system.debug('**** size of list = ' + scope.size());
        system.debug('**** updateCount = ' + updateCount);
        list<account> updateAccounts = new list<account>();
        for (account acc : scope) {
            if (acc.Active__c != 'No') {
                acc.Description += '...updated via BATCH.';
                updateAccounts.add(acc);
                updateCount++;
                system.debug('********** UPDATED *********');
            }
        }
        system.debug('**** updateCount at the End of execute method = ' + updateCount);
        update updateAccounts;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('****INSIDE FINISH...');
        system.debug('Batch is now COMPLETE. All CHUNKS are executed.');
        system.debug('**** updateCount = ' + updateCount);
    }
}
