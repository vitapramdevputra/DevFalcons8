//if you define a parameterized consturctor, 
//then the default non-parameterized constructor DOESN'T work.
Cat dummyCat = new Cat();
dummyCat.color = 'black';
dummyCat.name = 'purr';
dummyCat.sleeping();
system.debug(dummyCat);

Cat falconsCat = new Cat('fluffykins', 'white');
system.debug(falconsCat);