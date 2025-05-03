package stdgo._internal.crypto.aes;
function benchmarkEncrypt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _tt = (stdgo._internal.crypto.aes.Aes__encrypttests._encryptTests[(0 : stdgo.GoInt)] : stdgo._internal.crypto.aes.Aes_crypttest.CryptTest);
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_tt._key), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L350"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L351"
            _b.fatal(stdgo.Go.toInterface(("NewCipher:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_tt._in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L354"
        _b.setBytes((_out.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L355"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L356"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L357"
                _c.encrypt(_out, _tt._in);
                _i++;
            };
        };
    }
