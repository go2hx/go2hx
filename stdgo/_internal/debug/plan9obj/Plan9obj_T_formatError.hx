package stdgo._internal.debug.plan9obj;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.debug.plan9obj.Plan9obj_T_formatError_static_extension.T_formatError_static_extension) class T_formatError {
    public var _off : stdgo.GoInt = 0;
    public var _msg : stdgo.GoString = "";
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_off:stdgo.GoInt, ?_msg:stdgo.GoString, ?_val:stdgo.AnyInterface) {
        if (_off != null) this._off = _off;
        if (_msg != null) this._msg = _msg;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_formatError(_off, _msg, _val);
    }
}
