package stdgo._internal.go.printer;
@:structInit @:using(stdgo._internal.go.printer.Printer_t_commentinfo_static_extension.T_commentInfo_static_extension) class T_commentInfo {
    public var _cindex : stdgo.GoInt = 0;
    public var _comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var _commentOffset : stdgo.GoInt = 0;
    public var _commentNewline : Bool = false;
    public function new(?_cindex:stdgo.GoInt, ?_comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?_commentOffset:stdgo.GoInt, ?_commentNewline:Bool) {
        if (_cindex != null) this._cindex = _cindex;
        if (_comment != null) this._comment = _comment;
        if (_commentOffset != null) this._commentOffset = _commentOffset;
        if (_commentNewline != null) this._commentNewline = _commentNewline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_commentInfo(_cindex, _comment, _commentOffset, _commentNewline);
    }
}
