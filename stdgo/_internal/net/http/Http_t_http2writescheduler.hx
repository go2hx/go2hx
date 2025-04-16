package stdgo._internal.net.http;
@:interface typedef T_http2WriteScheduler = stdgo.StructType & {
    /**
        * OpenStream opens a new stream in the write scheduler.
        * It is illegal to call this with streamID=0 or with a streamID that is
        * already open -- the call may panic.
        
        
    **/
    @:interfacetypeffun
    public dynamic function openStream(_streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void;
    /**
        * CloseStream closes a stream in the write scheduler. Any frames queued on
        * this stream should be discarded. It is illegal to call this on a stream
        * that is not open -- the call may panic.
        
        
    **/
    @:interfacetypeffun
    public dynamic function closeStream(_streamID:stdgo.GoUInt32):Void;
    /**
        * AdjustStream adjusts the priority of the given stream. This may be called
        * on a stream that has not yet been opened or has been closed. Note that
        * RFC 7540 allows PRIORITY frames to be sent on streams in any state. See:
        * https://tools.ietf.org/html/rfc7540#section-5.1
        
        
    **/
    @:interfacetypeffun
    public dynamic function adjustStream(_streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void;
    /**
        * Push queues a frame in the scheduler. In most cases, this will not be
        * called with wr.StreamID()!=0 unless that stream is currently open. The one
        * exception is RST_STREAM frames, which may be sent on idle or closed streams.
        
        
    **/
    @:interfacetypeffun
    public dynamic function push(_wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void;
    /**
        * Pop dequeues the next frame to write. Returns false if no frames can
        * be written. Frames with a given wr.StreamID() are Pop'd in the same
        * order they are Push'd, except RST_STREAM frames. No frames should be
        * discarded except by CloseStream.
        
        
    **/
    @:interfacetypeffun
    public dynamic function pop():{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; };
};
