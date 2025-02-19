package stdgo._internal.encoding.ascii85;
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _p in stdgo._internal.encoding.ascii85.Ascii85__pairs._pairs) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.ascii85.Ascii85_maxencodedlen.maxEncodedLen((_p._decoded.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _n = (stdgo._internal.encoding.ascii85.Ascii85_encode.encode(_buf, (_p._decoded : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _buf = (_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface(stdgo._internal.encoding.ascii85.Ascii85__strip85._strip85((_buf : stdgo.GoString)?.__copy__())), stdgo.Go.toInterface(stdgo._internal.encoding.ascii85.Ascii85__strip85._strip85(_p._encoded?.__copy__())));
        };
    }
