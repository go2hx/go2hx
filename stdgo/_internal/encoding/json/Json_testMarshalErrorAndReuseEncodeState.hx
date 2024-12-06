package stdgo._internal.encoding.json;
function testMarshalErrorAndReuseEncodeState(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _percent = (stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt)) : stdgo.GoInt);
            {
                var _a0 = _percent;
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            {};
            var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460);
            var _dummy__pointer__ = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
            var _dummy__pointer__ = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
            var _dummy__pointer__ = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
            var _dummy__pointer__ = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
            _dummy.next = _dummy__pointer__;
            {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_dummy)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Marshal(dummy) = %#q; want error" : stdgo.GoString), stdgo.Go.toInterface(_b));
                };
            };
            {};
            var _data = ({ a : ("a" : stdgo.GoString), i : (1 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661);
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_data)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Marshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err));
            };
            var _data2:stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 = ({} : stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661);
            var _data2__pointer__ = (stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661>);
            var _data2__pointer__ = (stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661>);
            var _data2__pointer__ = (stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661>);
            var _data2__pointer__ = (stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661>);
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(_data2__pointer__)) : stdgo.Error);
                if (_err != null) {
                    _t.errorf(("Unmarshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(_data2), stdgo.Go.toInterface(_err));
                };
            };
            if (stdgo.Go.toInterface(_data2) != stdgo.Go.toInterface(_data)) {
                _t.errorf(("expect: %v, but get: %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_data2));
            };
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
