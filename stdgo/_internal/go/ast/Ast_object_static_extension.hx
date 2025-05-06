package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Object_asInterface) class Object_static_extension {
    @:keep
    @:tdfield
    static public function pos( _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> = _obj;
        var _name = ((@:checkr _obj ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L90"
        {
            final __type__ = (@:checkr _obj ?? throw "null pointer dereference").decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L92"
                for (__0 => _n in (@:checkr _d ?? throw "null pointer dereference").names) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L93"
                    if ((@:checkr _n ?? throw "null pointer dereference").name == (_name)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L94"
                        return _n.pos();
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L98"
                if ((({
                    final value = (@:checkr _d ?? throw "null pointer dereference").name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name == _name) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L99"
                    return (@:checkr _d ?? throw "null pointer dereference").name.pos();
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L101"
                return (@:checkr _d ?? throw "null pointer dereference").path.pos();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L103"
                for (__0 => _n in (@:checkr _d ?? throw "null pointer dereference").names) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L104"
                    if ((@:checkr _n ?? throw "null pointer dereference").name == (_name)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L105"
                        return _n.pos();
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L109"
                if ((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name == (_name)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L110"
                    return (@:checkr _d ?? throw "null pointer dereference").name.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L113"
                if ((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name == (_name)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L114"
                    return (@:checkr _d ?? throw "null pointer dereference").name.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L117"
                if ((@:checkr (@:checkr _d ?? throw "null pointer dereference").label ?? throw "null pointer dereference").name == (_name)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L118"
                    return (@:checkr _d ?? throw "null pointer dereference").label.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L121"
                for (__0 => _x in (@:checkr _d ?? throw "null pointer dereference").lhs) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L122"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                        }, _ident = __tmp__._0, _isIdent = __tmp__._1;
                        if ((_isIdent && ((@:checkr _ident ?? throw "null pointer dereference").name == _name) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L123"
                            return _ident.pos();
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : __type__.__underlying__().value);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L129"
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
}
