package stdgo._internal.go.ast;
function walk(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _node:stdgo._internal.go.ast.Ast_node.Node):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L51"
        {
            _v = _v.visit(_node);
            if (_v == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L52"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L58"
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L64"
                for (__0 => _c in (@:checkr _n ?? throw "null pointer dereference").list) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L65"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_c));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L69"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L70"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L72"
                stdgo._internal.go.ast.Ast__walkidentlist._walkIdentList(_v, (@:checkr _n ?? throw "null pointer dereference").names);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L73"
                if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L74"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L76"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").tag;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L77"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").tag));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L79"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L80"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L84"
                for (__0 => _f in (@:checkr _n ?? throw "null pointer dereference").list) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L85"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_f));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                var _n:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L93"
                if ((@:checkr _n ?? throw "null pointer dereference").elt != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L94"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").elt);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L98"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").type));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L99"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L102"
                if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L103"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L105"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").elts);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L108"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L111"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L112"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").sel));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L115"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L116"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").index);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L119"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L120"
                for (__0 => _index in (@:checkr _n ?? throw "null pointer dereference").indices) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L121"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, _index);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L125"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L126"
                if ((@:checkr _n ?? throw "null pointer dereference").low != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L127"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").low);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L129"
                if ((@:checkr _n ?? throw "null pointer dereference").high != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L130"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").high);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L132"
                if ((@:checkr _n ?? throw "null pointer dereference").max != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L133"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").max);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L137"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L138"
                if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L139"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L143"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").fun);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L144"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").args);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L147"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L150"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L153"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L154"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").y);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L157"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").key);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L158"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L162"
                if ((@:checkr _n ?? throw "null pointer dereference").len != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L163"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").len);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L165"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L168"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").fields));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L171"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").typeParams;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L172"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").typeParams));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L174"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").params;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L175"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").params));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L177"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").results;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L178"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").results));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L182"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").methods));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L185"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").key);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L186"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L189"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L196"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").decl);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L202"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").label));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L203"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").stmt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L206"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L209"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").chan);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L210"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L213"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L216"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").lhs);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L217"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").rhs);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L220"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").call));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L223"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").call));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L226"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").results);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L229"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").label;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L230"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").label));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L234"
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw "null pointer dereference").list);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L237"
                if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L238"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").init);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L240"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").cond);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L241"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L242"
                if ((@:checkr _n ?? throw "null pointer dereference").else_ != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L243"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").else_);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L247"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").list);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L248"
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw "null pointer dereference").body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L251"
                if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L252"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").init);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L254"
                if ((@:checkr _n ?? throw "null pointer dereference").tag != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L255"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").tag);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L257"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L260"
                if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L261"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").init);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L263"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").assign);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L264"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L267"
                if ((@:checkr _n ?? throw "null pointer dereference").comm != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L268"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").comm);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L270"
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw "null pointer dereference").body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L273"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L276"
                if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L277"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").init);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L279"
                if ((@:checkr _n ?? throw "null pointer dereference").cond != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L280"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").cond);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L282"
                if ((@:checkr _n ?? throw "null pointer dereference").post != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L283"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").post);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L285"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L288"
                if ((@:checkr _n ?? throw "null pointer dereference").key != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L289"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").key);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L291"
                if ((@:checkr _n ?? throw "null pointer dereference").value != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L292"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L294"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L295"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L299"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L300"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L302"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L303"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").name));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L305"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").path));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L306"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L307"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L311"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L312"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L314"
                stdgo._internal.go.ast.Ast__walkidentlist._walkIdentList(_v, (@:checkr _n ?? throw "null pointer dereference").names);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L315"
                if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L316"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L318"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").values);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L319"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L320"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L324"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L325"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L327"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").name));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L328"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").typeParams;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L329"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").typeParams));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L331"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L332"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L333"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L340"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L341"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L343"
                for (__0 => _s in (@:checkr _n ?? throw "null pointer dereference").specs) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L344"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, _s);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L348"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L349"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L351"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").recv;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L352"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").recv));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L354"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").name));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L355"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").type));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L356"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").body;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L357"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L362"
                if (({
                    final value = (@:checkr _n ?? throw "null pointer dereference").doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L363"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L365"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").name));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L366"
                stdgo._internal.go.ast.Ast__walkdecllist._walkDeclList(_v, (@:checkr _n ?? throw "null pointer dereference").decls);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L372"
                for (__0 => _f in (@:checkr _n ?? throw "null pointer dereference").files) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L373"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_f));
                };
            } else {
                var _n:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L377"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("ast.Walk: unexpected node type %T" : stdgo.GoString), stdgo.Go.toInterface(_n)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L380"
        _v.visit((null : stdgo._internal.go.ast.Ast_node.Node));
    }
