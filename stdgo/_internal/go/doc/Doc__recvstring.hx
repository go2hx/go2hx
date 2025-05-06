package stdgo._internal.go.doc;
function _recvString(_recv:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L32"
        {
            final __type__ = _recv;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L34"
                return (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L36"
                return (("*" : stdgo.GoString) + stdgo._internal.go.doc.Doc__recvstring._recvString((@:checkr _t ?? throw "null pointer dereference").x)?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L39"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s[%s]" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.go.doc.Doc__recvstring._recvString((@:checkr _t ?? throw "null pointer dereference").x)), stdgo.Go.toInterface(stdgo._internal.go.doc.Doc__recvparam._recvParam((@:checkr _t ?? throw "null pointer dereference").index)))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L42"
                if ((((@:checkr _t ?? throw "null pointer dereference").indices.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L44"
                    _b.writeString(stdgo._internal.go.doc.Doc__recvstring._recvString((@:checkr _t ?? throw "null pointer dereference").x)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L45"
                    _b.writeByte((91 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L46"
                    _b.writeString(stdgo._internal.go.doc.Doc__recvparam._recvParam((@:checkr _t ?? throw "null pointer dereference").indices[(0 : stdgo.GoInt)])?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L47"
                    for (__0 => _e in ((@:checkr _t ?? throw "null pointer dereference").indices.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L48"
                        _b.writeString((", " : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L49"
                        _b.writeString(stdgo._internal.go.doc.Doc__recvparam._recvParam(_e)?.__copy__());
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L51"
                    _b.writeByte((93 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L52"
                    return (_b.string() : stdgo.GoString)?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L55"
        return ("BADRECV" : stdgo.GoString);
    }
