package stdgo._internal.net.http;
typedef T_http2Frame = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function header():stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader;
    /**
        invalidate is called by Framer.ReadFrame to make this
        frame's buffers as being invalid, since the subsequent
        frame will reuse them.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _invalidate():Void;
};
