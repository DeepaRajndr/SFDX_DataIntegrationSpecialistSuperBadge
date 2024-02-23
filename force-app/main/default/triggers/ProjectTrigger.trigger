trigger ProjectTrigger on Project__c (after update) {
    
    // Call the webservice finally with the list of records
    BillingCalloutService.callBillingService(Trigger.new,Trigger.oldMap);
    
    
}