package stdgo._internal.encoding.base64;
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L151"
        for (__0 => _p in stdgo._internal.encoding.base64.Base64__pairs._pairs) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L152"
            for (__1 => _tt in stdgo._internal.encoding.base64.Base64__encodingtests._encodingTests) {
                var _encoded = (_tt._conv(_p._encoded?.__copy__())?.__copy__() : stdgo.GoString);
                var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_tt._enc.decodedLen((_encoded.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = _tt._enc.decode(_dbuf, (_encoded : stdgo.Slice<stdgo.GoUInt8>)), _count:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L156"
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Decode(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L157"
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Decode(%q) = length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_count), stdgo.Go.toInterface((_p._decoded.length)));
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L158"
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(((_dbuf.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
                {
                    var __tmp__ = _tt._enc.decodeString(_encoded?.__copy__());
                    _dbuf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L161"
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("DecodeString(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L162"
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("DecodeString(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface((_dbuf : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
            };
        };
    }
