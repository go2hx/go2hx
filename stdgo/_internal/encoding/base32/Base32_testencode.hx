package stdgo._internal.encoding.base32;
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L55"
        for (__0 => _p in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
            var _got = (stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encodeToString((_p._decoded : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L57"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_p._encoded));
        };
    }
