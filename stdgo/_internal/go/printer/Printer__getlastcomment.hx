package stdgo._internal.go.printer;
function _getLastComment(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1073"
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1075"
                return (@:checkr _n ?? throw "null pointer dereference").comment;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1077"
                return (@:checkr _n ?? throw "null pointer dereference").comment;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1079"
                return (@:checkr _n ?? throw "null pointer dereference").comment;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1081"
                return (@:checkr _n ?? throw "null pointer dereference").comment;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1083"
                if ((((@:checkr _n ?? throw "null pointer dereference").specs.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1084"
                    return stdgo._internal.go.printer.Printer__getlastcomment._getLastComment((@:checkr _n ?? throw "null pointer dereference").specs[(((@:checkr _n ?? throw "null pointer dereference").specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1087"
                if ((((@:checkr _n ?? throw "null pointer dereference").comments.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1088"
                    return (@:checkr _n ?? throw "null pointer dereference").comments[(((@:checkr _n ?? throw "null pointer dereference").comments.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1091"
        return null;
    }
