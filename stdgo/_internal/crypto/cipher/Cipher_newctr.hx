package stdgo._internal.crypto.cipher;
function newCTR(_block:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L40"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_block) : stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble)) : stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble), _1 : false };
            }, _ctr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L41"
                return _ctr.newCTR(_iv);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L43"
        if ((_iv.length) != (_block.blockSize())) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L44"
            throw stdgo.Go.toInterface(("cipher.NewCTR: IV length must equal block size" : stdgo.GoString));
        };
        var _bufSize = (512 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L47"
        if ((_bufSize < _block.blockSize() : Bool)) {
            _bufSize = _block.blockSize();
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L50"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _b : _block, _ctr : stdgo._internal.bytes.Bytes_clone.clone(_iv), _out : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _bufSize).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _outUsed : (0 : stdgo.GoInt) } : stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr>));
    }
