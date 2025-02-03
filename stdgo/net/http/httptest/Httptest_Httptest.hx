package stdgo.net.http.httptest;
/**
    Package httptest provides utilities for HTTP testing.
**/
class Httptest {
    /**
        NewRequest returns a new incoming server Request, suitable
        for passing to an http.Handler for testing.
        
        The target is the RFC 7230 "request-target": it may be either a
        path or an absolute URL. If target is an absolute URL, the host name
        from the URL is used. Otherwise, "example.com" is used.
        
        The TLS field is set to a non-nil dummy value if target has scheme
        "https".
        
        The Request.Proto is always HTTP/1.1.
        
        An empty method means "GET".
        
        The provided body may be nil. If the body is of type *bytes.Reader,
        *strings.Reader, or *bytes.Buffer, the Request.ContentLength is
        set.
        
        NewRequest panics on error for ease of use in testing, where a
        panic is acceptable.
        
        To generate a client HTTP request instead of a server request, see
        the NewRequest function in the net/http package.
    **/
    static public inline function newRequest(_method:String, _target:String, _body:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.net.http.Http_Request.Request {
        final _method = (_method : stdgo.GoString);
        final _target = (_target : stdgo.GoString);
        return stdgo._internal.net.http.httptest.Httptest_newRequest.newRequest(_method, _target, _body);
    }
    /**
        NewRecorder returns an initialized ResponseRecorder.
    **/
    static public inline function newRecorder():ResponseRecorder {
        return stdgo._internal.net.http.httptest.Httptest_newRecorder.newRecorder();
    }
    /**
        NewServer starts and returns a new Server.
        The caller should call Close when finished, to shut it down.
    **/
    static public inline function newServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newServer.newServer(_handler);
    }
    /**
        NewUnstartedServer returns a new Server but doesn't start it.
        
        After changing its configuration, the caller should call Start or
        StartTLS.
        
        The caller should call Close when finished, to shut it down.
    **/
    static public inline function newUnstartedServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newUnstartedServer.newUnstartedServer(_handler);
    }
    /**
        NewTLSServer starts and returns a new Server using TLS.
        The caller should call Close when finished, to shut it down.
    **/
    static public inline function newTLSServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newTLSServer.newTLSServer(_handler);
    }
}
