package stdgo._internal.encoding.base32;
function testWithoutPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _testcase in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
            var _defaultPadding = (@:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encodeToString((_testcase._decoded : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
            var _customPadding = (@:check2r (@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((-1 : stdgo.GoInt32)).encodeToString((_testcase._decoded : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
            var _expected = (stdgo._internal.strings.Strings_trimright.trimRight(_defaultPadding?.__copy__(), ("=" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_expected != (_customPadding)) {
                @:check2r _t.errorf(("Expected custom %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_customPadding));
            };
            if (_testcase._encoded != (_defaultPadding)) {
                @:check2r _t.errorf(("Expected %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(_testcase._encoded), stdgo.Go.toInterface(_defaultPadding));
            };
        };
    }
