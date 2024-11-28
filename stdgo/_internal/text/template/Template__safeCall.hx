package stdgo._internal.text.template;
function _safeCall(_fun:stdgo._internal.reflect.Reflect_Value.Value, _args:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _val = ({} : stdgo._internal.reflect.Reflect_Value.Value), _err = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> ({
                var a = function():Void {
                    {
                        var _r = (stdgo._internal.text.template.Template__recover._recover() : stdgo.AnyInterface);
                        if (_r != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_r : stdgo.Error)) : stdgo.Error), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Error), _1 : false };
                                }, _e = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    _err = _e;
                                } else {
                                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("%v" : stdgo.GoString), _r);
                                };
                            };
                        };
                    };
                };
                a();
            }));
            var _ret = _fun.call(_args);
            if (((_ret.length == (2 : stdgo.GoInt)) && !_ret[(1 : stdgo.GoInt)].isNil() : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } = { _0 : _val = _ret[(0 : stdgo.GoInt)], _1 : _err = (stdgo.Go.typeAssert((_ret[(1 : stdgo.GoInt)].interface_() : stdgo.Error)) : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } = { _0 : _val = _ret[(0 : stdgo.GoInt)], _1 : _err = (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } = { _0 : _val, _1 : _err };
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
            final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } = { _0 : _val, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
