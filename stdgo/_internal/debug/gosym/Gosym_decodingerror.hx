package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_decodingerror_static_extension.DecodingError_static_extension) class DecodingError {
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
        return new DecodingError(_off, _msg, _val);
    }
}
