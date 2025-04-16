package stdgo.internal.testpty;
var errNotSupported(get, set) : stdgo.Error;
private function get_errNotSupported():stdgo.Error return stdgo._internal.internal.testpty.Testpty_errnotsupported.errNotSupported;
private function set_errNotSupported(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.testpty.Testpty_errnotsupported.errNotSupported = v;
        return v;
    }
typedef PtyError = stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError;
typedef PtyErrorPointer = stdgo._internal.internal.testpty.Testpty_ptyerrorpointer.PtyErrorPointer;
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
    static public inline function open():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return stdgo._internal.internal.testpty.Testpty_open.open();
}
