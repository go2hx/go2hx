package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_t_commentlistreader_static_extension.T_commentListReader_static_extension) class T_commentListReader {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _list : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
    public var _index : stdgo.GoInt = 0;
    public var _comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var _pos : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public var _end : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>, ?_index:stdgo.GoInt, ?_comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?_pos:stdgo._internal.go.token.Token_position.Position, ?_end:stdgo._internal.go.token.Token_position.Position) {
        if (_fset != null) this._fset = _fset;
        if (_list != null) this._list = _list;
        if (_index != null) this._index = _index;
        if (_comment != null) this._comment = _comment;
        if (_pos != null) this._pos = _pos;
        if (_end != null) this._end = _end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_commentListReader(_fset, _list, _index, _comment, _pos, _end);
    }
}
