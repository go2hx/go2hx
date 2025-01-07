package stdgo._internal.encoding.gob;
function _getTypeUnlocked(_name:stdgo.GoString, _rt:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.encoding.gob.Gob__typeLock._typeLock.lock();
            {
                final __f__ = @:check2 stdgo._internal.encoding.gob.Gob__typeLock._typeLock.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = stdgo._internal.encoding.gob.Gob__getBaseType._getBaseType(_name?.__copy__(), _rt), _t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface((("getTypeUnlocked: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _t;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
            };
        };
    }
