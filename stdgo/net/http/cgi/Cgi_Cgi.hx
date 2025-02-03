package stdgo.net.http.cgi;
/**
    Package cgi implements CGI (Common Gateway Interface) as specified
    in RFC 3875.
    
    Note that using CGI means starting a new process to handle each
    request, which is typically less efficient than using a
    long-running server. This package is intended primarily for
    compatibility with existing systems.
**/
class Cgi {
    /**
        Request returns the HTTP request as represented in the current
        environment. This assumes the current program is being run
        by a web server in a CGI environment.
        The returned Request's Body is populated, if applicable.
    **/
    static public inline function request():stdgo.Tuple<stdgo._internal.net.http.Http_Request.Request, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.cgi.Cgi_request.request();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        RequestFromMap creates an http.Request from CGI variables.
        The returned Request's Body field is not populated.
    **/
    static public inline function requestFromMap(_params:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Tuple<stdgo._internal.net.http.Http_Request.Request, stdgo.Error> {
        final _params = (_params : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return {
            final obj = stdgo._internal.net.http.cgi.Cgi_requestFromMap.requestFromMap(_params);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Serve executes the provided Handler on the currently active CGI
        request, if any. If there's no current CGI environment
        an error is returned. The provided handler may be nil to use
        http.DefaultServeMux.
    **/
    static public inline function serve(_handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Error {
        return stdgo._internal.net.http.cgi.Cgi_serve.serve(_handler);
    }
}
