package stdgo._internal.crypto.des;
function benchmarkTDESEncrypt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _tt = (stdgo._internal.crypto.des.Des__encrypttripledestests._encryptTripleDESTests[(0 : stdgo.GoInt)] : stdgo._internal.crypto.des.Des_crypttest.CryptTest);
        var __tmp__ = stdgo._internal.crypto.des.Des_newtripledescipher.newTripleDESCipher(_tt._key), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _b.fatal(stdgo.Go.toInterface(("NewCipher:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_tt._in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.setBytes((_out.length : stdgo.GoInt64));
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                _c.encrypt(_out, _tt._in);
                _i++;
            };
        };
    }
