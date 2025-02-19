package stdgo._internal.crypto.rc4;
function testBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(stdgo._internal.crypto.rc4.Rc4__golden._golden[(0 : stdgo.GoInt)]._key), _c1a:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(stdgo._internal.crypto.rc4.Rc4__golden._golden[(1 : stdgo.GoInt)]._key), _c1b:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        var _data1 = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _data1) {
            @:check2r _c1a.xORKeyStream((_data1.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_data1.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            @:check2r _c1b.xORKeyStream((_data1.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_data1.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        var __tmp__ = stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(stdgo._internal.crypto.rc4.Rc4__golden._golden[(0 : stdgo.GoInt)]._key), _c2a:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(stdgo._internal.crypto.rc4.Rc4__golden._golden[(1 : stdgo.GoInt)]._key), _c2b:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = __tmp__._0, __3:stdgo.Error = __tmp__._1;
        var _data2 = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _c2a.xORKeyStream(_data2, _data2);
        @:check2r _c2b.xORKeyStream(_data2, _data2);
        if (!stdgo._internal.bytes.Bytes_equal.equal(_data1, _data2)) {
            @:check2r _t.fatalf(("bad block" : stdgo.GoString));
        };
    }
