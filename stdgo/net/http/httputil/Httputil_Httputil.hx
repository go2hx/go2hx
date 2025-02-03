package stdgo.net.http.httputil;
/**
    Package httputil provides HTTP utility functions, complementing the
    more common ones in the net/http package.
**/
class Httputil {
    /**
        DumpRequestOut is like DumpRequest but for outgoing client requests. It
        includes any headers that the standard http.Transport adds, such as
        User-Agent.
    **/
    static public inline function dumpRequestOut(_req:stdgo._internal.net.http.Http_Request.Request, _body:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_dumpRequestOut.dumpRequestOut(_req, _body);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        DumpRequest returns the given request in its HTTP/1.x wire
        representation. It should only be used by servers to debug client
        requests. The returned representation is an approximation only;
        some details of the initial request are lost while parsing it into
        an http.Request. In particular, the order and case of header field
        names are lost. The order of values in multi-valued headers is kept
        intact. HTTP/2 requests are dumped in HTTP/1.x form, not in their
        original binary representations.
        
        If body is true, DumpRequest also returns the body. To do so, it
        consumes req.Body and then replaces it with a new io.ReadCloser
        that yields the same bytes. If DumpRequest returns an error,
        the state of req is undefined.
        
        The documentation for http.Request.Write details which fields
        of req are included in the dump.
    **/
    static public inline function dumpRequest(_req:stdgo._internal.net.http.Http_Request.Request, _body:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_dumpRequest.dumpRequest(_req, _body);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        DumpResponse is like DumpRequest but dumps a response.
    **/
    static public inline function dumpResponse(_resp:stdgo._internal.net.http.Http_Response.Response, _body:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _resp = (_resp : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_dumpResponse.dumpResponse(_resp, _body);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        NewChunkedReader returns a new chunkedReader that translates the data read from r
        out of HTTP "chunked" format before returning it.
        The chunkedReader returns io.EOF when the final 0-length chunk is read.
        
        NewChunkedReader is not needed by normal applications. The http package
        automatically decodes chunking when reading response bodies.
    **/
    static public inline function newChunkedReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.net.http.httputil.Httputil_newChunkedReader.newChunkedReader(_r);
    }
    /**
        NewChunkedWriter returns a new chunkedWriter that translates writes into HTTP
        "chunked" format before writing them to w. Closing the returned chunkedWriter
        sends the final 0-length chunk that marks the end of the stream but does
        not send the final CRLF that appears after trailers; trailers and the last
        CRLF must be written separately.
        
        NewChunkedWriter is not needed by normal applications. The http
        package adds chunking automatically if handlers don't set a
        Content-Length header. Using NewChunkedWriter inside a handler
        would result in double chunking or chunking with a Content-Length
        length, both of which are wrong.
    **/
    static public inline function newChunkedWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.net.http.httputil.Httputil_newChunkedWriter.newChunkedWriter(_w);
    }
    /**
        NewServerConn is an artifact of Go's early HTTP implementation.
        It is low-level, old, and unused by Go's current HTTP stack.
        We should have deleted it before Go 1.
        
        Deprecated: Use the Server in package net/http instead.
    **/
    static public inline function newServerConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo._internal.bufio.Bufio_Reader.Reader):ServerConn {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.net.http.httputil.Httputil_newServerConn.newServerConn(_c, _r);
    }
    /**
        NewClientConn is an artifact of Go's early HTTP implementation.
        It is low-level, old, and unused by Go's current HTTP stack.
        We should have deleted it before Go 1.
        
        Deprecated: Use the Client or Transport in package net/http instead.
    **/
    static public inline function newClientConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo._internal.bufio.Bufio_Reader.Reader):ClientConn {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.net.http.httputil.Httputil_newClientConn.newClientConn(_c, _r);
    }
    /**
        NewProxyClientConn is an artifact of Go's early HTTP implementation.
        It is low-level, old, and unused by Go's current HTTP stack.
        We should have deleted it before Go 1.
        
        Deprecated: Use the Client or Transport in package net/http instead.
    **/
    static public inline function newProxyClientConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo._internal.bufio.Bufio_Reader.Reader):ClientConn {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.net.http.httputil.Httputil_newProxyClientConn.newProxyClientConn(_c, _r);
    }
    /**
        NewSingleHostReverseProxy returns a new ReverseProxy that routes
        URLs to the scheme, host, and base path provided in target. If the
        target's path is "/base" and the incoming request was for "/dir",
        the target request will be for /base/dir.
        
        NewSingleHostReverseProxy does not rewrite the Host header.
        
        To customize the ReverseProxy behavior beyond what
        NewSingleHostReverseProxy provides, use ReverseProxy directly
        with a Rewrite function. The ProxyRequest SetURL method
        may be used to route the outbound request. (Note that SetURL,
        unlike NewSingleHostReverseProxy, rewrites the Host header
        of the outbound request by default.)
        
        	proxy := &ReverseProxy{
        		Rewrite: func(r *ProxyRequest) {
        			r.SetURL(target)
        			r.Out.Host = r.In.Host // if desired
        		},
        	}
    **/
    static public inline function newSingleHostReverseProxy(_target:stdgo._internal.net.url.Url_URL.URL):ReverseProxy {
        final _target = (_target : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.http.httputil.Httputil_newSingleHostReverseProxy.newSingleHostReverseProxy(_target);
    }
}
