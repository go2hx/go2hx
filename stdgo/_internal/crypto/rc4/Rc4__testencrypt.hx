package stdgo._internal.crypto.rc4;
function _testEncrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _desc:stdgo.GoString, _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>, _src:stdgo.Slice<stdgo.GoUInt8>, _expect:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((_src.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _c.xORKeyStream(_dst, _src);
        for (_i => _v in _dst) {
            if (_v != (_expect[(_i : stdgo.GoInt)])) {
                @:check2r _t.fatalf(("%s: mismatch at byte %d:\nhave %x\nwant %x" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_expect));
            };
        };
    }
