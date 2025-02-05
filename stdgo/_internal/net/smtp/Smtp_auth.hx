package stdgo._internal.net.smtp;
@:interface typedef Auth = stdgo.StructType & {
    /**
        * Start begins an authentication with a server.
        * It returns the name of the authentication protocol
        * and optionally data to include in the initial AUTH message
        * sent to the server.
        * If it returns a non-nil error, the SMTP client aborts
        * the authentication attempt and closes the connection.
        
        
    **/
    @:interfacetypeffun
    public dynamic function start(_server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; };
    /**
        * Next continues the authentication. The server has just sent
        * the fromServer data. If more is true, the server expects a
        * response, which Next should return as toServer; otherwise
        * Next should return toServer == nil.
        * If Next returns a non-nil error, the SMTP client aborts
        * the authentication attempt and closes the connection.
        
        
    **/
    @:interfacetypeffun
    public dynamic function next(_fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
