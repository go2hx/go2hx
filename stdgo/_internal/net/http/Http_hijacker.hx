package stdgo._internal.net.http;
@:interface typedef Hijacker = stdgo.StructType & {
    /**
        * Hijack lets the caller take over the connection.
        * After a call to Hijack the HTTP server library
        * will not do anything else with the connection.
        * 
        * It becomes the caller's responsibility to manage
        * and close the connection.
        * 
        * The returned net.Conn may have read or write deadlines
        * already set, depending on the configuration of the
        * Server. It is the caller's responsibility to set
        * or clear those deadlines as needed.
        * 
        * The returned bufio.Reader may contain unprocessed buffered
        * data from the client.
        * 
        * After a call to Hijack, the original Request.Body must not
        * be used. The original Request's Context remains valid and
        * is not canceled until the Request's ServeHTTP method
        * returns.
        
        
    **/
    @:interfacetypeffun
    public dynamic function hijack():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; };
};
