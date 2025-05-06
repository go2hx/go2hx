package stdgo._internal.go.build.constraint;
function _parseExpr(_text:stdgo.GoString):{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _x = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr), _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L209"
                        {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_e != null) {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L210"
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_e : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>), _1 : false };
                                    }, _e = __tmp__._0, _ok = __tmp__._1;
                                    if (_ok) {
                                        _err = stdgo.Go.asInterface(_e);
                                        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L212"
                                        return;
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L214"
                                throw stdgo.Go.toInterface(_e);
                            };
                        };
                    };
                    a();
                }) });
            };
            var _p = (stdgo.Go.setRef(({ _s : _text?.__copy__() } : stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>);
            _x = _p._or();
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L220"
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L221"
                throw stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ offset : (@:checkr _p ?? throw "null pointer dereference")._pos, err : (("unexpected token " : stdgo.GoString) + (@:checkr _p ?? throw "null pointer dereference")._tok?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L223"
            {
                final __ret__:{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } = { _0 : _x, _1 : (null : stdgo.Error) };
                    _x = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _x = __ret__._0;
                _err = __ret__._1;
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
                return { _0 : _x, _1 : _err };
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
                return { _0 : _x, _1 : _err };
            };
        };
    }
