public with sharing class SalesforceProjectTriggerHandler {
   public static void createDefaultSalesforceTicket(List<salesforce_project__c> spTriggerNew) {
       //create one empty list of ticket
       List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();
       for (salesforce_project__c eachSP : spTriggerNew) {
           Salesforce_Ticket__c st = new Salesforce_Ticket__c();
           st.Subject__c = 'Default ST';
           st.Salesforce_Project__c = eachSP.id;
           newSTList.add(st);
       }
       if(!newSTList.isEmpty()){
           insert newSTList;
       }
   }
}
