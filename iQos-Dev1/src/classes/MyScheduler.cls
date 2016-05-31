public class MyScheduler {
    // ApexPages.StandardSetController must be instantiated
    // for standard list controllers
    public ApexPages.StandardSetController setCon {
        get {
            if(setCon == null) {
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
                    [SELECT Name FROM Scheduler__c]));
            }
            return setCon;
        }
        set;
    }

    // Initialize setCon and return a list of records
    public List<Scheduler__c> getSchedulers() {
        return (List<Scheduler__c>) setCon.getRecords();
    }
}