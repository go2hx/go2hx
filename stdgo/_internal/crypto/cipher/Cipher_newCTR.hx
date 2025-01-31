package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function newCTR(_block:stdgo._internal.crypto.cipher.Cipher_Block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_Stream.Stream {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_block) : stdgo._internal.crypto.cipher.Cipher_T_ctrAble.T_ctrAble)) : stdgo._internal.crypto.cipher.Cipher_T_ctrAble.T_ctrAble), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_T_ctrAble.T_ctrAble), _1 : false };
            }, _ctr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _ctr.newCTR(_iv);
            };
        };
        if ((_iv.length) != (_block.blockSize())) {
            throw stdgo.Go.toInterface(("cipher.NewCTR: IV length must equal block size" : stdgo.GoString));
        };
        var _bufSize = (512 : stdgo.GoInt);
        if ((_bufSize < _block.blockSize() : Bool)) {
            _bufSize = _block.blockSize();
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _b : _block, _ctr : stdgo._internal.bytes.Bytes_clone.clone(_iv), _out : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _bufSize).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _outUsed : (0 : stdgo.GoInt) } : stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr>));
    }
