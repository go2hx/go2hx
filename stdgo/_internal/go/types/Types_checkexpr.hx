package stdgo._internal.go.types;
function checkExpr(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L59"
            if (({
                final value = _pkg;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _scope = stdgo._internal.go.types.Types_universe.universe;
                _pos = stdgo._internal.go.types.Types__nopos._nopos;
            } else if (!_pos.isValid()) {
                _scope = (@:checkr _pkg ?? throw "null pointer dereference")._scope;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L69"
                for (__0 => _fscope in (@:checkr (@:checkr _pkg ?? throw "null pointer dereference")._scope ?? throw "null pointer dereference")._children) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L70"
                    {
                        _scope = _fscope.innermost(_pos);
                        if (({
                            final value = _scope;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L71"
                            break;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L74"
                if ((({
                    final value = _scope;
                    (value == null || (value : Dynamic).__nil__);
                }) || false : Bool)) {
                    var _s = _scope;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L76"
                    while ((({
                        final value = _s;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && (_s != (@:checkr _pkg ?? throw "null pointer dereference")._scope) : Bool)) {
                        _s = (@:checkr _s ?? throw "null pointer dereference")._parent;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L80"
                    if (({
                        final value = _s;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L81"
                        return _err = stdgo._internal.fmt.Fmt_errorf.errorf(("no position %s found in package %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_pos))), stdgo.Go.toInterface((@:checkr _pkg ?? throw "null pointer dereference")._name));
                    };
                };
            };
            var _check = stdgo._internal.go.types.Types_newchecker.newChecker(null, _fset, _pkg, _info);
            (@:checkr _check ?? throw "null pointer dereference")._environment._scope = _scope;
            (@:checkr _check ?? throw "null pointer dereference")._environment._pos = _pos;
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                final __f__ = _check._handleBailout;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _x:stdgo._internal.go.types.Types_t_operand.T_operand = ({} : stdgo._internal.go.types.Types_t_operand.T_operand);
            //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L94"
            _check._rawExpr((null : stdgo._internal.go.types.Types_type_.Type_), (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>), _expr, (null : stdgo._internal.go.types.Types_type_.Type_), true);
            //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L95"
            _check._processDelayed((0 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L96"
            _check._recordUntyped();
            //"file:///home/runner/.go/go1.21.3/src/go/types/eval.go#L98"
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
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
                return _err;
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
                return _err;
            };
        };
    }
