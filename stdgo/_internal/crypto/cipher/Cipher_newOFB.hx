package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function newOFB(_b:stdgo._internal.crypto.cipher.Cipher_Block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_Stream.Stream {
        var _blockSize = (_b.blockSize() : stdgo.GoInt);
        if ((_iv.length) != (_blockSize)) {
            throw stdgo.Go.toInterface(("cipher.NewOFB: IV length must equal block size" : stdgo.GoString));
        };
        var _bufSize = (512 : stdgo.GoInt);
        if ((_bufSize < _blockSize : Bool)) {
            _bufSize = _blockSize;
        };
        var _x = (stdgo.Go.setRef(({ _b : _b, _cipher : (new stdgo.Slice<stdgo.GoUInt8>((_blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _out : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _bufSize).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _outUsed : (0 : stdgo.GoInt) } : stdgo._internal.crypto.cipher.Cipher_T_ofb.T_ofb)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ofb.T_ofb>);
        (@:checkr _x ?? throw "null pointer dereference")._cipher.__copyTo__(_iv);
        return stdgo.Go.asInterface(_x);
    }
