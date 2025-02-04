package stdgo._internal.bytes;
function split(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        return stdgo._internal.bytes.Bytes__gensplit._genSplit(_s, _sep, (0 : stdgo.GoInt), (-1 : stdgo.GoInt));
    }
