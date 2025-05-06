package stdgo._internal.go.constant;
@:structInit @:using(stdgo._internal.go.constant.Constant_t_floatval_static_extension.T_floatVal_static_extension) class T_floatVal {
    public var _val : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
    public function new(?_val:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_floatVal(_val);
    }
}
