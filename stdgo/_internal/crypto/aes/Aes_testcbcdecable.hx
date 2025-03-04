package stdgo._internal.crypto.aes;
function testCBCDecAble(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock() : stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock)) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>)) : stdgo._internal.crypto.cipher.Cipher_block.Block);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b) : stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble)) : stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.fatalf(("testBlock does not implement the cbcDecAble interface" : stdgo.GoString));
            };
        };
        var _bm = (stdgo._internal.crypto.cipher.Cipher_newcbcdecrypter.newCBCDecrypter(_b, (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_bm) : stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface)) : stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface), _1 : false };
            }, __1 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.fatalf(("cipher.NewCBCDecrypter did not use cbcDecAble interface" : stdgo.GoString));
            };
        };
    }
