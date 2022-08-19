@isTest
public  class SPTriggerHandlerTest {
    @isTest
    public static void testMethod1() {
        Salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'Teach DML to falcons';
        sp.description__c = 'All are great learners';

        test.startTest();
        insert sp;
        test.stopTest();

        List<Salesforce_Project__c> listSP = [select id, description__c from Salesforce_Project__c];
        system.assert(listSP[0].Description__c.containsIgnoreCase('future'));
    }
}
