Class Which50.Bank.BO.SMSOperation Extends EnsLib.REST.Operation
{

Parameter INVOCATION = "Queue";

XData MessageMap
{
<MapItems>
		<MapItem MessageType="Which50.Bank.Which50.Messages.REST.Request"> 
		<Method>SendToWhich50</Method>
	</MapItem>
</MapItems>
}

Method SendToWhich50(source As %RegisteredObject, Output target As %RegisteredObject) As %Status
{
	set tSC = $$$OK
	
	set target = ##class(Which50.Messages.REST.Response).%New()
	set target.RouteMethod = source.RouteMethod
	set target.SourceSystem = source.SourceSystem
	set target.MethodType="POST"
	Set tURL= ..Adapter.URL
	try
	{
		do ..Adapter.PostURL(tURL,.tHttpResponse,"",source.DataStream)
		//Handle response errors
		if $$$ISERR(tHttpResponse)
		{
			do $system.Status.DisplayError(tHttpResponse)
		}
		else 
		{
			set target.StatusCode= tHttpResponse.StatusCode
			set target.ReasonPhrase = tHttpResponse.ReasonPhrase
			set target.DataStream = tHttpResponse.Data
			
		}
	}
	catch ex
	{	
		set tSC = ex.AsStatus()
	}
	Quit $$$OK
}

}
