package _internal.crypto_test;
function _testBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString, _newCipher:(stdgo._internal.crypto.cipher.Cipher_Block.Block, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.cipher.Cipher_Stream.Stream):Void {
        var _cipherText = (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(86 : stdgo.GoUInt8), (216 : stdgo.GoUInt8), (121 : stdgo.GoUInt8), (231 : stdgo.GoUInt8), (219 : stdgo.GoUInt8), (191 : stdgo.GoUInt8), (26 : stdgo.GoUInt8), (12 : stdgo.GoUInt8), (176 : stdgo.GoUInt8), (117 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __0:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]), __1:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
var _key = __1, _iv = __0;
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newCipher.newCipher((_key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _block:stdgo._internal.crypto.cipher.Cipher_Block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _stream = (_newCipher(_block, (_iv.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.crypto.cipher.Cipher_Stream.Stream);
        _internal.crypto_test.Crypto_test__test._test(_t, _name?.__copy__(), _cipherText, _stream.xorkeyStream);
    }
