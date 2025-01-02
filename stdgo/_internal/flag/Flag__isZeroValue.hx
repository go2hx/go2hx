package stdgo._internal.flag;
function _isZeroValue(_flag:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>, _value:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _ok = false, _err = (null : stdgo.Error);
        try {
            var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((@:checkr _flag ?? throw "null pointer dereference").value)) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _z:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
            if (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _z = stdgo._internal.reflect.Reflect_new_.new_(_typ.elem())?.__copy__();
            } else {
                _z = stdgo._internal.reflect.Reflect_zero.zero(_typ)?.__copy__();
            };
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_e != null) {
                                if (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                    _typ = _typ.elem();
                                };
                                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("panic calling String method on zero %v for flag %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface((@:checkr _flag ?? throw "null pointer dereference").name), _e);
                            };
                        };
                    };
                    a();
                }));
            };
            {
                final __ret__:{ var _0 : Bool; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : _value == (((stdgo.Go.typeAssert((_z.interface_() : stdgo._internal.flag.Flag_Value.Value)) : stdgo._internal.flag.Flag_Value.Value).string() : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _ok = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _ok, _1 : _err };
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _ok, _1 : _err };
        };
    }
