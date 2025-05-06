package stdgo._internal.go.constant;
@:structInit @:using(stdgo._internal.go.constant.Constant_t_ratval_static_extension.T_ratVal_static_extension) class T_ratVal {
    public var _val : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
    public function new(?_val:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ratVal(_val);
    }
}
