package stdgo._internal.go.types;
@:structInit class T__collectObjects___localname___methodInfo_7564 {
    public var _obj : stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
    public var _ptr : Bool = false;
    public var _recv : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public function new(?_obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, ?_ptr:Bool, ?_recv:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) {
        if (_obj != null) this._obj = _obj;
        if (_ptr != null) this._ptr = _ptr;
        if (_recv != null) this._recv = _recv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__collectObjects___localname___methodInfo_7564(_obj, _ptr, _recv);
    }
}
