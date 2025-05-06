package stdgo._internal.go.types;
function writeExpr(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L34"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L39"
                _buf.writeString((@:checkr _x ?? throw "null pointer dereference").name?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L42"
                _buf.writeString(("..." : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L43"
                if ((@:checkr _x ?? throw "null pointer dereference").elt != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L44"
                    stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").elt);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L48"
                _buf.writeString((@:checkr _x ?? throw "null pointer dereference").value?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L51"
                _buf.writeByte((40 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L52"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").type));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L53"
                _buf.writeString((" literal)" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L56"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").type);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L57"
                _buf.writeByte((123 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L58"
                if ((((@:checkr _x ?? throw "null pointer dereference").elts.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L59"
                    _buf.writeString(("…" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L61"
                _buf.writeByte((125 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L64"
                _buf.writeByte((40 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L65"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L66"
                _buf.writeByte((41 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L69"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L70"
                _buf.writeByte((46 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L71"
                _buf.writeString((@:checkr (@:checkr _x ?? throw "null pointer dereference").sel ?? throw "null pointer dereference").name?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _x:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                var _ix = stdgo._internal.go.internal.typeparams.Typeparams_unpackindexexpr.unpackIndexExpr(_x);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L75"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _ix ?? throw "null pointer dereference").indexListExpr.x);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L76"
                _buf.writeByte((91 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L77"
                stdgo._internal.go.types.Types__writeexprlist._writeExprList(_buf, (@:checkr _ix ?? throw "null pointer dereference").indexListExpr.indices);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L78"
                _buf.writeByte((93 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L81"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L82"
                _buf.writeByte((91 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L83"
                if ((@:checkr _x ?? throw "null pointer dereference").low != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L84"
                    stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").low);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L86"
                _buf.writeByte((58 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L87"
                if ((@:checkr _x ?? throw "null pointer dereference").high != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L88"
                    stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").high);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L90"
                if ((@:checkr _x ?? throw "null pointer dereference").slice3) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L91"
                    _buf.writeByte((58 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L92"
                    if ((@:checkr _x ?? throw "null pointer dereference").max != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L93"
                        stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").max);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L96"
                _buf.writeByte((93 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L99"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L100"
                _buf.writeString((".(" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L101"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").type);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L102"
                _buf.writeByte((41 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L105"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").fun);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L106"
                _buf.writeByte((40 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L107"
                stdgo._internal.go.types.Types__writeexprlist._writeExprList(_buf, (@:checkr _x ?? throw "null pointer dereference").args);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L108"
                if ((@:checkr _x ?? throw "null pointer dereference").ellipsis.isValid()) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L109"
                    _buf.writeString(("..." : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L111"
                _buf.writeByte((41 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L114"
                _buf.writeByte((42 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L115"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L118"
                _buf.writeString(((@:checkr _x ?? throw "null pointer dereference").op.string() : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L119"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L122"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L123"
                _buf.writeByte((32 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L124"
                _buf.writeString(((@:checkr _x ?? throw "null pointer dereference").op.string() : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L125"
                _buf.writeByte((32 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L126"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").y);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L129"
                _buf.writeByte((91 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L130"
                if ((@:checkr _x ?? throw "null pointer dereference").len != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L131"
                    stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").len);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L133"
                _buf.writeByte((93 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L134"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L137"
                _buf.writeString(("struct{" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L138"
                stdgo._internal.go.types.Types__writefieldlist._writeFieldList(_buf, (@:checkr (@:checkr _x ?? throw "null pointer dereference").fields ?? throw "null pointer dereference").list, ("; " : stdgo.GoString), false);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L139"
                _buf.writeByte((125 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L142"
                _buf.writeString(("func" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L143"
                stdgo._internal.go.types.Types__writesigexpr._writeSigExpr(_buf, _x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L146"
                _buf.writeString(("interface{" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L147"
                stdgo._internal.go.types.Types__writefieldlist._writeFieldList(_buf, (@:checkr (@:checkr _x ?? throw "null pointer dereference").methods ?? throw "null pointer dereference").list, ("; " : stdgo.GoString), true);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L148"
                _buf.writeByte((125 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L151"
                _buf.writeString(("map[" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L152"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").key);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L153"
                _buf.writeByte((93 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L154"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value);
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L158"
                {
                    final __value__ = (@:checkr _x ?? throw "null pointer dereference").dir;
                    if (__value__ == ((1 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        _s = ("chan<- " : stdgo.GoString);
                    } else if (__value__ == ((2 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        _s = ("<-chan " : stdgo.GoString);
                    } else {
                        _s = ("chan " : stdgo.GoString);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L166"
                _buf.writeString(_s?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L167"
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").value);
            } else {
                var _x:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L36"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("(ast: %T)" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
    }
