package stdgo._internal.crypto.aes;
function _rotw(_w:stdgo.GoUInt32):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/block.go#L144"
        return ((_w << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_w >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
