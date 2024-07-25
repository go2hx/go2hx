package stdgo._internal.sync;
macro function onceValue<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<() -> T_>):haxe.macro.Expr.ExprOf<() -> T_> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync" + "_" + "onceValue" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_, _f:() -> T_) {
                    var __0:stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once), __1:Bool = false, __2:stdgo.AnyInterface = (null : stdgo.AnyInterface), __3:$T_ = stdgo.Go.defaultValue((cast (null) : $T_));
var _result = __3, _p = __2, _valid = __1, _once = __0;
                    var _g = (function():stdgo._internal.sync.Sync.Void {
                        var __deferstack__:stdgo._internal.sync.Sync.Array<stdgo._internal.sync.Sync.Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> {
                                var a = function():stdgo._internal.sync.Sync.Void {
                                    _p = ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    });
                                    if (!_valid) {
                                        throw stdgo.Go.toInterface(_p);
                                    };
                                };
                                a();
                            });
                            _result = _f();
                            _valid = true;
                            {
                                for (@:privateAccess stdgo._internal.sync.Sync.defer in __deferstack__) {
                                    @:privateAccess stdgo._internal.sync.Sync.defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:stdgo._internal.sync.Sync.Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (@:privateAccess stdgo._internal.sync.Sync.defer in __deferstack__) {
                                @:privateAccess stdgo._internal.sync.Sync.defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } : () -> Void);
                    return function():$T_ {
                        _once.do_(_g);
                        if (!_valid) {
                            throw stdgo.Go.toInterface(_p);
                        };
                        return _result;
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_f));
        };
    }
macro function onceValues<T1, T2>(__generic__0:haxe.macro.Expr.ExprOf<T1>, __generic__1:haxe.macro.Expr.ExprOf<T2>, _f:haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }> {
        final T1:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final T2:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "sync" + "_" + "onceValues" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T1) + "_" + haxe.macro.ComplexTypeTools.toString(T2) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T1, __generic__1:$T2, _f:() -> { var _0 : T1; var _1 : T2; }) {
                    var __0:stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once), __1:Bool = false, __2:stdgo.AnyInterface = (null : stdgo.AnyInterface), __3:$T1 = stdgo.Go.defaultValue((cast (null) : $T1)), __4:$T2 = stdgo.Go.defaultValue((cast (null) : $T2));
var _r2 = __4, _r1 = __3, _p = __2, _valid = __1, _once = __0;
                    var _g = (function():stdgo._internal.sync.Sync.Void {
                        var __deferstack__:stdgo._internal.sync.Sync.Array<stdgo._internal.sync.Sync.Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> {
                                var a = function():stdgo._internal.sync.Sync.Void {
                                    _p = ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    });
                                    if (!_valid) {
                                        throw stdgo.Go.toInterface(_p);
                                    };
                                };
                                a();
                            });
                            {
                                var __tmp__ = _f();
                                _r1 = __tmp__._0;
                                _r2 = __tmp__._1;
                            };
                            _valid = true;
                            {
                                for (@:privateAccess stdgo._internal.sync.Sync.defer in __deferstack__) {
                                    @:privateAccess stdgo._internal.sync.Sync.defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:stdgo._internal.sync.Sync.Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (@:privateAccess stdgo._internal.sync.Sync.defer in __deferstack__) {
                                @:privateAccess stdgo._internal.sync.Sync.defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } : () -> Void);
                    return function():{ var _0 : T1; var _1 : T2; } {
                        _once.do_(_g);
                        if (!_valid) {
                            throw stdgo.Go.toInterface(_p);
                        };
                        return { _0 : _r1, _1 : _r2 };
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_f));
        };
    }
