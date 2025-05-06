package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_t_cgpos_static_extension.T_cgPos_static_extension) class T_cgPos {
    public var _left : Bool = false;
    public var _cg : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public function new(?_left:Bool, ?_cg:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) {
        if (_left != null) this._left = _left;
        if (_cg != null) this._cg = _cg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cgPos(_left, _cg);
    }
}
