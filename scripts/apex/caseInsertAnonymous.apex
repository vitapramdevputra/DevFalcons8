List<case> listCase = [select id, subject from case];
for (case c : listCase) {
    c.Subject += '2';
}
update listCase;


List<case> caseList = new list<case>();
for (Integer i = 0; i < 405; i++) {
    case c = new case();
    c.Subject  = 'there is a bug - v'+i;
    c.Description = 'resolve it';
    c.Origin = 'Web';
    c.Status = 'New';
    caseList.add(c);
}
insert caseList;