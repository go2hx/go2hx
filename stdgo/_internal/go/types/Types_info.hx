package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_info_static_extension.Info_static_extension) class Info {
    public var types : stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_typeandvalue.TypeAndValue> = (null : stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_typeandvalue.TypeAndValue>);
    public var instances : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_instance.Instance> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_instance.Instance>);
    public var defs : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object>);
    public var uses : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object>);
    public var implicits : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo._internal.go.types.Types_object.Object> = (null : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo._internal.go.types.Types_object.Object>);
    public var selections : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>);
    public var scopes : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>> = (null : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
    public var initOrder : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>>);
    public function new(?types:stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_typeandvalue.TypeAndValue>, ?instances:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_instance.Instance>, ?defs:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object>, ?uses:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo._internal.go.types.Types_object.Object>, ?implicits:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo._internal.go.types.Types_object.Object>, ?selections:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>, ?scopes:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>, ?initOrder:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>>) {
        if (types != null) this.types = types;
        if (instances != null) this.instances = instances;
        if (defs != null) this.defs = defs;
        if (uses != null) this.uses = uses;
        if (implicits != null) this.implicits = implicits;
        if (selections != null) this.selections = selections;
        if (scopes != null) this.scopes = scopes;
        if (initOrder != null) this.initOrder = initOrder;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Info(types, instances, defs, uses, implicits, selections, scopes, initOrder);
    }
}
