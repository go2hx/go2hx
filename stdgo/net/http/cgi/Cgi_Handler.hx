package stdgo.net.http.cgi;
@:structInit @:using(stdgo.net.http.cgi.Cgi.Handler_static_extension) abstract Handler(stdgo._internal.net.http.cgi.Cgi_Handler.Handler) from stdgo._internal.net.http.cgi.Cgi_Handler.Handler to stdgo._internal.net.http.cgi.Cgi_Handler.Handler {
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
    public var logger(get, set) : stdgo._internal.log.Log_Logger.Logger;
    function get_logger():stdgo._internal.log.Log_Logger.Logger return this.logger;
    function set_logger(v:stdgo._internal.log.Log_Logger.Logger):stdgo._internal.log.Log_Logger.Logger {
        this.logger = (v : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        return v;
    }
    public var args(get, set) : Array<String>;
    function get_args():Array<String> return [for (i in this.args) i];
    function set_args(v:Array<String>):Array<String> {
        this.args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var stderr(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_stderr():stdgo._internal.io.Io_Writer.Writer return this.stderr;
    function set_stderr(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.stderr = v;
        return v;
    }
    public var pathLocationHandler(get, set) : stdgo._internal.net.http.Http_Handler.Handler;
    function get_pathLocationHandler():stdgo._internal.net.http.Http_Handler.Handler return this.pathLocationHandler;
    function set_pathLocationHandler(v:stdgo._internal.net.http.Http_Handler.Handler):stdgo._internal.net.http.Http_Handler.Handler {
        this.pathLocationHandler = v;
        return v;
    }
    public function new(?path:String, ?root:String, ?dir:String, ?env:Array<String>, ?inheritEnv:Array<String>, ?logger:stdgo._internal.log.Log_Logger.Logger, ?args:Array<String>, ?stderr:stdgo._internal.io.Io_Writer.Writer, ?pathLocationHandler:stdgo._internal.net.http.Http_Handler.Handler) this = new stdgo._internal.net.http.cgi.Cgi_Handler.Handler((path : stdgo.GoString), (root : stdgo.GoString), (dir : stdgo.GoString), ([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in inheritEnv) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (logger : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>), ([for (i in args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), stderr, pathLocationHandler);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
