package stdgo._internal.crypto.aes;
function testGCMAble(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock() : stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock)) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>)) : stdgo._internal.crypto.cipher.Cipher_block.Block);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b) : stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble)) : stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.fatalf(("testBlock does not implement the gcmAble interface" : stdgo.GoString));
            };
        };
        var __tmp__ = stdgo._internal.crypto.cipher.Cipher_newgcm.newGCM(_b), _aead:stdgo._internal.crypto.cipher.Cipher_aead.AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_aead) : stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface)) : stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface), _1 : false };
            }, __1 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.fatalf(("cipher.NewGCM did not use gcmAble interface" : stdgo.GoString));
            };
        };
    }
