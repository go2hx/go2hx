package stdgo._internal.crypto.tls;
@:interface typedef ClientSessionCache = stdgo.StructType & {
    @:interfacetypeffun
    function get(_sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; };
    @:interfacetypeffun
    function put(_sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>):Void;
};
