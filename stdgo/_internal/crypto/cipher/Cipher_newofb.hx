package stdgo._internal.crypto.cipher;
function newOFB(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        var _blockSize = (_b.blockSize() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ofb.go#L26"
        if ((_iv.length) != (_blockSize)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ofb.go#L27"
            throw stdgo.Go.toInterface(("cipher.NewOFB: IV length must equal block size" : stdgo.GoString));
        };
        var _bufSize = (512 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ofb.go#L30"
        if ((_bufSize < _blockSize : Bool)) {
            _bufSize = _blockSize;
        };
        var _x = (stdgo.Go.setRef(({ _b : _b, _cipher : (new stdgo.Slice<stdgo.GoUInt8>((_blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _out : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _bufSize).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _outUsed : (0 : stdgo.GoInt) } : stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ofb.go#L40"
        (@:checkr _x ?? throw "null pointer dereference")._cipher.__copyTo__(_iv);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ofb.go#L41"
        return stdgo.Go.asInterface(_x);
    }
