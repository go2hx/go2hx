package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_errnan_static_extension.ErrNaN_static_extension) class ErrNaN {
    public var _msg : stdgo.GoString = "";
    public function new(?_msg:stdgo.GoString) {
        if (_msg != null) this._msg = _msg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ErrNaN(_msg);
    }
}
