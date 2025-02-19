package stdgo._internal.crypto.aes;
function testShortBlocks(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _bytes = function(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
            return (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_bytes((16 : stdgo.GoInt))), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: input not full block" : stdgo.GoString), function():Void {
            _c.encrypt(_bytes((1 : stdgo.GoInt)), _bytes((1 : stdgo.GoInt)));
        });
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: input not full block" : stdgo.GoString), function():Void {
            _c.decrypt(_bytes((1 : stdgo.GoInt)), _bytes((1 : stdgo.GoInt)));
        });
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: input not full block" : stdgo.GoString), function():Void {
            _c.encrypt(_bytes((100 : stdgo.GoInt)), _bytes((1 : stdgo.GoInt)));
        });
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: input not full block" : stdgo.GoString), function():Void {
            _c.decrypt(_bytes((100 : stdgo.GoInt)), _bytes((1 : stdgo.GoInt)));
        });
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: output not full block" : stdgo.GoString), function():Void {
            _c.encrypt(_bytes((1 : stdgo.GoInt)), _bytes((100 : stdgo.GoInt)));
        });
        stdgo._internal.crypto.aes.Aes__mustpanic._mustPanic(_t, ("crypto/aes: output not full block" : stdgo.GoString), function():Void {
            _c.decrypt(_bytes((1 : stdgo.GoInt)), _bytes((100 : stdgo.GoInt)));
        });
    }
