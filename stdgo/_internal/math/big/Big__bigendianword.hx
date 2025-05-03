package stdgo._internal.math.big;
function _bigEndianWord(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.math.big.Big_word.Word {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L1336"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L1337"
            return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_buf) : stdgo._internal.math.big.Big_word.Word);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L1339"
        return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_buf) : stdgo._internal.math.big.Big_word.Word);
    }
