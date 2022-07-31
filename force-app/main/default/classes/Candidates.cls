public class Candidates {
   public string name;
   public string gender;
   public static string CompanyName;

   public void printCandidate(){
       system.debug('======START=====');
       system.debug('Name is ' + name + ', ('+ gender +')');
       system.debug('Company name = ' + CompanyName);
       system.debug('======END=====');
   }
   public static void printCandidateInfo() {
       system.debug('company name is ' + CompanyName);
   }
}
