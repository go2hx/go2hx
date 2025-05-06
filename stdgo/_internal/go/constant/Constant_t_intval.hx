package stdgo._internal.go.constant;
@:structInit @:using(stdgo._internal.go.constant.Constant_t_intval_static_extension.T_intVal_static_extension) class T_intVal {
    public var _val : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?_val:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_intVal(_val);
    }
}
