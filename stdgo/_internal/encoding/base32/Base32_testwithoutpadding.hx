package stdgo._internal.encoding.base32;
function testWithoutPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L497"
        for (__0 => _testcase in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
            var _defaultPadding = (stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encodeToString((_testcase._decoded : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
            var _customPadding = ((@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((-1 : stdgo.GoInt32)).encodeToString((_testcase._decoded : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
            var _expected = (stdgo._internal.strings.Strings_trimright.trimRight(_defaultPadding?.__copy__(), ("=" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L502"
            if (_expected != (_customPadding)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L503"
                _t.errorf(("Expected custom %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_customPadding));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L505"
            if (_testcase._encoded != (_defaultPadding)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L506"
                _t.errorf(("Expected %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(_testcase._encoded), stdgo.Go.toInterface(_defaultPadding));
            };
        };
    }
