Include %occInclude

/// <PRE style="font-size:0.8em;">  
/// ***********************************************************************
/// Class Name  : GOJ.Common.Messages.REST.Response
/// Description : Common REST response message       
/// ***********************************************************************
/// </PRE>
/// 
Class Which50.Messages.REST.Response Extends Ens.Response
{

Property DataStream As %Stream.GlobalCharacter;

Property RouteMethod As %Library.String(MAXLEN = "");

Property RouteName As %Library.String(MAXLEN = "");

Property SessionId As %Integer [ InitialExpression = {$get($$$JobSessionId)} ];

Property MethodType As %String;

Property SourceSystem As %Library.String(MAXLEN = "");

Property StatusCode As %String;

Storage Default
{
<Data name="ResponseDefaultData">
<Subscript>"Response"</Subscript>
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
<DefaultData>ResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
