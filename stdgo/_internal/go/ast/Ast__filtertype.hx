package stdgo._internal.go.ast;
function _filterType(_typ:stdgo._internal.go.ast.Ast_expr.Expr, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L151"
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L153"
                return _f((@:checkr _t ?? throw "null pointer dereference").name?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L155"
                return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw "null pointer dereference").x, _f, _export);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L157"
                return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw "null pointer dereference").elt, _f, _export);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L159"
                if (stdgo._internal.go.ast.Ast__filterfieldlist._filterFieldList((@:checkr _t ?? throw "null pointer dereference").fields, _f, _export)) {
                    (@:checkr _t ?? throw "null pointer dereference").incomplete = true;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L162"
                return (((@:checkr (@:checkr _t ?? throw "null pointer dereference").fields ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value);
                var _b1 = (stdgo._internal.go.ast.Ast__filterparamlist._filterParamList((@:checkr _t ?? throw "null pointer dereference").params, _f, _export) : Bool);
                var _b2 = (stdgo._internal.go.ast.Ast__filterparamlist._filterParamList((@:checkr _t ?? throw "null pointer dereference").results, _f, _export) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L166"
                return (_b1 || _b2 : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L168"
                if (stdgo._internal.go.ast.Ast__filterfieldlist._filterFieldList((@:checkr _t ?? throw "null pointer dereference").methods, _f, _export)) {
                    (@:checkr _t ?? throw "null pointer dereference").incomplete = true;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L171"
                return (((@:checkr (@:checkr _t ?? throw "null pointer dereference").methods ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value);
                var _b1 = (stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw "null pointer dereference").key, _f, _export) : Bool);
                var _b2 = (stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw "null pointer dereference").value, _f, _export) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L175"
                return (_b1 || _b2 : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L177"
                return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw "null pointer dereference").value, _f, _export);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L179"
        return false;
    }
