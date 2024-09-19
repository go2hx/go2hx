package stdgo._internal.net.http;
typedef T_http2writeFramer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function _writeFrame(_0:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error;
    /**
        staysWithinBuffer reports whether this writer promises that
        it will only write less than or equal to size bytes, and it
        won't Flush the write context.
        
        
    **/
    public dynamic function _staysWithinBuffer(_size:stdgo.GoInt):Bool;
};
