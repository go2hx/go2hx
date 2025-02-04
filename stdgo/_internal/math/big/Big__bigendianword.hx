package stdgo._internal.math.big;
function _bigEndianWord(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.math.big.Big_word.Word {
        if (false) {
            return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_buf) : stdgo._internal.math.big.Big_word.Word);
        };
        return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_buf) : stdgo._internal.math.big.Big_word.Word);
    }
