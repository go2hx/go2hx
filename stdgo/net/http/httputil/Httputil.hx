package stdgo.net.http.httputil;
var errLineTooLong(get, set) : stdgo.Error;
private function get_errLineTooLong():stdgo.Error return stdgo._internal.net.http.httputil.Httputil_errlinetoolong.errLineTooLong;
private function set_errLineTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.httputil.Httputil_errlinetoolong.errLineTooLong = v;
        return v;
    }
var errPersistEOF(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errPersistEOF():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF;
private function set_errPersistEOF(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF = v;
        return v;
    }
var errClosed(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errClosed():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.httputil.Httputil_errclosed.errClosed;
private function set_errClosed(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.httputil.Httputil_errclosed.errClosed = v;
        return v;
    }
var errPipeline(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errPipeline():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.httputil.Httputil_errpipeline.errPipeline;
private function set_errPipeline(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.httputil.Httputil_errpipeline.errPipeline = v;
        return v;
    }
typedef BufferPool = stdgo._internal.net.http.httputil.Httputil_bufferpool.BufferPool;
typedef ServerConn = stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn;
typedef ClientConn = stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn;
typedef ProxyRequest = stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest;
typedef ReverseProxy = stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy;
typedef ServerConnPointer = stdgo._internal.net.http.httputil.Httputil_serverconnpointer.ServerConnPointer;
typedef ClientConnPointer = stdgo._internal.net.http.httputil.Httputil_clientconnpointer.ClientConnPointer;
typedef ProxyRequestPointer = stdgo._internal.net.http.httputil.Httputil_proxyrequestpointer.ProxyRequestPointer;
typedef ReverseProxyPointer = stdgo._internal.net.http.httputil.Httputil_reverseproxypointer.ReverseProxyPointer;
/**
    * Package httputil provides HTTP utility functions, complementing the
    * more common ones in the net/http package.
**/
class Httputil {
    /**
        * DumpRequestOut is like DumpRequest but for outgoing client requests. It
        * includes any headers that the standard http.Transport adds, such as
        * User-Agent.
    **/
    static public inline function dumpRequestOut(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.net.http.httputil.Httputil_dumprequestout.dumpRequestOut(_req, _body);
    /**
        * DumpRequest returns the given request in its HTTP/1.x wire
        * representation. It should only be used by servers to debug client
        * requests. The returned representation is an approximation only;
        * some details of the initial request are lost while parsing it into
        * an http.Request. In particular, the order and case of header field
        * names are lost. The order of values in multi-valued headers is kept
        * intact. HTTP/2 requests are dumped in HTTP/1.x form, not in their
        * original binary representations.
        * 
        * If body is true, DumpRequest also returns the body. To do so, it
        * consumes req.Body and then replaces it with a new io.ReadCloser
        * that yields the same bytes. If DumpRequest returns an error,
        * the state of req is undefined.
        * 
        * The documentation for http.Request.Write details which fields
        * of req are included in the dump.
    **/
    static public inline function dumpRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.net.http.httputil.Httputil_dumprequest.dumpRequest(_req, _body);
    /**
        * DumpResponse is like DumpRequest but dumps a response.
    **/
    static public inline function dumpResponse(_resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.net.http.httputil.Httputil_dumpresponse.dumpResponse(_resp, _body);
    /**
        * NewChunkedReader returns a new chunkedReader that translates the data read from r
        * out of HTTP "chunked" format before returning it.
        * The chunkedReader returns io.EOF when the final 0-length chunk is read.
        * 
        * NewChunkedReader is not needed by normal applications. The http package
        * automatically decodes chunking when reading response bodies.
    **/
    static public inline function newChunkedReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.net.http.httputil.Httputil_newchunkedreader.newChunkedReader(_r);
    /**
        * NewChunkedWriter returns a new chunkedWriter that translates writes into HTTP
        * "chunked" format before writing them to w. Closing the returned chunkedWriter
        * sends the final 0-length chunk that marks the end of the stream but does
        * not send the final CRLF that appears after trailers; trailers and the last
        * CRLF must be written separately.
        * 
        * NewChunkedWriter is not needed by normal applications. The http
        * package adds chunking automatically if handlers don't set a
        * Content-Length header. Using NewChunkedWriter inside a handler
        * would result in double chunking or chunking with a Content-Length
        * length, both of which are wrong.
    **/
    static public inline function newChunkedWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser return stdgo._internal.net.http.httputil.Httputil_newchunkedwriter.newChunkedWriter(_w);
    /**
        * NewServerConn is an artifact of Go's early HTTP implementation.
        * It is low-level, old, and unused by Go's current HTTP stack.
        * We should have deleted it before Go 1.
        * 
        * Deprecated: Use the Server in package net/http instead.
    **/
    static public inline function newServerConn(_c:stdgo._internal.net.Net_conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> return stdgo._internal.net.http.httputil.Httputil_newserverconn.newServerConn(_c, _r);
    /**
        * NewClientConn is an artifact of Go's early HTTP implementation.
        * It is low-level, old, and unused by Go's current HTTP stack.
        * We should have deleted it before Go 1.
        * 
        * Deprecated: Use the Client or Transport in package net/http instead.
    **/
    static public inline function newClientConn(_c:stdgo._internal.net.Net_conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> return stdgo._internal.net.http.httputil.Httputil_newclientconn.newClientConn(_c, _r);
    /**
        * NewProxyClientConn is an artifact of Go's early HTTP implementation.
        * It is low-level, old, and unused by Go's current HTTP stack.
        * We should have deleted it before Go 1.
        * 
        * Deprecated: Use the Client or Transport in package net/http instead.
    **/
    static public inline function newProxyClientConn(_c:stdgo._internal.net.Net_conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> return stdgo._internal.net.http.httputil.Httputil_newproxyclientconn.newProxyClientConn(_c, _r);
    /**
        * NewSingleHostReverseProxy returns a new ReverseProxy that routes
        * URLs to the scheme, host, and base path provided in target. If the
        * target's path is "/base" and the incoming request was for "/dir",
        * the target request will be for /base/dir.
        * 
        * NewSingleHostReverseProxy does not rewrite the Host header.
        * 
        * To customize the ReverseProxy behavior beyond what
        * NewSingleHostReverseProxy provides, use ReverseProxy directly
        * with a Rewrite function. The ProxyRequest SetURL method
        * may be used to route the outbound request. (Note that SetURL,
        * unlike NewSingleHostReverseProxy, rewrites the Host header
        * of the outbound request by default.)
        * 
        * 	proxy := &ReverseProxy{
        * 		Rewrite: func(r *ProxyRequest) {
        * 			r.SetURL(target)
        * 			r.Out.Host = r.In.Host // if desired
        * 		},
        * 	}
    **/
    static public inline function newSingleHostReverseProxy(_target:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> return stdgo._internal.net.http.httputil.Httputil_newsinglehostreverseproxy.newSingleHostReverseProxy(_target);
}
