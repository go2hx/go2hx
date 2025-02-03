package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.ErrNaN_static_extension) abstract ErrNaN(stdgo._internal.math.big.Big_ErrNaN.ErrNaN) from stdgo._internal.math.big.Big_ErrNaN.ErrNaN to stdgo._internal.math.big.Big_ErrNaN.ErrNaN {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?_msg:String) this = new stdgo._internal.math.big.Big_ErrNaN.ErrNaN((_msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
