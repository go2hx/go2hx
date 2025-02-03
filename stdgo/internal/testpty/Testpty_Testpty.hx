package stdgo.internal.testpty;
/**
    Package testpty is a simple pseudo-terminal package for Unix systems,
    implemented by calling C functions via cgo.
**/
class Testpty {
    /**
        Open returns a control pty and the name of the linked process tty.
        
        If Open is not implemented on this platform, it returns ErrNotSupported.
    **/
    static public inline function open():stdgo.Tuple.Tuple3<stdgo._internal.os.Os_File.File, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.testpty.Testpty_open.open();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
