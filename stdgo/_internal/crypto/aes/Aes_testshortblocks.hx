package stdgo._internal.crypto.aes;
function testShortBlocks(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _bytes = function(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L323"
            return (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_bytes((16 : stdgo.GoInt))), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L327"
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: input not full block" : stdgo.GoString), function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L327"
            _c.encrypt(_bytes((1 : stdgo.GoInt)), _bytes((1 : stdgo.GoInt)));
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L328"
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: input not full block" : stdgo.GoString), function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L328"
            _c.decrypt(_bytes((1 : stdgo.GoInt)), _bytes((1 : stdgo.GoInt)));
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L329"
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: input not full block" : stdgo.GoString), function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L329"
            _c.encrypt(_bytes((100 : stdgo.GoInt)), _bytes((1 : stdgo.GoInt)));
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L330"
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: input not full block" : stdgo.GoString), function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L330"
            _c.decrypt(_bytes((100 : stdgo.GoInt)), _bytes((1 : stdgo.GoInt)));
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L331"
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: output not full block" : stdgo.GoString), function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L331"
            _c.encrypt(_bytes((1 : stdgo.GoInt)), _bytes((100 : stdgo.GoInt)));
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L332"
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: output not full block" : stdgo.GoString), function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L332"
            _c.decrypt(_bytes((1 : stdgo.GoInt)), _bytes((100 : stdgo.GoInt)));
        });
    }
