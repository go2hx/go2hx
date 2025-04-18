package stdgo._internal.crypto.aes;
function testCipherEncrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _tt in stdgo._internal.crypto.aes.Aes__encrypttests._encryptTests) {
            var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_tt._key), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("NewCipher(%d bytes) = %s" : stdgo.GoString), stdgo.Go.toInterface((_tt._key.length)), stdgo.Go.toInterface(_err));
                continue;
            };
            var _out = (new stdgo.Slice<stdgo.GoUInt8>((_tt._in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _c.encrypt(_out, _tt._in);
            for (_j => _v in _out) {
                if (_v != (_tt._out[(_j : stdgo.GoInt)])) {
                    @:check2r _t.errorf(("Cipher.Encrypt %d: out[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_tt._out[(_j : stdgo.GoInt)]));
                    break;
                };
            };
        };
    }
