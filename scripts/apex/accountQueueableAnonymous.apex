list<account> accounts = [select id, name from account];
AccountsQueueableExample aq = new AccountsQueueableExample(accounts);
ID jobId = system.enqueueJob(aq);
system.debug('job id is ..... ' + jobId);