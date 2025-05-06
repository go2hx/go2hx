package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_typeandvalue_static_extension.TypeAndValue_static_extension) class TypeAndValue {
    public var _mode : stdgo._internal.go.types.Types_t_operandmode.T_operandMode = ((0 : stdgo.GoUInt8) : stdgo._internal.go.types.Types_t_operandmode.T_operandMode);
    public var type : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var value : stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
    public function new(?_mode:stdgo._internal.go.types.Types_t_operandmode.T_operandMode, ?type:stdgo._internal.go.types.Types_type_.Type_, ?value:stdgo._internal.go.constant.Constant_value.Value) {
        if (_mode != null) this._mode = _mode;
        if (type != null) this.type = type;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeAndValue(_mode, type, value);
    }
}
