string index2Candidate = ListDemo.candidateList(2);
system.debug('index2Candidate = ' + index2Candidate);

string index5candidate = ListDemo.candidateList(5);
system.debug('index 5 candidate = ' + index5candidate);

string indexminus5candidate = listDemo.candidateList(-5);
system.debug(indexminus5candidate);
string index0candidate = ListDemo.candidateList(0);
system.debug(index0candidate);

ListDemo.randomIntegerList();

ListDemo.allCats();


List<Integer> integerList = new list<integer>();
integerList.add(10);
integerList.add(15);
integerList.add(21);
integerList.add(15);
integerList.add(15);
system.debug('list of random integers = ' + integerList);

integerList.sort();
system.debug('sorted list ' + integerList);