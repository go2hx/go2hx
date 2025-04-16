package stdgo._internal.net.http;
@:interface typedef ResponseWriter = stdgo.StructType & {
    /**
        * Header returns the header map that will be sent by
        * WriteHeader. The Header map also is the mechanism with which
        * Handlers can set HTTP trailers.
        * 
        * Changing the header map after a call to WriteHeader (or
        * Write) has no effect unless the HTTP status code was of the
        * 1xx class or the modified headers are trailers.
        * 
        * There are two ways to set Trailers. The preferred way is to
        * predeclare in the headers which trailers you will later
        * send by setting the "Trailer" header to the names of the
        * trailer keys which will come later. In this case, those
        * keys of the Header map are treated as if they were
        * trailers. See the example. The second way, for trailer
        * keys not known to the Handler until after the first Write,
        * is to prefix the Header map keys with the TrailerPrefix
        * constant value. See TrailerPrefix.
        * 
        * To suppress automatic response headers (such as "Date"), set
        * their value to nil.
        
        
    **/
    @:interfacetypeffun
    public dynamic function header():stdgo._internal.net.http.Http_header.Header;
    /**
        * Write writes the data to the connection as part of an HTTP reply.
        * 
        * If WriteHeader has not yet been called, Write calls
        * WriteHeader(http.StatusOK) before writing the data. If the Header
        * does not contain a Content-Type line, Write adds a Content-Type set
        * to the result of passing the initial 512 bytes of written data to
        * DetectContentType. Additionally, if the total size of all written
        * data is under a few KB and there are no Flush calls, the
        * Content-Length header is added automatically.
        * 
        * Depending on the HTTP protocol version and the client, calling
        * Write or WriteHeader may prevent future reads on the
        * Request.Body. For HTTP/1.x requests, handlers should read any
        * needed request body data before writing the response. Once the
        * headers have been flushed (due to either an explicit Flusher.Flush
        * call or writing enough data to trigger a flush), the request body
        * may be unavailable. For HTTP/2 requests, the Go HTTP server permits
        * handlers to continue to read the request body while concurrently
        * writing the response. However, such behavior may not be supported
        * by all HTTP/2 clients. Handlers should read before writing if
        * possible to maximize compatibility.
        
        
    **/
    @:interfacetypeffun
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    /**
        * WriteHeader sends an HTTP response header with the provided
        * status code.
        * 
        * If WriteHeader is not called explicitly, the first call to Write
        * will trigger an implicit WriteHeader(http.StatusOK).
        * Thus explicit calls to WriteHeader are mainly used to
        * send error codes or 1xx informational responses.
        * 
        * The provided code must be a valid HTTP 1xx-5xx status code.
        * Any number of 1xx headers may be written, followed by at most
        * one 2xx-5xx header. 1xx headers are sent immediately, but 2xx-5xx
        * headers may be buffered. Use the Flusher interface to send
        * buffered data. The header map is cleared when 2xx-5xx headers are
        * sent, but not with 1xx headers.
        * 
        * The server will automatically send a 100 (Continue) header
        * on the first read from the request body if the request has
        * an "Expect: 100-continue" header.
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeHeader(_statusCode:stdgo.GoInt):Void;
};
