/// 
Class Which50.Bank.BP.BankAccountProcess Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Which50.Messages.REST.Request' response='Which50.Messages.REST.Response' height='2000' width='2000' >
<sequence xend='200' yend='350' >
<code xpos='200' ypos='250' >
<![CDATA[ set response=##class(Which50.Messages.REST.Response).%New()
 set response.StatusCode="200"
 set response.SessionId=$get($$$JobSessionId)
 set response.SourceSystem="Which50"
 set response.RouteMethod=request.RouteMethod
 set response.RouteName=request.RouteName
 ]]>
</code>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
