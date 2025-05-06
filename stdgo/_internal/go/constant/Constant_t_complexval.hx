package stdgo._internal.go.constant;
@:structInit @:using(stdgo._internal.go.constant.Constant_t_complexval_static_extension.T_complexVal_static_extension) class T_complexVal {
    public var _re : stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
    public var _im : stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
    public function new(?_re:stdgo._internal.go.constant.Constant_value.Value, ?_im:stdgo._internal.go.constant.Constant_value.Value) {
        if (_re != null) this._re = _re;
        if (_im != null) this._im = _im;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_complexVal(_re, _im);
    }
}
