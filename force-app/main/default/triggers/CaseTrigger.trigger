trigger CaseTrigger on Case (before insert, before update) {
    if(Trigger.isInsert){
        system.debug('before insert case trigger called');
        system.debug('trigger size is ==>>> ' + trigger.size);
    } 
    if(Trigger.isUpdate){
        system.debug('before update case trigger called');
        system.debug('trigger size is ==>>> ' + trigger.size);
        CaseTriggerHandler.countRecordsUpdate += trigger.size;
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('# of times trigger executed = ' + CaseTriggerHandler.countTriggerExecution);
        system.debug('# of total records updated = ' + CaseTriggerHandler.countRecordsUpdate);
    }
}