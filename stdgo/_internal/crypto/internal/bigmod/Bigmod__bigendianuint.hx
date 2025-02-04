package stdgo._internal.crypto.internal.bigmod;
function _bigEndianUint(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt {
        if (false) {
            return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_buf) : stdgo.GoUInt);
        };
        return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_buf) : stdgo.GoUInt);
    }
