package stdgo._internal.encoding.base32;
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L92"
        for (__0 => _p in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodedLen((_p._encoded.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding._decode(_dbuf, (_p._encoded : stdgo.Slice<stdgo.GoUInt8>)), _count:stdgo.GoInt = __tmp__._0, _end:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L95"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Decode(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L96"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Decode(%q) = length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_count), stdgo.Go.toInterface((_p._decoded.length)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L97"
            if (((_p._encoded.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L98"
                stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Decode(%q) = end %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_end), stdgo.Go.toInterface((_p._encoded[((_p._encoded.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (61 : stdgo.GoUInt8))));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L100"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(((_dbuf.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
            {
                var __tmp__ = stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodeString(_p._encoded?.__copy__());
                _dbuf = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L105"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("DecodeString(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L106"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("DecodeString(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface((_dbuf : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
        };
    }
