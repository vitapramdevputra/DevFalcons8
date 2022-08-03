trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    if(Trigger.isBefore){
        system.debug('BEFORE TRigger');
        //want to do something on before insert or before update
        if(trigger.isInsert){
            system.debug('Before INSERT Trigger');
        }
        if(trigger.isUpdate){
            system.debug('Before UPDATE Trigger');
        }
    }
    if(Trigger.isAfter){
        system.debug('AFTER Trigger');
        if(trigger.isInsert){
            system.debug('After INSERT Trigger');
        }
        if(trigger.isUpdate){
            //only on after update
            system.debug('After UPDATE Trigger');
        }
    }
}