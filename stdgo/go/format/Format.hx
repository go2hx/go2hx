package stdgo.go.format;
/**
    * Package format implements standard formatting of Go source.
    * 
    * Note that formatting of Go source code changes over time, so tools relying on
    * consistent formatting should execute a specific version of the gofmt binary
    * instead of using this package. That way, the formatting will be stable, and
    * the tools won't need to be recompiled each time gofmt changes.
    * 
    * For example, pre-submit checks that use this package directly would behave
    * differently depending on what Go version each developer uses, causing the
    * check to be inherently fragile.
**/
class Format {
    /**
        * Node formats node in canonical gofmt style and writes the result to dst.
        * 
        * The node type must be *ast.File, *printer.CommentedNode, []ast.Decl,
        * []ast.Stmt, or assignment-compatible to ast.Expr, ast.Decl, ast.Spec,
        * or ast.Stmt. Node does not modify node. Imports are not sorted for
        * nodes representing partial source files (for instance, if the node is
        * not an *ast.File or a *printer.CommentedNode not wrapping an *ast.File).
        * 
        * The function may return early (before the entire result is written)
        * and return a formatting error, for instance due to an incorrect AST.
    **/
    static public inline function node(_dst:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface):stdgo.Error return stdgo._internal.go.format.Format_node.node(_dst, _fset, _node);
    /**
        * Source formats src in canonical gofmt style and returns the result
        * or an (I/O or syntax) error. src is expected to be a syntactically
        * correct Go source file, or a list of Go declarations or statements.
        * 
        * If src is a partial source file, the leading and trailing space of src
        * is applied to the result (such that it has the same leading and trailing
        * space as src), and the result is indented by the same amount as the first
        * line of src containing code. Imports are not sorted for partial source files.
    **/
    static public inline function source(_src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.go.format.Format_source.source(_src);
    static public inline function testNode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.format.Format_testnode.testNode(_t);
    /**
        * Node is documented to not modify the AST.
        * Test that it is so even when numbers are normalized.
    **/
    static public inline function testNodeNoModify(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.format.Format_testnodenomodify.testNodeNoModify(_t);
    static public inline function testSource(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.format.Format_testsource.testSource(_t);
    static public inline function string(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.go.format.Format_string.string(_s);
    static public inline function testPartial(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.format.Format_testpartial.testPartial(_t);
}
