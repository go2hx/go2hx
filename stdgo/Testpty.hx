package stdgo;
var errNotSupported(get, set) : stdgo.Error;
private function get_errNotSupported():stdgo.Error return stdgo._internal.internal.testpty.Testpty_errnotsupported.errNotSupported;
private function set_errNotSupported(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.testpty.Testpty_errnotsupported.errNotSupported = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.internal.testpty.Testpty.PtyError_static_extension) abstract PtyError(stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError) from stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError to stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError {
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
    public function new(?funcName:String, ?errorString:String, ?errno:stdgo.Error) this = new stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError((funcName : stdgo.GoString), (errorString : stdgo.GoString), (errno : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef PtyErrorPointer = stdgo._internal.internal.testpty.Testpty_ptyerrorpointer.PtyErrorPointer;
class PtyError_static_extension {
    static public function unwrap(_e:PtyError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError>);
        return stdgo._internal.internal.testpty.Testpty_ptyerror_static_extension.PtyError_static_extension.unwrap(_e);
    }
    static public function error(_e:PtyError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError>);
        return stdgo._internal.internal.testpty.Testpty_ptyerror_static_extension.PtyError_static_extension.error(_e);
    }
}
/**
    * Package testpty is a simple pseudo-terminal package for Unix systems,
    * implemented by calling C functions via cgo.
**/
class Testpty {
    /**
        * Open returns a control pty and the name of the linked process tty.
        * 
        * If Open is not implemented on this platform, it returns ErrNotSupported.
    **/
    static public inline function open():stdgo.Tuple.Tuple3<stdgo._internal.os.Os_file.File, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.testpty.Testpty_open.open();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
