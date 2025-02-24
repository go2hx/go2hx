package stdgo._internal.net.smtp;
@:interface typedef Auth = stdgo.StructType & {
    @:interfacetypeffun
    function start(_server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; };
    @:interfacetypeffun
    function next(_fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
