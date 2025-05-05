package stdgo._internal.internal.fuzz;
function _parseCorpusValue(_line:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _fs = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parseexprfrom.parseExprFrom(_fs, ("(test)" : stdgo.GoString), stdgo.Go.toInterface(_line), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _expr:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L132"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L133"
            return { _0 : (null : stdgo.AnyInterface), _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : false };
        }, _call = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L136"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L137"
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected call expression" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L139"
        if (((@:checkr _call ?? throw "null pointer dereference").args.length) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L140"
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected call expression with 1 argument; got %d" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _call ?? throw "null pointer dereference").args.length))) };
        };
        var _arg = ((@:checkr _call ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)] : stdgo._internal.go.ast.Ast_expr.Expr);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L144"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _call ?? throw "null pointer dereference").fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : false };
            }, _arrayType = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L145"
                if ((@:checkr _arrayType ?? throw "null pointer dereference").len != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L146"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _arrayType ?? throw "null pointer dereference").elt) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _elt = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L149"
                if ((!_ok || ((@:checkr _elt ?? throw "null pointer dereference").name != ("byte" : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L150"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte" : stdgo.GoString)) };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), _1 : false };
                }, _lit = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L153"
                if ((!_ok || ((@:checkr _lit ?? throw "null pointer dereference").kind != (9 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L154"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("string literal required for type []byte" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr _lit ?? throw "null pointer dereference").value?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L157"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L158"
                    return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L160"
                return { _0 : stdgo.Go.toInterface((_s : stdgo.Slice<stdgo.GoUInt8>)), _1 : (null : stdgo.Error) };
            };
        };
        var _idType:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L164"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _call ?? throw "null pointer dereference").fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), _1 : false };
            }, _selector = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _selector ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _xIdent = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L166"
                if ((!_ok || ((@:checkr _xIdent ?? throw "null pointer dereference").name != ("math" : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L167"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid selector type" : stdgo.GoString)) };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L169"
                {
                    final __value__ = (@:checkr (@:checkr _selector ?? throw "null pointer dereference").sel ?? throw "null pointer dereference").name;
                    if (__value__ == (("Float64frombits" : stdgo.GoString))) {
                        _idType = (stdgo.Go.setRef(({ name : ("float64-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                    } else if (__value__ == (("Float32frombits" : stdgo.GoString))) {
                        _idType = (stdgo.Go.setRef(({ name : ("float32-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L175"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid selector type" : stdgo.GoString)) };
                    };
                };
            } else {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _call ?? throw "null pointer dereference").fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    };
                    _idType = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L179"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L180"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L182"
                if ((@:checkr _idType ?? throw "null pointer dereference").name == (("bool" : stdgo.GoString))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, _id = __tmp__._0, _ok = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L184"
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L185"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed bool" : stdgo.GoString)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L187"
                    if ((@:checkr _id ?? throw "null pointer dereference").name == (("true" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L188"
                        return { _0 : stdgo.Go.toInterface(true), _1 : (null : stdgo.Error) };
                    } else if ((@:checkr _id ?? throw "null pointer dereference").name == (("false" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L190"
                        return { _0 : stdgo.Go.toInterface(false), _1 : (null : stdgo.Error) };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L192"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("true or false required for type bool" : stdgo.GoString)) };
                    };
                };
            };
        };
        var _val:stdgo.GoString = ("" : stdgo.GoString), _kind:stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L201"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), _1 : false };
            }, _op = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L202"
                {
                    final __type__ = (@:checkr _op ?? throw "null pointer dereference").x;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L204"
                        if ((@:checkr _op ?? throw "null pointer dereference").op != ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L205"
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported operation on int/float: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _op ?? throw "null pointer dereference").op))) };
                        };
                        _val = (((@:checkr _op ?? throw "null pointer dereference").op.string() : stdgo.GoString) + (@:checkr _lit ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString)?.__copy__();
                        _kind = (@:checkr _lit ?? throw "null pointer dereference").kind;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L211"
                        if ((@:checkr _lit ?? throw "null pointer dereference").name != (("Inf" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L212"
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected operation on int or float type" : stdgo.GoString)) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L214"
                        if ((@:checkr _op ?? throw "null pointer dereference").op == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _val = ("-Inf" : stdgo.GoString);
                        } else {
                            _val = ("+Inf" : stdgo.GoString);
                        };
                        _kind = (6 : stdgo._internal.go.token.Token_token.Token);
                    } else {
                        var _lit:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L221"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected operation on int or float type" : stdgo.GoString)) };
                    };
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L224"
                {
                    final __type__ = _arg;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value);
                        {
                            final __tmp__0 = (@:checkr _lit ?? throw "null pointer dereference").value?.__copy__();
                            final __tmp__1 = (@:checkr _lit ?? throw "null pointer dereference").kind;
                            _val = @:binopAssign __tmp__0;
                            _kind = @:binopAssign __tmp__1;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L228"
                        if ((@:checkr _lit ?? throw "null pointer dereference").name != (("NaN" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L229"
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("literal value required for primitive type" : stdgo.GoString)) };
                        };
                        {
                            final __tmp__0 = ("NaN" : stdgo.GoString);
                            final __tmp__1 = (6 : stdgo._internal.go.token.Token_token.Token);
                            _val = @:binopAssign __tmp__0;
                            _kind = @:binopAssign __tmp__1;
                        };
                    } else {
                        var _lit:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L233"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("literal value required for primitive type" : stdgo.GoString)) };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L237"
        {
            var _typ = ((@:checkr _idType ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
            {
                final __value__ = _typ;
                if (__value__ == (("string" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L239"
                    if (_kind != ((9 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L240"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("string literal value required for type string" : stdgo.GoString)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L242"
                    return ({
                        @:explicitConversion final __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_val?.__copy__());
                        { _0 : stdgo.Go.toInterface(__tmp__._0), _1 : __tmp__._1 };
                    });
                } else if (__value__ == (("byte" : stdgo.GoString)) || __value__ == (("rune" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L244"
                    if (_kind == ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L245"
                        {
                            final __value__ = _typ;
                            if (__value__ == (("rune" : stdgo.GoString))) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L247"
                                return stdgo._internal.internal.fuzz.Fuzz__parseint._parseInt(_val?.__copy__(), _typ?.__copy__());
                            } else if (__value__ == (("byte" : stdgo.GoString))) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L249"
                                return stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), _typ?.__copy__());
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L252"
                    if (_kind != ((8 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L253"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("character literal required for byte/rune types" : stdgo.GoString)) };
                    };
                    var _n = (_val.length : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L256"
                    if ((_n < (2 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L257"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed character literal, missing single quotes" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_unquotechar.unquoteChar((_val.__slice__((1 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (39 : stdgo.GoUInt8)), _code:stdgo.GoInt32 = __tmp__._0, __8:Bool = __tmp__._1, __9:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L260"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L261"
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L263"
                    if (_typ == (("rune" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L264"
                        return { _0 : stdgo.Go.toInterface(_code), _1 : (null : stdgo.Error) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L266"
                    if ((_code >= (256 : stdgo.GoInt32) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L267"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("can only encode single byte to a byte type" : stdgo.GoString)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L269"
                    return { _0 : stdgo.Go.toInterface((_code : stdgo.GoUInt8)), _1 : (null : stdgo.Error) };
                } else if (__value__ == (("int" : stdgo.GoString)) || __value__ == (("int8" : stdgo.GoString)) || __value__ == (("int16" : stdgo.GoString)) || __value__ == (("int32" : stdgo.GoString)) || __value__ == (("int64" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L271"
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L272"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for int types" : stdgo.GoString)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L274"
                    return stdgo._internal.internal.fuzz.Fuzz__parseint._parseInt(_val?.__copy__(), _typ?.__copy__());
                } else if (__value__ == (("uint" : stdgo.GoString)) || __value__ == (("uint8" : stdgo.GoString)) || __value__ == (("uint16" : stdgo.GoString)) || __value__ == (("uint32" : stdgo.GoString)) || __value__ == (("uint64" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L276"
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L277"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for uint types" : stdgo.GoString)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L279"
                    return stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), _typ?.__copy__());
                } else if (__value__ == (("float32" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L281"
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L282"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("float or integer literal required for float32 type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_val?.__copy__(), (32 : stdgo.GoInt)), _v:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L285"
                    return { _0 : stdgo.Go.toInterface((_v : stdgo.GoFloat32)), _1 : _err };
                } else if (__value__ == (("float64" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L287"
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L288"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("float or integer literal required for float64 type" : stdgo.GoString)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L290"
                    return ({
                        @:explicitConversion final __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_val?.__copy__(), (64 : stdgo.GoInt));
                        { _0 : stdgo.Go.toInterface(__tmp__._0), _1 : __tmp__._1 };
                    });
                } else if (__value__ == (("float32-bits" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L292"
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L293"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for math.Float32frombits type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), ("uint32" : stdgo.GoString)), _bits:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L296"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L297"
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L299"
                    return { _0 : stdgo.Go.toInterface(stdgo._internal.math.Math_float32frombits.float32frombits((stdgo.Go.typeAssert((_bits : stdgo.GoUInt32)) : stdgo.GoUInt32))), _1 : (null : stdgo.Error) };
                } else if (__value__ == (("float64-bits" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L301"
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L302"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for math.Float64frombits type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), ("uint64" : stdgo.GoString)), _bits:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L305"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L306"
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L308"
                    return { _0 : stdgo.Go.toInterface(stdgo._internal.math.Math_float64frombits.float64frombits((stdgo.Go.typeAssert((_bits : stdgo.GoUInt64)) : stdgo.GoUInt64))), _1 : (null : stdgo.Error) };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L310"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
            };
        };
    }
