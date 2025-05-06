package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_operand_static_extension.T_operand_static_extension) class T_operand {
    public var _mode : stdgo._internal.go.types.Types_t_operandmode.T_operandMode = ((0 : stdgo.GoUInt8) : stdgo._internal.go.types.Types_t_operandmode.T_operandMode);
    public var _expr : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var _typ : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var _val : stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
    public var _id : stdgo._internal.go.types.Types_t_builtinid.T_builtinId = ((0 : stdgo.GoInt) : stdgo._internal.go.types.Types_t_builtinid.T_builtinId);
    public function new(?_mode:stdgo._internal.go.types.Types_t_operandmode.T_operandMode, ?_expr:stdgo._internal.go.ast.Ast_expr.Expr, ?_typ:stdgo._internal.go.types.Types_type_.Type_, ?_val:stdgo._internal.go.constant.Constant_value.Value, ?_id:stdgo._internal.go.types.Types_t_builtinid.T_builtinId) {
        if (_mode != null) this._mode = _mode;
        if (_expr != null) this._expr = _expr;
        if (_typ != null) this._typ = _typ;
        if (_val != null) this._val = _val;
        if (_id != null) this._id = _id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_operand(_mode, _expr, _typ, _val, _id);
    }
}
