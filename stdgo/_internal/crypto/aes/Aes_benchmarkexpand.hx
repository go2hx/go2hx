package stdgo._internal.crypto.aes;
function benchmarkExpand(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _tt = (stdgo._internal.crypto.aes.Aes__encrypttests._encryptTests[(0 : stdgo.GoInt)] : stdgo._internal.crypto.aes.Aes_crypttest.CryptTest);
        var _n = ((_tt._key.length) + (28 : stdgo.GoInt) : stdgo.GoInt);
        var _c = (stdgo.Go.setRef((new stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>)) : stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher)) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.crypto.aes.Aes__expandkey._expandKey(_tt._key, (@:checkr _c ?? throw "null pointer dereference")._enc, (@:checkr _c ?? throw "null pointer dereference")._dec);
                _i++;
            };
        };
    }
