package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_environment_static_extension.T_environment_static_extension) class T_environment {
    public var _decl : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo> = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
    public var _scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _iota : stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
    public var _errpos : stdgo._internal.go.types.Types_t_positioner.T_positioner = (null : stdgo._internal.go.types.Types_t_positioner.T_positioner);
    public var _inTParamList : Bool = false;
    public var _sig : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
    public var _isPanic : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>, Bool> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>, Bool>);
    public var _hasLabel : Bool = false;
    public var _hasCallOrRecv : Bool = false;
    public function new(?_decl:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>, ?_scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_iota:stdgo._internal.go.constant.Constant_value.Value, ?_errpos:stdgo._internal.go.types.Types_t_positioner.T_positioner, ?_inTParamList:Bool, ?_sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>, ?_isPanic:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>, Bool>, ?_hasLabel:Bool, ?_hasCallOrRecv:Bool) {
        if (_decl != null) this._decl = _decl;
        if (_scope != null) this._scope = _scope;
        if (_pos != null) this._pos = _pos;
        if (_iota != null) this._iota = _iota;
        if (_errpos != null) this._errpos = _errpos;
        if (_inTParamList != null) this._inTParamList = _inTParamList;
        if (_sig != null) this._sig = _sig;
        if (_isPanic != null) this._isPanic = _isPanic;
        if (_hasLabel != null) this._hasLabel = _hasLabel;
        if (_hasCallOrRecv != null) this._hasCallOrRecv = _hasCallOrRecv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_environment(_decl, _scope, _pos, _iota, _errpos, _inTParamList, _sig, _isPanic, _hasLabel, _hasCallOrRecv);
    }
}
