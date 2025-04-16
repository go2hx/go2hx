package stdgo.net.http.fcgi;
var errRequestAborted(get, set) : stdgo.Error;
private function get_errRequestAborted():stdgo.Error return stdgo._internal.net.http.fcgi.Fcgi_errrequestaborted.errRequestAborted;
private function set_errRequestAborted(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.fcgi.Fcgi_errrequestaborted.errRequestAborted = v;
        return v;
    }
var errConnClosed(get, set) : stdgo.Error;
private function get_errConnClosed():stdgo.Error return stdgo._internal.net.http.fcgi.Fcgi_errconnclosed.errConnClosed;
private function set_errConnClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.fcgi.Fcgi_errconnclosed.errConnClosed = v;
        return v;
    }
/**
    * Package fcgi implements the FastCGI protocol.
    * 
    * See https://fast-cgi.github.io/ for an unofficial mirror of the
    * original documentation.
    * 
    * Currently only the responder role is supported.
**/
class Fcgi {
    /**
        * Serve accepts incoming FastCGI connections on the listener l, creating a new
        * goroutine for each. The goroutine reads requests and then calls handler
        * to reply to them.
        * If l is nil, Serve accepts connections from os.Stdin.
        * If handler is nil, http.DefaultServeMux is used.
    **/
    static public inline function serve(_l:stdgo._internal.net.Net_listener.Listener, _handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Error return stdgo._internal.net.http.fcgi.Fcgi_serve.serve(_l, _handler);
    /**
        * ProcessEnv returns FastCGI environment variables associated with the request r
        * for which no effort was made to be included in the request itself - the data
        * is hidden in the request's context. As an example, if REMOTE_USER is set for a
        * request, it will not be found anywhere in r, but it will be included in
        * ProcessEnv's response (via r's context).
    **/
    static public inline function processEnv(_r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> return stdgo._internal.net.http.fcgi.Fcgi_processenv.processEnv(_r);
}
