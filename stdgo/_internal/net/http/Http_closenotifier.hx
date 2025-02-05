package stdgo._internal.net.http;
@:interface typedef CloseNotifier = stdgo.StructType & {
    /**
        * CloseNotify returns a channel that receives at most a
        * single value (true) when the client connection has gone
        * away.
        * 
        * CloseNotify may wait to notify until Request.Body has been
        * fully read.
        * 
        * After the Handler has returned, there is no guarantee
        * that the channel receives a value.
        * 
        * If the protocol is HTTP/1.1 and CloseNotify is called while
        * processing an idempotent request (such a GET) while
        * HTTP/1.1 pipelining is in use, the arrival of a subsequent
        * pipelined request may cause a value to be sent on the
        * returned channel. In practice HTTP/1.1 pipelining is not
        * enabled in browsers and not seen often in the wild. If this
        * is a problem, use HTTP/2 or only use CloseNotify on methods
        * such as POST.
        
        
    **/
    @:interfacetypeffun
    public dynamic function closeNotify():stdgo.Chan<Bool>;
};
