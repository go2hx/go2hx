package stdgo.net.http.cgi;
typedef Handler = stdgo._internal.net.http.cgi.Cgi_handler.Handler;
typedef HandlerPointer = stdgo._internal.net.http.cgi.Cgi_handlerpointer.HandlerPointer;
/**
    * Package cgi implements CGI (Common Gateway Interface) as specified
    * in RFC 3875.
    * 
    * Note that using CGI means starting a new process to handle each
    * request, which is typically less efficient than using a
    * long-running server. This package is intended primarily for
    * compatibility with existing systems.
**/
class Cgi {
    /**
        * Request returns the HTTP request as represented in the current
        * environment. This assumes the current program is being run
        * by a web server in a CGI environment.
        * The returned Request's Body is populated, if applicable.
    **/
    static public inline function request():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } return stdgo._internal.net.http.cgi.Cgi_request.request();
    /**
        * RequestFromMap creates an http.Request from CGI variables.
        * The returned Request's Body field is not populated.
    **/
    static public inline function requestFromMap(_params:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } return stdgo._internal.net.http.cgi.Cgi_requestfrommap.requestFromMap(_params);
    /**
        * Serve executes the provided Handler on the currently active CGI
        * request, if any. If there's no current CGI environment
        * an error is returned. The provided handler may be nil to use
        * http.DefaultServeMux.
    **/
    static public inline function serve(_handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Error return stdgo._internal.net.http.cgi.Cgi_serve.serve(_handler);
}
