Include %occInclude

/// <PRE style="font-size:0.8em;">  
/// ************************************************************************************************************************************
/// Class Name  : Which50.Bank.BS.AccountService
/// Description : Create service for Account SMS requests
/// ************************************************************************************************************************************
/// </PRE>
/// 
Class Which50.Bank.BS.AccountService Extends Ens.BusinessService
{

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
	set tSC = $$$OK
 	try 
 	{
		set tSC = ..SendRequestSync("BankAccountProcess", pInput, .pOutput)
		$$$ThrowOnError(tSC)
	}
	catch ex
    {
		set tSC = ex.AsStatus()
	}
	return tSC
}

}
