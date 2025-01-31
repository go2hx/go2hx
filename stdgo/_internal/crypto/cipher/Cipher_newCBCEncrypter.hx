package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function newCBCEncrypter(_b:stdgo._internal.crypto.cipher.Cipher_Block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode {
        if ((_iv.length) != (_b.blockSize())) {
            throw stdgo.Go.toInterface(("cipher.NewCBCEncrypter: IV length must equal block size" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b) : stdgo._internal.crypto.cipher.Cipher_T_cbcEncAble.T_cbcEncAble)) : stdgo._internal.crypto.cipher.Cipher_T_cbcEncAble.T_cbcEncAble), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_T_cbcEncAble.T_cbcEncAble), _1 : false };
            }, _cbc = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _cbc.newCBCEncrypter(_iv);
            };
        };
        return stdgo.Go.asInterface((({
            final e = stdgo._internal.crypto.cipher.Cipher__newCBC._newCBC(_b, _iv);
            ({ _b : e._b, _blockSize : e._blockSize, _iv : e._iv, _tmp : e._tmp } : stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypter.T_cbcEncrypter);
        })));
    }
