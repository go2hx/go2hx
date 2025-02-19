package stdgo._internal.encoding.base32;
function _testStringEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _expected:stdgo.GoString, _examples:stdgo.Slice<stdgo.GoString>):Void {
        for (__0 => _e in _examples) {
            var __tmp__ = @:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodeString(_e?.__copy__()), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Decode(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_err));
                continue;
            };
            {
                var _s = ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_expected)) {
                    @:check2r _t.errorf(("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
