package stdgo.internal.testpty;
@:structInit @:using(stdgo.internal.testpty.Testpty.PtyError_static_extension) abstract PtyError(stdgo._internal.internal.testpty.Testpty_PtyError.PtyError) from stdgo._internal.internal.testpty.Testpty_PtyError.PtyError to stdgo._internal.internal.testpty.Testpty_PtyError.PtyError {
    public var funcName(get, set) : String;
    function get_funcName():String return this.funcName;
    function set_funcName(v:String):String {
        this.funcName = (v : stdgo.GoString);
        return v;
    }
    public var errorString(get, set) : String;
    function get_errorString():String return this.errorString;
    function set_errorString(v:String):String {
        this.errorString = (v : stdgo.GoString);
        return v;
    }
    public var errno(get, set) : stdgo.Error;
    function get_errno():stdgo.Error return this.errno;
    function set_errno(v:stdgo.Error):stdgo.Error {
        this.errno = (v : stdgo.Error);
        return v;
    }
    public function new(?funcName:String, ?errorString:String, ?errno:stdgo.Error) this = new stdgo._internal.internal.testpty.Testpty_PtyError.PtyError((funcName : stdgo.GoString), (errorString : stdgo.GoString), (errno : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
