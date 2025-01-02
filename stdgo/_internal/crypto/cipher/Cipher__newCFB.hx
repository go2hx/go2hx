package stdgo._internal.crypto.cipher;
function _newCFB(_block:stdgo._internal.crypto.cipher.Cipher_Block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>, _decrypt:Bool):stdgo._internal.crypto.cipher.Cipher_Stream.Stream {
        var _blockSize = (_block.blockSize() : stdgo.GoInt);
        if ((_iv.length) != (_blockSize)) {
            throw stdgo.Go.toInterface(("cipher.newCFB: IV length must equal block size" : stdgo.GoString));
        };
        var _x = (stdgo.Go.setRef(({ _b : _block, _out : (new stdgo.Slice<stdgo.GoUInt8>((_blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _next : (new stdgo.Slice<stdgo.GoUInt8>((_blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _outUsed : _blockSize, _decrypt : _decrypt } : stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb>);
        (@:checkr _x ?? throw "null pointer dereference")._next.__copyTo__(_iv);
        return stdgo.Go.asInterface(_x);
    }
