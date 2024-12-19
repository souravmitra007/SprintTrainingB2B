trigger RelatedAddition1 on Account (before insert,after insert) {
    if(Trigger.isBefore){
        List<Account> acc = new List<Account>();
        for(Account a : Trigger.new){
            Account accnt = new Account(Id = a.Id);
            
        }
    }
}