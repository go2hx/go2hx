package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
@:keep @:allow(_internal.context_test.Context_test.T_afterFuncContext_asInterface) class T_afterFuncContext_static_extension {
    @:keep
    static public function _cancel( _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>, _err:stdgo.Error):Void {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._mu.lock();
            __deferstack__.unshift(() -> _c._mu.unlock());
            if (_c._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _c._err = _err;
            for (__0 => _f in _c._afterFuncs) {
                stdgo.Go.routine(() -> _f());
            };
            _c._afterFuncs = (null : stdgo.GoMap<stdgo.Ref<_internal.context_test.Context_test_T__struct_1.T__struct_1>, () -> Void>);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function afterFunc( _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>, _f:() -> Void):() -> Bool {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._mu.lock();
            __deferstack__.unshift(() -> _c._mu.unlock());
            var _k = (stdgo.Go.setRef(({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Ref<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
            if (_c._afterFuncs == null) {
                _c._afterFuncs = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<_internal.context_test.Context_test_T__struct_1.T__struct_1>, () -> Void>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<_internal.context_test.Context_test_T__struct_1.T__struct_1>, () -> Void>);
            };
            _c._afterFuncs[_k] = _f;
            {
                final __ret__:() -> Bool = function():Bool {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _c._mu.lock();
                        __deferstack__.unshift(() -> _c._mu.unlock());
                        var __tmp__ = (_c._afterFuncs != null && _c._afterFuncs.exists(_k) ? { _0 : _c._afterFuncs[_k], _1 : true } : { _0 : null, _1 : false }), __0:() -> Void = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_c._afterFuncs != null) _c._afterFuncs.remove(_k);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _ok;
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return false;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return false;
                    };
                };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return null;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return null;
        };
    }
    @:keep
    static public function value( _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext> = _c;
        return (null : stdgo.AnyInterface);
    }
    @:keep
    static public function err( _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>):stdgo.Error {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._mu.lock();
            __deferstack__.unshift(() -> _c._mu.unlock());
            {
                final __ret__:stdgo.Error = _c._err;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function done( _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>):stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1> {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._mu.lock();
            __deferstack__.unshift(() -> _c._mu.unlock());
            if (_c._done == null) {
                _c._done = (new stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>(0, () -> ({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
            };
            {
                final __ret__:stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1> = _c._done;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1> = (null : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1> = (null : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function deadline( _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext> = _c;
        return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : false };
    }
}
