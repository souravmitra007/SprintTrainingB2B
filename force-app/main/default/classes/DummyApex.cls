public class DummyApex {
    public static void switchExp(){
        List<sObject> lstCstmr = [Select Day_Count__c from Customer__c LIMIT 1];
    Integer a = Integer.valueOf(lstCstmr.get(0));
    switch on a{
        when 0{
            System.debug('Sunday');
        }
        when 1{
            System.debug('Monday');
        }
        when 2{
             System.debug('Tuesday');
        }
        when 3{
             System.debug('Wednesday');
        }
        when 4{
             System.debug('Thursday');
        }
        when 5{
             System.debug('Friday');
        }
        when 6{
             System.debug('Saturday');
        }
        when else{
            System.debug('Incorrect Selection');
        }
    }
    }
}