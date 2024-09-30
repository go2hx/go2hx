package stdgo._internal.internal.fuzz;
function _parseCorpusValue(_line:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _fs = stdgo._internal.go.token.Token_newFileSet.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parseExprFrom.parseExprFrom(_fs, ("(test)" : stdgo.GoString), stdgo.Go.toInterface(_line), (0u32 : stdgo._internal.go.parser.Parser_Mode.Mode)), _expr:stdgo._internal.go.ast.Ast_Expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.AnyInterface), _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_CallExpr.CallExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_CallExpr.CallExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_CallExpr.CallExpr>), _1 : false };
        }, _call = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected call expression" : stdgo.GoString)) };
        };
        if ((_call.args.length) != ((1 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected call expression with 1 argument; got %d" : stdgo.GoString), stdgo.Go.toInterface((_call.args.length))) };
        };
        var _arg = (_call.args[(0 : stdgo.GoInt)] : stdgo._internal.go.ast.Ast_Expr.Expr);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_ArrayType.ArrayType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ArrayType.ArrayType>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ArrayType.ArrayType>), _1 : false };
            }, _arrayType = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                if (_arrayType.len != null) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arrayType.elt) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : false };
                }, _elt = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || (_elt.name != ("byte" : stdgo.GoString)) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte" : stdgo.GoString)) };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>), _1 : false };
                }, _lit = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || (_lit.kind != (9 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("string literal required for type []byte" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_lit.value?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                };
                return { _0 : stdgo.Go.toInterface((_s : stdgo.Slice<stdgo.GoUInt8>)), _1 : (null : stdgo.Error) };
            };
        };
        var _idType:stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>), _1 : false };
            }, _selector = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_selector.x) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : false };
                }, _xIdent = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || (_xIdent.name != ("math" : stdgo.GoString)) : Bool)) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid selector type" : stdgo.GoString)) };
                };
                {
                    final __value__ = _selector.sel.name;
                    if (__value__ == (("Float64frombits" : stdgo.GoString))) {
                        _idType = (stdgo.Go.setRef(({ name : ("float64-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_Ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>);
                    } else if (__value__ == (("Float32frombits" : stdgo.GoString))) {
                        _idType = (stdgo.Go.setRef(({ name : ("float32-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_Ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>);
                    } else {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid selector type" : stdgo.GoString)) };
                    };
                };
            } else {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : false };
                    };
                    _idType = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
                if (_idType.name == (("bool" : stdgo.GoString))) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : false };
                    }, _id = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed bool" : stdgo.GoString)) };
                    };
                    if (_id.name == (("true" : stdgo.GoString))) {
                        return { _0 : stdgo.Go.toInterface(true), _1 : (null : stdgo.Error) };
                    } else if (_id.name == (("false" : stdgo.GoString))) {
                        return { _0 : stdgo.Go.toInterface(false), _1 : (null : stdgo.Error) };
                    } else {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("true or false required for type bool" : stdgo.GoString)) };
                    };
                };
            };
        };
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo._internal.go.token.Token_Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_Token.Token);
var _kind = __1, _val = __0;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr>), _1 : false };
            }, _op = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    final __type__ = _op.x;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>) : __type__.__underlying__().value;
                        if (_op.op != ((13 : stdgo._internal.go.token.Token_Token.Token))) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported operation on int/float: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_op.op))) };
                        };
                        _val = ((_op.op.string() : stdgo.GoString) + _lit.value?.__copy__() : stdgo.GoString)?.__copy__();
                        _kind = _lit.kind;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__.__underlying__().value;
                        if (_lit.name != (("Inf" : stdgo.GoString))) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected operation on int or float type" : stdgo.GoString)) };
                        };
                        if (_op.op == ((13 : stdgo._internal.go.token.Token_Token.Token))) {
                            _val = ("-Inf" : stdgo.GoString);
                        } else {
                            _val = ("+Inf" : stdgo.GoString);
                        };
                        _kind = (6 : stdgo._internal.go.token.Token_Token.Token);
                    } else {
                        var _lit:stdgo._internal.go.ast.Ast_Expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_Expr.Expr) : cast __type__;
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected operation on int or float type" : stdgo.GoString)) };
                    };
                };
            } else {
                {
                    final __type__ = _arg;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>) : __type__.__underlying__().value;
                        {
                            final __tmp__0 = _lit.value?.__copy__();
                            final __tmp__1 = _lit.kind;
                            _val = __tmp__0;
                            _kind = __tmp__1;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__.__underlying__().value;
                        if (_lit.name != (("NaN" : stdgo.GoString))) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("literal value required for primitive type" : stdgo.GoString)) };
                        };
                        {
                            final __tmp__0 = ("NaN" : stdgo.GoString);
                            final __tmp__1 = (6 : stdgo._internal.go.token.Token_Token.Token);
                            _val = __tmp__0;
                            _kind = __tmp__1;
                        };
                    } else {
                        var _lit:stdgo._internal.go.ast.Ast_Expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_Expr.Expr) : cast __type__;
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("literal value required for primitive type" : stdgo.GoString)) };
                    };
                };
            };
        };
        {
            var _typ = (_idType.name?.__copy__() : stdgo.GoString);
            {
                final __value__ = _typ;
                if (__value__ == (("string" : stdgo.GoString))) {
                    if (_kind != ((9 : stdgo._internal.go.token.Token_Token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("string literal value required for type string" : stdgo.GoString)) };
                    };
                    return stdgo._internal.strconv.Strconv_unquote.unquote(_val?.__copy__());
                } else if (__value__ == (("byte" : stdgo.GoString)) || __value__ == (("rune" : stdgo.GoString))) {
                    if (_kind == ((5 : stdgo._internal.go.token.Token_Token.Token))) {
                        {
                            final __value__ = _typ;
                            if (__value__ == (("rune" : stdgo.GoString))) {
                                return stdgo._internal.internal.fuzz.Fuzz__parseInt._parseInt(_val?.__copy__(), _typ?.__copy__());
                            } else if (__value__ == (("byte" : stdgo.GoString))) {
                                return stdgo._internal.internal.fuzz.Fuzz__parseUint._parseUint(_val?.__copy__(), _typ?.__copy__());
                            };
                        };
                    };
                    if (_kind != ((8 : stdgo._internal.go.token.Token_Token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("character literal required for byte/rune types" : stdgo.GoString)) };
                    };
                    var _n = (_val.length : stdgo.GoInt);
                    if ((_n < (2 : stdgo.GoInt) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed character literal, missing single quotes" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_unquoteChar.unquoteChar((_val.__slice__((1 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (39 : stdgo.GoUInt8)), _code:stdgo.GoInt32 = __tmp__._0, __8:Bool = __tmp__._1, __9:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
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
                    if (_kind != ((5 : stdgo._internal.go.token.Token_Token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for int types" : stdgo.GoString)) };
                    };
                    return stdgo._internal.internal.fuzz.Fuzz__parseInt._parseInt(_val?.__copy__(), _typ?.__copy__());
                } else if (__value__ == (("uint" : stdgo.GoString)) || __value__ == (("uint8" : stdgo.GoString)) || __value__ == (("uint16" : stdgo.GoString)) || __value__ == (("uint32" : stdgo.GoString)) || __value__ == (("uint64" : stdgo.GoString))) {
                    if (_kind != ((5 : stdgo._internal.go.token.Token_Token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for uint types" : stdgo.GoString)) };
                    };
                    return stdgo._internal.internal.fuzz.Fuzz__parseUint._parseUint(_val?.__copy__(), _typ?.__copy__());
                } else if (__value__ == (("float32" : stdgo.GoString))) {
                    if (((_kind != (6 : stdgo._internal.go.token.Token_Token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("float or integer literal required for float32 type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_val?.__copy__(), (32 : stdgo.GoInt)), _v:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    return { _0 : stdgo.Go.toInterface((_v : stdgo.GoFloat32)), _1 : _err };
                } else if (__value__ == (("float64" : stdgo.GoString))) {
                    if (((_kind != (6 : stdgo._internal.go.token.Token_Token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("float or integer literal required for float64 type" : stdgo.GoString)) };
                    };
                    return stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_val?.__copy__(), (64 : stdgo.GoInt));
                } else if (__value__ == (("float32-bits" : stdgo.GoString))) {
                    if (_kind != ((5 : stdgo._internal.go.token.Token_Token.Token))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for math.Float32frombits type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parseUint._parseUint(_val?.__copy__(), ("uint32" : stdgo.GoString)), _bits:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    return { _0 : stdgo.Go.toInterface(stdgo._internal.math.Math_float32frombits.float32frombits((stdgo.Go.typeAssert((_bits : stdgo.GoUInt32)) : stdgo.GoUInt32))), _1 : (null : stdgo.Error) };
                } else if (__value__ == (("float64-bits" : stdgo.GoString))) {
                    if (((_kind != (6 : stdgo._internal.go.token.Token_Token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for math.Float64frombits type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parseUint._parseUint(_val?.__copy__(), ("uint64" : stdgo.GoString)), _bits:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
