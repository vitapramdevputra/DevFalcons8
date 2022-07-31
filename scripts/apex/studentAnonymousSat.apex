Students st1 = new Students();
st1.firstName = 'Fane';
st1.lastName = 'Bridgen';
st1.classYear = 1981;
st1.major = 'Architect';
string reportReturn = st1.generateReport();
system.debug('report returned --> ' + reportReturn);

Students st2 = new Students();
st2.firstName = 'Babe';
st2.lastName = 'Ruth';
st2.classYear = 1917;
st2.major = 'Press';
string reportReturn2 = st2.generateReport();
system.debug('report2 returned --> ' + reportReturn2);