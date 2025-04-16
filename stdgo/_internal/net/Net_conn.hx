package stdgo._internal.net;
@:interface typedef Conn = stdgo.StructType & {
    /**
        * Read reads data from the connection.
        * Read can be made to time out and return an error after a fixed
        * time limit; see SetDeadline and SetReadDeadline.
        
        
    **/
    @:interfacetypeffun
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    /**
        * Write writes data to the connection.
        * Write can be made to time out and return an error after a fixed
        * time limit; see SetDeadline and SetWriteDeadline.
        
        
    **/
    @:interfacetypeffun
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    /**
        * Close closes the connection.
        * Any blocked Read or Write operations will be unblocked and return errors.
        
        
    **/
    @:interfacetypeffun
    public dynamic function close():stdgo.Error;
    /**
        * LocalAddr returns the local network address, if known.
        
        
    **/
    @:interfacetypeffun
    public dynamic function localAddr():stdgo._internal.net.Net_addr.Addr;
    /**
        * RemoteAddr returns the remote network address, if known.
        
        
    **/
    @:interfacetypeffun
    public dynamic function remoteAddr():stdgo._internal.net.Net_addr.Addr;
    /**
        * SetDeadline sets the read and write deadlines associated
        * with the connection. It is equivalent to calling both
        * SetReadDeadline and SetWriteDeadline.
        * 
        * A deadline is an absolute time after which I/O operations
        * fail instead of blocking. The deadline applies to all future
        * and pending I/O, not just the immediately following call to
        * Read or Write. After a deadline has been exceeded, the
        * connection can be refreshed by setting a deadline in the future.
        * 
        * If the deadline is exceeded a call to Read or Write or to other
        * I/O methods will return an error that wraps os.ErrDeadlineExceeded.
        * This can be tested using errors.Is(err, os.ErrDeadlineExceeded).
        * The error's Timeout method will return true, but note that there
        * are other possible errors for which the Timeout method will
        * return true even if the deadline has not been exceeded.
        * 
        * An idle timeout can be implemented by repeatedly extending
        * the deadline after successful Read or Write calls.
        * 
        * A zero value for t means I/O operations will not time out.
        
        
    **/
    @:interfacetypeffun
    public dynamic function setDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error;
    /**
        * SetReadDeadline sets the deadline for future Read calls
        * and any currently-blocked Read call.
        * A zero value for t means Read will not time out.
        
        
    **/
    @:interfacetypeffun
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error;
    /**
        * SetWriteDeadline sets the deadline for future Write calls
        * and any currently-blocked Write call.
        * Even if write times out, it may return n > 0, indicating that
        * some of the data was successfully written.
        * A zero value for t means Write will not time out.
        
        
    **/
    @:interfacetypeffun
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error;
};
