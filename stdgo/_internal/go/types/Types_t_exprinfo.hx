package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_exprinfo_static_extension.T_exprInfo_static_extension) class T_exprInfo {
    public var _isLhs : Bool = false;
    public var _mode : stdgo._internal.go.types.Types_t_operandmode.T_operandMode = ((0 : stdgo.GoUInt8) : stdgo._internal.go.types.Types_t_operandmode.T_operandMode);
    public var _typ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
    public var _val : stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
    public function new(?_isLhs:Bool, ?_mode:stdgo._internal.go.types.Types_t_operandmode.T_operandMode, ?_typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>, ?_val:stdgo._internal.go.constant.Constant_value.Value) {
        if (_isLhs != null) this._isLhs = _isLhs;
        if (_mode != null) this._mode = _mode;
        if (_typ != null) this._typ = _typ;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exprInfo(_isLhs, _mode, _typ, _val);
    }
}
