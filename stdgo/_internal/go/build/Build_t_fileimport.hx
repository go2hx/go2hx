package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_t_fileimport_static_extension.T_fileImport_static_extension) class T_fileImport {
    public var _path : stdgo.GoString = "";
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public function new(?_path:stdgo.GoString, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) {
        if (_path != null) this._path = _path;
        if (_pos != null) this._pos = _pos;
        if (_doc != null) this._doc = _doc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileImport(_path, _pos, _doc);
    }
}
