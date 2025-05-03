package stdgo._internal.crypto.internal.bigmod;
function _bigEndianUint(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L184"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L185"
            return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_buf) : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L187"
        return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_buf) : stdgo.GoUInt);
    }
