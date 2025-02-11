package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_sliceEncoder_asInterface) class T_sliceEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder = _se?.__copy__();
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (_v.isNil()) {
                @:check2r _e.writeString(("null" : stdgo.GoString));
                return;
            };
            {
                (@:checkr _e ?? throw "null pointer dereference")._ptrLevel++;
                if (((@:checkr _e ?? throw "null pointer dereference")._ptrLevel > (1000u32 : stdgo.GoUInt) : Bool)) {
                    var _ptr = ({ _ptr : stdgo.Go.toInterface(_v.unsafePointer()), _len : _v.len() } : stdgo._internal.encoding.json.Json_t__struct_20.T__struct_20);
                    {
                        var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._ptrSeen != null && (@:checkr _e ?? throw "null pointer dereference")._ptrSeen.__exists__(stdgo.Go.toInterface(stdgo.Go.asInterface(_ptr))) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._ptrSeen[stdgo.Go.toInterface(stdgo.Go.asInterface(_ptr))], _1 : true } : { _0 : ({} : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue), _1 : false }), __4:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            @:check2r _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError(_v?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("encountered a cycle via %s" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>)));
                        };
                    };
                    (@:checkr _e ?? throw "null pointer dereference")._ptrSeen[stdgo.Go.toInterface(stdgo.Go.asInterface(_ptr))] = (new stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue() : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue);
                    {
                        var _a0 = (@:checkr _e ?? throw "null pointer dereference")._ptrSeen;
                        var _a1 = _ptr;
                        __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__remove__(stdgo.Go.toInterface(stdgo.Go.asInterface(_a1))) });
                    };
                };
            };
            _se._arrayEnc(_e, _v?.__copy__(), _opts?.__copy__());
            (@:checkr _e ?? throw "null pointer dereference")._ptrLevel--;
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
                return;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
}
