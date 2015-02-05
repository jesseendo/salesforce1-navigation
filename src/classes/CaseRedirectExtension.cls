public with sharing class CaseRedirectExtension {

	public final Case mysObject {get;set;}

    public CaseRedirectExtension(ApexPages.StandardController stdController) {
        this.mysObject = (Case)stdController.getRecord();
    }

}
