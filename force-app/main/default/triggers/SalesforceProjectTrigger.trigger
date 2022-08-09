trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert) {
    
    if (trigger.isAfter && trigger.isInsert) {
        //call handler method here.
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.New);
    }
}