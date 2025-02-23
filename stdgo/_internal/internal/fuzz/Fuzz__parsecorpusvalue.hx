package stdgo._internal.internal.fuzz;
function _parseCorpusValue(_line:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _fs = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parseexprfrom.parseExprFrom(_fs, ("(test)" : stdgo.GoString), stdgo.Go.toInterface(_line), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _expr:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.AnyInterface), _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : false };
        }, _call = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected call expression" : stdgo.GoString)) };
        };
        if (((@:checkr _call ?? throw "null pointer dereference").args.length) != ((1 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected call expression with 1 argument; got %d" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _call ?? throw "null pointer dereference").args.length))) };
        };
        var _arg = ((@:checkr _call ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)] : stdgo._internal.go.ast.Ast_expr.Expr);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _call ?? throw "null pointer dereference").fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : false };
            }, _arrayType = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                if ((@:checkr _arrayType ?? throw "null pointer dereference").len != null) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _arrayType ?? throw "null pointer dereference").elt) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _elt = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || ((@:checkr _elt ?? throw "null pointer dereference").name != ("byte" : stdgo.GoString)) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte" : stdgo.GoString)) };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), _1 : false };
                }, _lit = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || ((@:checkr _lit ?? throw "null pointer dereference").kind != (9 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("string literal required for type []byte" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr _lit ?? throw "null pointer dereference").value?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                };
                return { _0 : stdgo.Go.toInterface((_s : stdgo.Slice<stdgo.GoUInt8>)), _1 : (null : stdgo.Error) };
            };
        };
        var _idType:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
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
                if ((!_ok || ((@:checkr _xIdent ?? throw "null pointer dereference").name != ("math" : stdgo.GoString)) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid selector type" : stdgo.GoString)) };
                };
                {
                    final __value__ = (@:checkr (@:checkr _selector ?? throw "null pointer dereference").sel ?? throw "null pointer dereference").name;
                    if (__value__ == (("Float64frombits" : stdgo.GoString))) {
                        _idType = (stdgo.Go.setRef(({ name : ("float64-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                    } else if (__value__ == (("Float32frombits" : stdgo.GoString))) {
                        _idType = (stdgo.Go.setRef(({ name : ("float32-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                    } else {
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
                if (!_ok) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
                if ((@:checkr _idType ?? throw "null pointer dereference").name == (("bool" : stdgo.GoString))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, _id = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed bool" : stdgo.GoString)) };
                    };
                    if ((@:checkr _id ?? throw "null pointer dereference").name == (("true" : stdgo.GoString))) {
                        return { _0 : stdgo.Go.toInterface(true), _1 : (null : stdgo.Error) };
                    } else if ((@:checkr _id ?? throw "null pointer dereference").name == (("false" : stdgo.GoString))) {
                        return { _0 : stdgo.Go.toInterface(false), _1 : (null : stdgo.Error) };
                    } else {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("true or false required for type bool" : stdgo.GoString)) };
                    };
                };
            };
        };
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
var _kind = __1, _val = __0;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), _1 : false };
            }, _op = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    final __type__ = (@:checkr _op ?? throw "null pointer dereference").x;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value;
                        if ((@:checkr _op ?? throw "null pointer dereference").op != ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported operation on int/float: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _op ?? throw "null pointer dereference").op))) };
                        };
                        _val = (((@:checkr _op ?? throw "null pointer dereference").op.string() : stdgo.GoString) + (@:checkr _lit ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString)?.__copy__();
                        _kind = (@:checkr _lit ?? throw "null pointer dereference").kind;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                        if ((@:checkr _lit ?? throw "null pointer dereference").name != (("Inf" : stdgo.GoString))) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected operation on int or float type" : stdgo.GoString)) };
                        };
                        if ((@:checkr _op ?? throw "null pointer dereference").op == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _val = ("-Inf" : stdgo.GoString);
                        } else {
                            _val = ("+Inf" : stdgo.GoString);
                        };
                        _kind = (6 : stdgo._internal.go.token.Token_token.Token);
                    } else {
                        var _lit:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected operation on int or float type" : stdgo.GoString)) };
                    };
                };
            } else {
                {
                    final __type__ = _arg;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value;
                        {
                            final __tmp__0 = (@:checkr _lit ?? throw "null pointer dereference").value?.__copy__();
                            final __tmp__1 = (@:checkr _lit ?? throw "null pointer dereference").kind;
                            _val = __tmp__0;
                            _kind = __tmp__1;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                        if ((@:checkr _lit ?? throw "null pointer dereference").name != (("NaN" : stdgo.GoString))) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("literal value required for primitive type" : stdgo.GoString)) };
                        };
                        {
                            final __tmp__0 = ("NaN" : stdgo.GoString);
                            final __tmp__1 = (6 : stdgo._internal.go.token.Token_token.Token);
                            _val = __tmp__0;
                            _kind = __tmp__1;
                        };
                    } else {
                        var _lit:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("literal value required for primitive type" : stdgo.GoString)) };
                    };
                };
            };
        };
        {
            var _typ = ((@:checkr _idType ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
            {
                final __value__ = _typ;
                if (__value__ == (("string" : stdgo.GoString))) {
                    if (_kind != ((9 : stdgo._internal.go.token.Token_token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("string literal value required for type string" : stdgo.GoString)) };
                    };
                    return stdgo._internal.strconv.Strconv_unquote.unquote(_val?.__copy__());
                } else if (__value__ == (("byte" : stdgo.GoString)) || __value__ == (("rune" : stdgo.GoString))) {
                    if (_kind == ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            final __value__ = _typ;
                            if (__value__ == (("rune" : stdgo.GoString))) {
                                return stdgo._internal.internal.fuzz.Fuzz__parseint._parseInt(_val?.__copy__(), _typ?.__copy__());
                            } else if (__value__ == (("byte" : stdgo.GoString))) {
                                return stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), _typ?.__copy__());
                            };
                        };
                    };
                    if (_kind != ((8 : stdgo._internal.go.token.Token_token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("character literal required for byte/rune types" : stdgo.GoString)) };
                    };
                    var _n = (_val.length : stdgo.GoInt);
                    if ((_n < (2 : stdgo.GoInt) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed character literal, missing single quotes" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_unquotechar.unquoteChar((_val.__slice__((1 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (39 : stdgo.GoUInt8)), _code:stdgo.GoInt32 = __tmp__._0, __8:Bool = __tmp__._1, __9:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                    if (_err != null) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    if (_typ == (("rune" : stdgo.GoString))) {
                        return { _0 : stdgo.Go.toInterface(_code), _1 : (null : stdgo.Error) };
                    };
                    if ((_code >= (256 : stdgo.GoInt32) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("can only encode single byte to a byte type" : stdgo.GoString)) };
                    };
                    return { _0 : stdgo.Go.toInterface((_code : stdgo.GoUInt8)), _1 : (null : stdgo.Error) };
                } else if (__value__ == (("int" : stdgo.GoString)) || __value__ == (("int8" : stdgo.GoString)) || __value__ == (("int16" : stdgo.GoString)) || __value__ == (("int32" : stdgo.GoString)) || __value__ == (("int64" : stdgo.GoString))) {
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for int types" : stdgo.GoString)) };
                    };
                    return stdgo._internal.internal.fuzz.Fuzz__parseint._parseInt(_val?.__copy__(), _typ?.__copy__());
                } else if (__value__ == (("uint" : stdgo.GoString)) || __value__ == (("uint8" : stdgo.GoString)) || __value__ == (("uint16" : stdgo.GoString)) || __value__ == (("uint32" : stdgo.GoString)) || __value__ == (("uint64" : stdgo.GoString))) {
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for uint types" : stdgo.GoString)) };
                    };
                    return stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), _typ?.__copy__());
                } else if (__value__ == (("float32" : stdgo.GoString))) {
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("float or integer literal required for float32 type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_val?.__copy__(), (32 : stdgo.GoInt)), _v:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    return { _0 : stdgo.Go.toInterface((_v : stdgo.GoFloat32)), _1 : _err };
                } else if (__value__ == (("float64" : stdgo.GoString))) {
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("float or integer literal required for float64 type" : stdgo.GoString)) };
                    };
                    return stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_val?.__copy__(), (64 : stdgo.GoInt));
                } else if (__value__ == (("float32-bits" : stdgo.GoString))) {
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for math.Float32frombits type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), ("uint32" : stdgo.GoString)), _bits:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    return { _0 : stdgo.Go.toInterface(stdgo._internal.math.Math_float32frombits.float32frombits((stdgo.Go.typeAssert((_bits : stdgo.GoUInt32)) : stdgo.GoUInt32))), _1 : (null : stdgo.Error) };
                } else if (__value__ == (("float64-bits" : stdgo.GoString))) {
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for math.Float64frombits type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), ("uint64" : stdgo.GoString)), _bits:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    return { _0 : stdgo.Go.toInterface(stdgo._internal.math.Math_float64frombits.float64frombits((stdgo.Go.typeAssert((_bits : stdgo.GoUInt64)) : stdgo.GoUInt64))), _1 : (null : stdgo.Error) };
                } else {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
            };
        };
    }
