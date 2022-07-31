Car vm = new Car();
vm.carColor = 'White';
vm.carName = 'Polo';
vm.switchOn();
vm.drive();
vm.driveAtMaxSpeed();
system.debug(vm);

Car bm = new Car();
bm.carColor = 'Black';
bm.switchOn();
system.debug(bm);

Car lm = new Car();
lm.carColor = 'red';
lm.switchOn();
//lm.maxSpeedKmPerHr = 100;
system.debug(lm);

