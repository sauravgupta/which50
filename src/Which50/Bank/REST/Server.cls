Include %occInclude

/// <PRE style="font-size:0.8em;">  
/// ***************************************************************************************
/// Class Name  : Which50.Bank.REST.Server
/// Description : Which50 Bank REST endpoint
/// **************************************************************************************
/// </PRE> 
/// Creates below Endpoints:
/// <br>- POST: /api/v1/AccountService
/// 
Class Which50.Bank.REST.Server Extends %CSP.REST
{

Parameter CONVERTINPUTSTREAM = 1;

Parameter CHARSET = "utf-8";

Parameter CONTENTTYPE = "application/json";

XData UrlMap
{
<Routes>
<Route Url="/api/v1/AccountService" Method="POST" Call="PostAccountDetails"/>
 </Routes>
}

/// Create or replace
ClassMethod PostAccountDetails() As %Status
{
	
	try {
		Set tRequest = ##class(Which50.Messages.REST.Request).%New()
		Set tRequest.RouteName = %request.URL
		Set tRequest.RouteMethod = "PostAccountDetails"
		set tRequest.SourceSystem = "Which50"
		set tRequest.MethodType = %request.GetCgiEnv("REQUEST_METHOD")
		Set tSC = ##class(Ens.Director).CreateBusinessService("Which50BankAccountService",.tService)
		$$$ThrowOnError(tSC)
		Set tSC = tService.ProcessInput(tRequest, .output)
		$$$ThrowOnError(tSC)
		Set %response.ContentType = "application/json"
		Set %response.Status = output.StatusCode
		Do output.DataStream.Rewind()
		Return output.DataStream.OutputToDevice()
	}
	
	catch ex {
		set tSC = ex.AsStatus()
	}
	return tSC
}

}
