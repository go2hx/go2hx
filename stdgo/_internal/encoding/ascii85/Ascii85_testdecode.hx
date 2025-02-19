package stdgo._internal.encoding.ascii85;
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _p in stdgo._internal.encoding.ascii85.Ascii85__pairs._pairs) {
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) * (_p._encoded.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.ascii85.Ascii85_decode.decode(_dbuf, (_p._encoded : stdgo.Slice<stdgo.GoUInt8>), true), _ndst:stdgo.GoInt = __tmp__._0, _nsrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Decode(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
            stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Decode(%q) = nsrc %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_nsrc), stdgo.Go.toInterface((_p._encoded.length)));
            stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Decode(%q) = ndst %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_ndst), stdgo.Go.toInterface((_p._decoded.length)));
            stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(((_dbuf.__slice__((0 : stdgo.GoInt), _ndst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
        };
    }
