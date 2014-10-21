public class ContactRemoteExample {
    
    public ContactRemoteExample(ApexPages.StandardController con) { 
        Contact obj = (Contact)con.getRecord();
    }
    
    @RemoteAction
    public static Id getRecordType(String desiredRtName) {
        desiredRtName = '%' + desiredRtName + '%';
        
        List<RecordType> rts = [select Id from RecordType where SobjectType = 'Contact' and Name like :desiredRtName];
        
        Id rtId = rts[0].Id;
        return rtId;
    }
    
}