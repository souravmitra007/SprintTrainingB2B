trigger HelloWorld on Account (before insert,after insert) {
    if(Trigger.isAfter){
       List<Account> accnt = new List<Account>();
        for(Account a : Trigger.new){
            Account acc = new Account(Id = a.Id);
            acc.Description = 'Done By Triggers';
            accnt.add(acc);
        }
        try{
            update accnt;
            System.debug('Done Successfully');
        }catch(Exception e){
            System.debug(e);
        }
    }
    if(Trigger.isAfter){
        for(Account a : Trigger.new){
            if(a.Name == 'Test2'){
                Trigger.newMap.get(a.Id).addError('Cannot Insert this account');
            }
        }
    }
}