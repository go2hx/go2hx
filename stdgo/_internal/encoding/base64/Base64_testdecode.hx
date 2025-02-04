package stdgo._internal.encoding.base64;
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _p in stdgo._internal.encoding.base64.Base64__pairs._pairs) {
            for (__1 => _tt in stdgo._internal.encoding.base64.Base64__encodingtests._encodingTests) {
                var _encoded = (_tt._conv(_p._encoded?.__copy__())?.__copy__() : stdgo.GoString);
                var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r _tt._enc.decodedLen((_encoded.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = @:check2r _tt._enc.decode(_dbuf, (_encoded : stdgo.Slice<stdgo.GoUInt8>)), _count:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Decode(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Decode(%q) = length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_count), stdgo.Go.toInterface((_p._decoded.length)));
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(((_dbuf.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
                {
                    var __tmp__ = @:check2r _tt._enc.decodeString(_encoded?.__copy__());
                    _dbuf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("DecodeString(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("DecodeString(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface((_dbuf : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
            };
        };
    }
