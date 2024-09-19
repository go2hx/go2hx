package _internal.crypto_test;
function testRC4OutOfBoundsWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _cipherText = (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(238 : stdgo.GoUInt8), (41 : stdgo.GoUInt8), (187 : stdgo.GoUInt8), (114 : stdgo.GoUInt8), (151 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (107 : stdgo.GoUInt8), (13 : stdgo.GoUInt8), (178 : stdgo.GoUInt8), (63 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.crypto.rc4.Rc4_newCipher.newCipher((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _cipher:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_Cipher.Cipher> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        _internal.crypto_test.Crypto_test__test._test(_t, ("RC4" : stdgo.GoString), _cipherText, _cipher.xorkeyStream);
    }
