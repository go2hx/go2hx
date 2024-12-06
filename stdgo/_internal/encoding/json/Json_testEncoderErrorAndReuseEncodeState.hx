package stdgo._internal.encoding.json;
function testEncoderErrorAndReuseEncodeState(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _percent = (stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt)) : stdgo.GoInt);
            {
                var _a0 = _percent;
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            {};
            var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487);
            var _dummy__pointer__ = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>);
            var _dummy__pointer__ = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>);
            var _dummy__pointer__ = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>);
            var _dummy__pointer__ = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>);
            _dummy.next = _dummy__pointer__;
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo.Go.asInterface(_buf__pointer__));
            {
                var _err = (_enc.encode(stdgo.Go.toInterface(_dummy)) : stdgo.Error);
                if (_err == null) {
                    _t.errorf(("Encode(dummy) == nil; want error" : stdgo.GoString));
                };
            };
            {};
            var _data = ({ a : ("a" : stdgo.GoString), i : (1 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733);
            {
                var _err = (_enc.encode(stdgo.Go.toInterface(_data)) : stdgo.Error);
                if (_err != null) {
                    _t.errorf(("Marshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err));
                };
            };
            var _data2:stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 = ({} : stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733);
            var _data2__pointer__ = (stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733>);
            var _data2__pointer__ = (stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733>);
            var _data2__pointer__ = (stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733>);
            var _data2__pointer__ = (stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733>);
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_buf.bytes(), stdgo.Go.toInterface(_data2__pointer__)) : stdgo.Error);
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
