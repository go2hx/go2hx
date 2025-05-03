package stdgo._internal.crypto.aes;
function testCipherEncrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L283"
        for (_i => _tt in stdgo._internal.crypto.aes.Aes__encrypttests._encryptTests) {
            var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_tt._key), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L285"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L286"
                _t.errorf(("NewCipher(%d bytes) = %s" : stdgo.GoString), stdgo.Go.toInterface((_tt._key.length)), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L287"
                continue;
            };
            var _out = (new stdgo.Slice<stdgo.GoUInt8>((_tt._in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L290"
            _c.encrypt(_out, _tt._in);
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L291"
            for (_j => _v in _out) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L292"
                if (_v != (_tt._out[(_j : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L293"
                    _t.errorf(("Cipher.Encrypt %d: out[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_tt._out[(_j : stdgo.GoInt)]));
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L294"
                    break;
                };
            };
        };
    }
