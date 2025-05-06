package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_block_static_extension.T_block_static_extension) class T_block {
    public var _parent : stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block> = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>);
    public var _lstmt : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
    public var _labels : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>);
    public function new(?_parent:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>, ?_lstmt:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>, ?_labels:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>) {
        if (_parent != null) this._parent = _parent;
        if (_lstmt != null) this._lstmt = _lstmt;
        if (_labels != null) this._labels = _labels;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_block(_parent, _lstmt, _labels);
    }
}
