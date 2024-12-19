public class PujaSpecial {
    List<Account> acnt = new List<Account>();
    public void doWork(){    
    
        for(Account acc : [Select Id,Name from Account LIMIT 200]){
        acc.Name = 'BackEndLoadUpdatedv2.1';
        acnt.add(acc);
      }
        try{
            update acnt;
            System.debug('Account Name ***' + acnt);
        }catch(Exception e){
            System.debug(e);
        }
	
       /* for(Integer i = 0; i<=99 ;i++){
            List<Account> acnt = [Select Id,Name from Account];
            System.debug(acnt);
        }*/
   }
}