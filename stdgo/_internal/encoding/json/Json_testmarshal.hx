package stdgo._internal.encoding.json;
function testMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__allvalue._allValue))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L987"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L988"
            _t.fatalf(("Marshal allValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L990"
        if ((_b : stdgo.GoString) != (stdgo._internal.encoding.json.Json__allvaluecompact._allValueCompact)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L991"
            _t.errorf(("Marshal allValueCompact" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L992"
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, (stdgo._internal.encoding.json.Json__allvaluecompact._allValueCompact : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L993"
            return;
        };
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__pallvalue._pallValue)));
            _b = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L997"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L998"
            _t.fatalf(("Marshal pallValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1000"
        if ((_b : stdgo.GoString) != (stdgo._internal.encoding.json.Json__pallvaluecompact._pallValueCompact)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1001"
            _t.errorf(("Marshal pallValueCompact" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1002"
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, (stdgo._internal.encoding.json.Json__pallvaluecompact._pallValueCompact : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1003"
            return;
        };
    }
