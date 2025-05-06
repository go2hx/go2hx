package stdgo._internal.go.build.constraint;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.T_exprParser_asInterface) class T_exprParser_static_extension {
    @:keep
    @:tdfield
    static public function _lex( _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._isTag = false;
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L305"
        while ((((@:checkr _p ?? throw "null pointer dereference")._i < ((@:checkr _p ?? throw "null pointer dereference")._s.length) : Bool) && ((((@:checkr _p ?? throw "null pointer dereference")._s[((@:checkr _p ?? throw "null pointer dereference")._i : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || ((@:checkr _p ?? throw "null pointer dereference")._s[((@:checkr _p ?? throw "null pointer dereference")._i : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L306"
            (@:checkr _p ?? throw "null pointer dereference")._i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L308"
        if (((@:checkr _p ?? throw "null pointer dereference")._i >= ((@:checkr _p ?? throw "null pointer dereference")._s.length) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._tok = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            (@:checkr _p ?? throw "null pointer dereference")._pos = (@:checkr _p ?? throw "null pointer dereference")._i;
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L311"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L313"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._s[((@:checkr _p ?? throw "null pointer dereference")._i : stdgo.GoInt)];
            if (__value__ == ((40 : stdgo.GoUInt8)) || __value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((33 : stdgo.GoUInt8))) {
                (@:checkr _p ?? throw "null pointer dereference")._pos = (@:checkr _p ?? throw "null pointer dereference")._i;
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L316"
                (@:checkr _p ?? throw "null pointer dereference")._i++;
                (@:checkr _p ?? throw "null pointer dereference")._tok = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((@:checkr _p ?? throw "null pointer dereference")._pos, (@:checkr _p ?? throw "null pointer dereference")._i) : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L318"
                return;
            } else if (__value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L321"
                if (((((@:checkr _p ?? throw "null pointer dereference")._i + (1 : stdgo.GoInt) : stdgo.GoInt) >= ((@:checkr _p ?? throw "null pointer dereference")._s.length) : Bool) || ((@:checkr _p ?? throw "null pointer dereference")._s[((@:checkr _p ?? throw "null pointer dereference")._i + (1 : stdgo.GoInt) : stdgo.GoInt)] != (@:checkr _p ?? throw "null pointer dereference")._s[((@:checkr _p ?? throw "null pointer dereference")._i : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L322"
                    throw stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ offset : (@:checkr _p ?? throw "null pointer dereference")._i, err : (("invalid syntax at " : stdgo.GoString) + (((@:checkr _p ?? throw "null pointer dereference")._s[((@:checkr _p ?? throw "null pointer dereference")._i : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)));
                };
                (@:checkr _p ?? throw "null pointer dereference")._pos = (@:checkr _p ?? throw "null pointer dereference")._i;
                (@:checkr _p ?? throw "null pointer dereference")._i = ((@:checkr _p ?? throw "null pointer dereference")._i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                (@:checkr _p ?? throw "null pointer dereference")._tok = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((@:checkr _p ?? throw "null pointer dereference")._pos, (@:checkr _p ?? throw "null pointer dereference")._i) : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L327"
                return;
            };
        };
        var _tag = (((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((@:checkr _p ?? throw "null pointer dereference")._i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L331"
        for (_i => _c in _tag) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L332"
            if ((((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool) && _c != ((95 : stdgo.GoInt32)) : Bool) && (_c != (46 : stdgo.GoInt32)) : Bool)) {
                _tag = (_tag.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L334"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L337"
        if (_tag == ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((@:checkr _p ?? throw "null pointer dereference")._i) : stdgo.GoString)?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L339"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ offset : (@:checkr _p ?? throw "null pointer dereference")._i, err : (("invalid syntax at " : stdgo.GoString) + (_c : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)));
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos = (@:checkr _p ?? throw "null pointer dereference")._i;
        (@:checkr _p ?? throw "null pointer dereference")._i = ((@:checkr _p ?? throw "null pointer dereference")._i + ((_tag.length)) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._tok = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((@:checkr _p ?? throw "null pointer dereference")._pos, (@:checkr _p ?? throw "null pointer dereference")._i) : stdgo.GoString)?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference")._isTag = true;
    }
    @:keep
    @:tdfield
    static public function _atom( _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L268"
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == (("(" : stdgo.GoString))) {
                var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo.GoInt);
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L271"
                            {
                                var _e = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                } : stdgo.AnyInterface);
                                if (_e != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L272"
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((_e : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>), _1 : true };
                                        } catch(_) {
                                            { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>), _1 : false };
                                        }, _e = __tmp__._0, _ok = __tmp__._1;
                                        if ((_ok && ((@:checkr _e ?? throw "null pointer dereference").err == ("unexpected end of expression" : stdgo.GoString)) : Bool)) {
                                            (@:checkr _e ?? throw "null pointer dereference").err = ("missing close paren" : stdgo.GoString);
                                        };
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L275"
                                    throw stdgo.Go.toInterface(_e);
                                };
                            };
                        };
                        a();
                    }) });
                };
                var _x = (_p._or() : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L279"
                if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((")" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L280"
                    throw stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ offset : _pos, err : ("missing close paren" : stdgo.GoString) } : stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L282"
                _p._lex();
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L283"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _x;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L286"
            if (!(@:checkr _p ?? throw "null pointer dereference")._isTag) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L287"
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L288"
                    throw stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ offset : (@:checkr _p ?? throw "null pointer dereference")._pos, err : ("unexpected end of expression" : stdgo.GoString) } : stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L290"
                throw stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ offset : (@:checkr _p ?? throw "null pointer dereference")._pos, err : (("unexpected token " : stdgo.GoString) + (@:checkr _p ?? throw "null pointer dereference")._tok?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)));
            };
            var _tok = ((@:checkr _p ?? throw "null pointer dereference")._tok?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L293"
            _p._lex();
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L294"
            {
                final __ret__:stdgo._internal.go.build.constraint.Constraint_expr.Expr = stdgo._internal.go.build.constraint.Constraint__tag._tag(_tok?.__copy__());
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _not( _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L252"
        _p._lex();
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L253"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == (("!" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L254"
            _p._lex();
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L255"
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == (("!" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L256"
                throw stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ offset : (@:checkr _p ?? throw "null pointer dereference")._pos, err : ("double negation not allowed" : stdgo.GoString) } : stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L258"
            return stdgo._internal.go.build.constraint.Constraint__not._not(_p._atom());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L260"
        return _p._atom();
    }
    @:keep
    @:tdfield
    static public function _and( _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser> = _p;
        var _x = (_p._not() : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L242"
        while ((@:checkr _p ?? throw "null pointer dereference")._tok == (("&&" : stdgo.GoString))) {
            _x = stdgo._internal.go.build.constraint.Constraint__and._and(_x, _p._not());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L245"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _or( _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser> = _p;
        var _x = (_p._and() : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L231"
        while ((@:checkr _p ?? throw "null pointer dereference")._tok == (("||" : stdgo.GoString))) {
            _x = stdgo._internal.go.build.constraint.Constraint__or._or(_x, _p._and());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L234"
        return _x;
    }
}
