package stdgo._internal.encoding.base32;
function _testStringEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _expected:stdgo.GoString, _examples:stdgo.Slice<stdgo.GoString>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L380"
        for (__0 => _e in _examples) {
            var __tmp__ = stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodeString(_e?.__copy__()), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L382"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L383"
                _t.errorf(("Decode(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L384"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L386"
            {
                var _s = ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_expected)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L387"
                    _t.errorf(("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
