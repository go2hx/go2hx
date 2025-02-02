package stdgo._internal.bytes;
function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        return stdgo._internal.internal.bytealg.Bytealg_compare.compare(_a, _b);
    }
