package stdgo._internal.encoding.base64;
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L111"
        for (__0 => _p in stdgo._internal.encoding.base64.Base64__pairs._pairs) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L112"
            for (__1 => _tt in stdgo._internal.encoding.base64.Base64__encodingtests._encodingTests) {
                var _got = (_tt._enc.encodeToString((_p._decoded : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L114"
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._conv(_p._encoded?.__copy__())));
            };
        };
    }
