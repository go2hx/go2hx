package stdgo._internal.encoding.json;
function testMarshalErrorAndReuseEncodeState(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _percent = (stdgo._internal.runtime.debug.Debug_setgcpercent.setGCPercent((-1 : stdgo.GoInt)) : stdgo.GoInt);
            {
                var _a0 = _percent;
                final __f__ = stdgo._internal.runtime.debug.Debug_setgcpercent.setGCPercent;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            {};
            var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460);
            _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
            {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_dummy))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    @:check2r _t.errorf(("Marshal(dummy) = %#q; want error" : stdgo.GoString), stdgo.Go.toInterface(_b));
                };
            };
            {};
            var _data = ({ a : ("a" : stdgo.GoString), i : (1 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661);
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_data))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Marshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_data)), stdgo.Go.toInterface(_err));
            };
            var _data2:stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 = ({} : stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661);
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661>)))) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("Unmarshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_data2)), stdgo.Go.toInterface(_err));
                };
            };
            if (stdgo.Go.toInterface(_data2) != stdgo.Go.toInterface(_data)) {
                @:check2r _t.errorf(("expect: %v, but get: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_data)), stdgo.Go.toInterface(stdgo.Go.asInterface(_data2)));
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
