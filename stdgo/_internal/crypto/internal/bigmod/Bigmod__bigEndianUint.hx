package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _bigEndianUint(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt {
        if (false) {
            return (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64(_buf) : stdgo.GoUInt);
        };
        return (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32(_buf) : stdgo.GoUInt);
    }
