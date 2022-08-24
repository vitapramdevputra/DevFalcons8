trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
  

    system.debug('====Trigger START====');
    if (trigger.isBefore) {
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if(trigger.isAfter && trigger.isInsert){
        //AccountsQueueableExample aq = new AccountsQueueableExample(trigger.new);
        //ID jobId = system.enqueueJob(aq);
        //system.debug('job id is ..... ' + jobId);
    }
    // if(trigger.isAfter && trigger.isInsert){
    //     //call our handler method.
    //     //we do not need Trigger.old and trigger.oldMap.
    //     //trigger.newMap is not null here?? 
    //     AccountTriggerHandlerP.createDefaultContact(trigger.new, trigger.newMap);
    // }
    if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        //call handler method to update contact's phone number
        //AccountTriggerHandlerP.updateContactsPhones(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
        //call handler method to update opportunities.
        //AccountTriggerHandlerP.updateOpportunityToLost(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    }
    
    system.debug('====Trigger END====');
    
   
    
    
    






/*

if(trigger.isAfter && trigger.isUpdate){
        integer countWebSiteUpdate = 0;

        map<id, account> trgOldMap = trigger.oldMap;
        map<id, account> trgNewMap = trigger.newMap;

        set<id> accIdSet = trgNewMap.keySet();

        for(Id eachId: accIdSet){
            account newAcc = trgnewmap.get(eachId);
            string newWebSite = newAcc.Website;

            account oldAcc = trgOldmap.get(eachId);
            string oldWebSite = oldAcc.Website;
            //to check if website field is changed, do the following
            if(newWebSite != oldWebSite){
                system.debug('Acc Name : ' + newAcc.Name + ', website is changed TO ===>>> ' + newWebsite);
                countWebSiteUpdate++;
            }
        }
        system.debug('count of website updated accounts => ' + countwebsiteupdate);
    }

*/







 /*if(trigger.isBefore && trigger.isInsert){
        system.debug('====BEFORE INSERT====');
        system.debug('Old Map ==> ' + trgOldMap); //null => because NO OLD.
        system.debug('New Map ==> ' + trgNewMap); //null => Key is ID and NO ID, so newMap is NULL. 
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('====AFTER INSERT====');
        system.debug('Old Map ==> ' + trgOldMap); //null => because NO OLD.
        system.debug('New Map ==> ' + trgNewMap); //YES
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('====BEFORE UPDATE====');
        system.debug('Old Map ==> ' + trgOldMap); //YES
        system.debug('New Map ==> ' + trgNewMap); //YES
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('====AFTER UPDATE====');
        system.debug('Old Map ==> ' + trgOldMap); //YES
        system.debug('New Map ==> ' + trgNewMap); //YES
    } */
    /*

     if (trigger.isAfter && trigger.isUpdate) {
        List<account> oldAccounts = trigger.old;
        List<account> newAccoutns = trigger.new;
        // //OLD FOR EACH LOOP
        // for(Account oldAcc: oldAccounts){
        //     system.debug('Old account id: ' + oldAcc.id + ', Old account name ' + oldAcc.Name);
        // }
        //NEW FOR EACH LOOP
        set<id> accIdSet = new set<id>();
        for(Account newAcc: newAccoutns){
            system.debug('New account id: ' + newAcc.id + ', new account name ' + newAcc.Name);
            accidset.add(newacc.Id);
        }
        system.debug('acc id set ==> ' + accIdSet);
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger trigger.old = ' + trigger.old);
    }

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger trigger.new = ' + trigger.new);
    }*/
   

    /*List<account> newAccounts = trigger.new; //is LIST<sObject>
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after trigger trigger.new = ' + newAccounts);
        system.debug('size of trigger.new = ' + newAccounts.size());

        for (account eachAcc : newAccounts) {
            system.debug('account id is ' + eachacc.id + ', each account name is ' + eachAcc.name);
        }

    } */
    
    /*
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //INSERT
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('After Insert trigger called.');
    }
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('Before Insert trigger called.');
    }

    //UPDATE
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After Update trigger called.');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('Before Update trigger called.');
    }
    
    
    */
    /*
    //this should print only in BEFORE.
    if(Trigger.isBefore){
        system.debug('Before INSERT trigger called');
    }
    if(Trigger.isAfter){
        //this should print only in AFTER.
        system.debug('After INSERT trigger called');
    }

    */
}