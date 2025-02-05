package stdgo._internal.crypto.tls;
@:interface typedef ClientSessionCache = stdgo.StructType & {
    /**
        * Get searches for a ClientSessionState associated with the given key.
        * On return, ok is true if one was found.
        
        
    **/
    @:interfacetypeffun
    public dynamic function get(_sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; };
    /**
        * Put adds the ClientSessionState to the cache with the given key. It might
        * get called multiple times in a connection if a TLS 1.3 server provides
        * more than one session ticket. If called with a nil *ClientSessionState,
        * it should remove the cache entry.
        
        
    **/
    @:interfacetypeffun
    public dynamic function put(_sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>):Void;
};
