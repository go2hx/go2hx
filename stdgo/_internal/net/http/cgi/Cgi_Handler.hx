package stdgo._internal.net.http.cgi;
@:structInit @:using(stdgo._internal.net.http.cgi.Cgi_Handler_static_extension.Handler_static_extension) class Handler {
    public var path : stdgo.GoString = "";
    public var root : stdgo.GoString = "";
    public var dir : stdgo.GoString = "";
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var inheritEnv : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var logger : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = (null : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
    public var args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var stderr : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var pathLocationHandler : stdgo._internal.net.http.Http_Handler.Handler = (null : stdgo._internal.net.http.Http_Handler.Handler);
    public function new(?path:stdgo.GoString, ?root:stdgo.GoString, ?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?inheritEnv:stdgo.Slice<stdgo.GoString>, ?logger:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, ?args:stdgo.Slice<stdgo.GoString>, ?stderr:stdgo._internal.io.Io_Writer.Writer, ?pathLocationHandler:stdgo._internal.net.http.Http_Handler.Handler) {
        if (path != null) this.path = path;
        if (root != null) this.root = root;
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (inheritEnv != null) this.inheritEnv = inheritEnv;
        if (logger != null) this.logger = logger;
        if (args != null) this.args = args;
        if (stderr != null) this.stderr = stderr;
        if (pathLocationHandler != null) this.pathLocationHandler = pathLocationHandler;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Handler(path, root, dir, env, inheritEnv, logger, args, stderr, pathLocationHandler);
    }
}
