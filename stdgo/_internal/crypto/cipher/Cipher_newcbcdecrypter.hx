package stdgo._internal.crypto.cipher;
function newCBCDecrypter(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L121"
        if ((_iv.length) != (_b.blockSize())) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L122"
            throw stdgo.Go.toInterface(("cipher.NewCBCDecrypter: IV length must equal block size" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L124"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b) : stdgo._internal.crypto.cipher.Cipher_t_cbcdecable.T_cbcDecAble)) : stdgo._internal.crypto.cipher.Cipher_t_cbcdecable.T_cbcDecAble), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_t_cbcdecable.T_cbcDecAble), _1 : false };
            }, _cbc = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L125"
                return _cbc.newCBCDecrypter(_iv);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L127"
        return stdgo.Go.asInterface((({
            final e = stdgo._internal.crypto.cipher.Cipher__newcbc._newCBC(_b, _iv);
            ({ _b : e._b, _blockSize : e._blockSize, _iv : e._iv, _tmp : e._tmp } : stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter);
        })));
    }
