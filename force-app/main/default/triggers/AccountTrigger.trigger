trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    system.debug('====Trigger START====');
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
    }
    system.debug('====Trigger END====');

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