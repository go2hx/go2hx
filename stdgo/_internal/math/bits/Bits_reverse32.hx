package stdgo._internal.math.bits;
function reverse32(_x:stdgo.GoUInt32):stdgo.GoUInt32 {
        {};
        _x = (((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (1431655765u32 : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_x & (1431655765u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        _x = (((_x >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (858993459u32 : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_x & (858993459u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        _x = (((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (252645135u32 : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_x & (252645135u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        return stdgo._internal.math.bits.Bits_reversebytes32.reverseBytes32(_x);
    }
