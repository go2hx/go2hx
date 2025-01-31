package stdgo._internal.crypto.md5;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
function _consumeUint64(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; } {
        return { _0 : (_b.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64((_b.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) };
    }
