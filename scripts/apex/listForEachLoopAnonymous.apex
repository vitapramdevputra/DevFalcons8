List<string> listCandidate = new List<string>();
listCandidate.add('Marc'); // 0
listCandidate.add('Elon');
listCandidate.add('Bill');
listCandidate.add('Marc'); // 3

//Print each element of the list in UPPERCASE one by one.
for(string eachCandy : listCandidate){
    system.debug(eachCandy.toUpperCase());
}