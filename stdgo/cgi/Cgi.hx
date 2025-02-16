package stdgo.cgi;
@:structInit @:using(stdgo.net.http.cgi.Cgi.T_response_static_extension) @:dox(hide) abstract T_response(stdgo._internal.net.http.cgi.Cgi_t_response.T_response) from stdgo._internal.net.http.cgi.Cgi_t_response.T_response to stdgo._internal.net.http.cgi.Cgi_t_response.T_response {
    public var _req(get, set) : stdgo._internal.net.http.Http_request.Request;
    function get__req():stdgo._internal.net.http.Http_request.Request return this._req;
    function set__req(v:stdgo._internal.net.http.Http_request.Request):stdgo._internal.net.http.Http_request.Request {
        this._req = (v : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return v;
    }
    public var _header(get, set) : stdgo._internal.net.http.Http_header.Header;
    function get__header():stdgo._internal.net.http.Http_header.Header return this._header;
    function set__header(v:stdgo._internal.net.http.Http_header.Header):stdgo._internal.net.http.Http_header.Header {
        this._header = v;
        return v;
    }
    public var _code(get, set) : StdTypes.Int;
    function get__code():StdTypes.Int return this._code;
    function set__code(v:StdTypes.Int):StdTypes.Int {
        this._code = (v : stdgo.GoInt);
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _wroteCGIHeader(get, set) : Bool;
    function get__wroteCGIHeader():Bool return this._wroteCGIHeader;
    function set__wroteCGIHeader(v:Bool):Bool {
        this._wroteCGIHeader = v;
        return v;
    }
    public var _bufw(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get__bufw():stdgo._internal.bufio.Bufio_writer.Writer return this._bufw;
    function set__bufw(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this._bufw = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public function new(?_req:stdgo._internal.net.http.Http_request.Request, ?_header:stdgo._internal.net.http.Http_header.Header, ?_code:StdTypes.Int, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_bufw:stdgo._internal.bufio.Bufio_writer.Writer) this = new stdgo._internal.net.http.cgi.Cgi_t_response.T_response((_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>), _header, (_code : stdgo.GoInt), _wroteHeader, _wroteCGIHeader, (_bufw : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.cgi.Cgi.Handler_static_extension) abstract Handler(stdgo._internal.net.http.cgi.Cgi_handler.Handler) from stdgo._internal.net.http.cgi.Cgi_handler.Handler to stdgo._internal.net.http.cgi.Cgi_handler.Handler {
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var root(get, set) : String;
    function get_root():String return this.root;
    function set_root(v:String):String {
        this.root = (v : stdgo.GoString);
        return v;
    }
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public var env(get, set) : Array<String>;
    function get_env():Array<String> return [for (i in this.env) i];
    function set_env(v:Array<String>):Array<String> {
        this.env = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var inheritEnv(get, set) : Array<String>;
    function get_inheritEnv():Array<String> return [for (i in this.inheritEnv) i];
    function set_inheritEnv(v:Array<String>):Array<String> {
        this.inheritEnv = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var logger(get, set) : stdgo._internal.log.Log_logger.Logger;
    function get_logger():stdgo._internal.log.Log_logger.Logger return this.logger;
    function set_logger(v:stdgo._internal.log.Log_logger.Logger):stdgo._internal.log.Log_logger.Logger {
        this.logger = (v : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        return v;
    }
    public var args(get, set) : Array<String>;
    function get_args():Array<String> return [for (i in this.args) i];
    function set_args(v:Array<String>):Array<String> {
        this.args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var stderr(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get_stderr():stdgo._internal.io.Io_writer.Writer return this.stderr;
    function set_stderr(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this.stderr = v;
        return v;
    }
    public var pathLocationHandler(get, set) : stdgo._internal.net.http.Http_handler.Handler;
    function get_pathLocationHandler():stdgo._internal.net.http.Http_handler.Handler return this.pathLocationHandler;
    function set_pathLocationHandler(v:stdgo._internal.net.http.Http_handler.Handler):stdgo._internal.net.http.Http_handler.Handler {
        this.pathLocationHandler = v;
        return v;
    }
    public function new(?path:String, ?root:String, ?dir:String, ?env:Array<String>, ?inheritEnv:Array<String>, ?logger:stdgo._internal.log.Log_logger.Logger, ?args:Array<String>, ?stderr:stdgo._internal.io.Io_writer.Writer, ?pathLocationHandler:stdgo._internal.net.http.Http_handler.Handler) this = new stdgo._internal.net.http.cgi.Cgi_handler.Handler((path : stdgo.GoString), (root : stdgo.GoString), (dir : stdgo.GoString), ([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in inheritEnv) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (logger : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>), ([for (i in args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), stderr, pathLocationHandler);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_responsePointer = stdgo._internal.net.http.cgi.Cgi_t_responsepointer.T_responsePointer;
@:dox(hide) class T_response_static_extension {
    static public function _writeCGIHeader(_r:T_response, _p:Array<std.UInt>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.net.http.cgi.Cgi_t_response_static_extension.T_response_static_extension._writeCGIHeader(_r, _p);
    }
    static public function writeHeader(_r:T_response, _code:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.cgi.Cgi_t_response_static_extension.T_response_static_extension.writeHeader(_r, _code);
    }
    static public function write(_r:T_response, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.cgi.Cgi_t_response_static_extension.T_response_static_extension.write(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(_r:T_response):stdgo._internal.net.http.Http_header.Header {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>);
        return stdgo._internal.net.http.cgi.Cgi_t_response_static_extension.T_response_static_extension.header(_r);
    }
    static public function flush(_r:T_response):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>);
        stdgo._internal.net.http.cgi.Cgi_t_response_static_extension.T_response_static_extension.flush(_r);
    }
}
typedef HandlerPointer = stdgo._internal.net.http.cgi.Cgi_handlerpointer.HandlerPointer;
class Handler_static_extension {
    static public function _handleInternalRedirect(_h:Handler, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo._internal.net.http.Http_request.Request, _path:String):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _path = (_path : stdgo.GoString);
        stdgo._internal.net.http.cgi.Cgi_handler_static_extension.Handler_static_extension._handleInternalRedirect(_h, _rw, _req, _path);
    }
    static public function _printf(_h:Handler, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.net.http.cgi.Cgi_handler_static_extension.Handler_static_extension._printf(_h, _format, ...[for (i in _v) i]);
    }
    static public function serveHTTP(_h:Handler, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo._internal.net.http.Http_request.Request):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.cgi.Cgi_handler_static_extension.Handler_static_extension.serveHTTP(_h, _rw, _req);
    }
    static public function _stderr(_h:Handler):stdgo._internal.io.Io_writer.Writer {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>);
        return stdgo._internal.net.http.cgi.Cgi_handler_static_extension.Handler_static_extension._stderr(_h);
    }
}
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
    static public inline function request():stdgo.Tuple<stdgo._internal.net.http.Http_request.Request, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.cgi.Cgi_request.request();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * RequestFromMap creates an http.Request from CGI variables.
        * The returned Request's Body field is not populated.
    **/
    static public inline function requestFromMap(_params:Map<String, String>):stdgo.Tuple<stdgo._internal.net.http.Http_request.Request, stdgo.Error> {
        final _params = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in _params) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return {
            final obj = stdgo._internal.net.http.cgi.Cgi_requestfrommap.requestFromMap(_params);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Serve executes the provided Handler on the currently active CGI
        * request, if any. If there's no current CGI environment
        * an error is returned. The provided handler may be nil to use
        * http.DefaultServeMux.
    **/
    static public inline function serve(_handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Error {
        return stdgo._internal.net.http.cgi.Cgi_serve.serve(_handler);
    }
}
