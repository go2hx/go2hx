package stdgo._internal.go.types;
function eval(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _expr:stdgo.GoString):{ var _0 : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue; var _1 : stdgo.Error; } {
        var _0 = ({} : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.go.parser.Parser_parseexprfrom.parseExprFrom(_fset, ("eval" : stdgo.GoString), stdgo.Go.toInterface(_expr), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _node:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L27"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L28"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue; var _1 : stdgo.Error; } = { _0 : (new stdgo._internal.go.types.Types_typeandvalue.TypeAndValue() : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue), _1 : _err };
                _0 = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _info = (stdgo.Go.setRef(({ types : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_typeandvalue.TypeAndValue>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_expr.Expr", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_typeandvalue.TypeAndValue>) : stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_typeandvalue.TypeAndValue>) } : stdgo._internal.go.types.Types_info.Info)) : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        _err = stdgo._internal.go.types.Types_checkexpr.checkExpr(_fset, _pkg, _pos, _node, _info);
        //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L35"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue; var _1 : stdgo.Error; } = { _0 : ((@:checkr _info ?? throw "null pointer dereference").types[_node] ?? ({} : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue))?.__copy__(), _1 : _err };
            _0 = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
