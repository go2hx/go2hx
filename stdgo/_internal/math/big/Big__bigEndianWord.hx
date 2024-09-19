package stdgo._internal.math.big;
function _bigEndianWord(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.math.big.Big_Word.Word {
        if (false) {
            return (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64(_buf) : stdgo._internal.math.big.Big_Word.Word);
        };
        return (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32(_buf) : stdgo._internal.math.big.Big_Word.Word);
    }
