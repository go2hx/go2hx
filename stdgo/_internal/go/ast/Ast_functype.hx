package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_functype_static_extension.FuncType_static_extension) class FuncType {
    public var func : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var typeParams : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var params : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var results : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public function new(?func:stdgo._internal.go.token.Token_pos.Pos, ?typeParams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?results:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) {
        if (func != null) this.func = func;
        if (typeParams != null) this.typeParams = typeParams;
        if (params != null) this.params = params;
        if (results != null) this.results = results;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FuncType(func, typeParams, params, results);
    }
}
