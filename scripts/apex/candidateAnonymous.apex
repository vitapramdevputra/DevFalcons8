//className.methodName();
Candidates.printCandidateInfo();//will it work?

//clasName.staticVariableName
Candidates.CompanyName = 'Softinnovas';
system.debug('company name  = ' + Candidates.CompanyName);

Candidates.printCandidateInfo();//will it work?

//create new instance and then assign values to non-static variables.
Candidates c1 = new Candidates();
c1.name = 'Jerry';
c1.gender = 'Male';
c1.printCandidate();
c1.companyName = 'change it for c1'; //NO
//we cannot access STATIC member via instance.

Candidates c2 = new Candidates();
c2.name = 'Elaine';
c2.gender = 'Female';
c2.printCandidate();

Candidates.CompanyName = 'Vandely';
Candidates c3 = new Candidates();
c3.name = 'George';
c3.gender = 'Male';
c3.printCandidate();

Candidates c4 = new Candidates();
c4.name = 'Newman';
c4.gender = 'Male';
c4.printCandidate();

Candidates.printCandidateInfo();//will it work?