package stdgo._internal.crypto.cipher;
function _gcmInc32(_counterBlock:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        var _ctr = (_counterBlock.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L350"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(_ctr, (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_ctr) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
    }
