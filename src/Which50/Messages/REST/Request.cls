Include %occInclude

/// <PRE style="font-size:0.8em;">  
/// ***********************************************************************
/// Class Name  : Which50.Messages.REST.Request
/// Description : Common REST request message       
/// ***********************************************************************
/// </PRE>
/// 
Class Which50.Messages.REST.Request Extends Ens.Request
{

Property DataStream As %Stream.GlobalCharacter;

Property RouteMethod As %Library.String(MAXLEN = "");

Property RouteName As %Library.String(MAXLEN = "");

Property MethodType As %String;

Property SessionId As %Integer [ InitialExpression = {$get($$$JobSessionId)} ];

Property SourceSystem As %Library.String(MAXLEN = "");

Property StatusCode As %String;

Storage Default
{
<Data name="RequestDefaultData">
<Subscript>"Request"</Subscript>
<Value name="1">
<Value>DataStream</Value>
</Value>
<Value name="2">
<Value>RouteMethod</Value>
</Value>
<Value name="3">
<Value>RouteName</Value>
</Value>
<Value name="4">
<Value>SessionId</Value>
</Value>
<Value name="5">
<Value>SourceSystem</Value>
</Value>
<Value name="6">
<Value>StatusCode</Value>
</Value>
<Value name="7">
<Value>MethodType</Value>
</Value>
</Data>
<DefaultData>RequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
