package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_commentListReader_asInterface) class T_commentListReader_static_extension {
    @:keep
    @:tdfield
    static public function _next( _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L89"
        if (!_r._eol()) {
            (@:checkr _r ?? throw "null pointer dereference")._comment = (@:checkr _r ?? throw "null pointer dereference")._list[((@:checkr _r ?? throw "null pointer dereference")._index : stdgo.GoInt)];
            (@:checkr _r ?? throw "null pointer dereference")._pos = (@:checkr _r ?? throw "null pointer dereference")._fset.position((@:checkr _r ?? throw "null pointer dereference")._comment.pos())?.__copy__();
            (@:checkr _r ?? throw "null pointer dereference")._end = (@:checkr _r ?? throw "null pointer dereference")._fset.position((@:checkr _r ?? throw "null pointer dereference")._comment.end())?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L93"
            (@:checkr _r ?? throw "null pointer dereference")._index++;
        };
    }
    @:keep
    @:tdfield
    static public function _eol( _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L85"
        return ((@:checkr _r ?? throw "null pointer dereference")._index >= ((@:checkr _r ?? throw "null pointer dereference")._list.length) : Bool);
    }
}
