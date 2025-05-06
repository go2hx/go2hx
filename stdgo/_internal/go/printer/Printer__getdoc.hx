package stdgo._internal.go.printer;
function _getDoc(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1053"
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1055"
                return (@:checkr _n ?? throw "null pointer dereference").doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1057"
                return (@:checkr _n ?? throw "null pointer dereference").doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1059"
                return (@:checkr _n ?? throw "null pointer dereference").doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1061"
                return (@:checkr _n ?? throw "null pointer dereference").doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1063"
                return (@:checkr _n ?? throw "null pointer dereference").doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1065"
                return (@:checkr _n ?? throw "null pointer dereference").doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1067"
                return (@:checkr _n ?? throw "null pointer dereference").doc;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1069"
        return null;
    }
