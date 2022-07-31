public class DmlDemo {
  public static void dmlInsertDemo_stndObj() {
      //1. create new instance
      Account acc = new account();
      //2. set field values
      acc.Name = 'SoftInnovas';
      acc.Active__c = 'Yes';
      //INSERT
      insert acc;
      system.debug(acc);
  }

  public static void dmlInsertDemo_cstmObj() {
      Salesforce_project__c sp = new salesforce_project__c();
      sp.project_name__c = 'Teach DML to falcons';
      sp.description__c = 'All 40% are great learners';
      insert sp;
      system.debug(sp);
  }
}
