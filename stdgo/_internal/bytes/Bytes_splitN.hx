package stdgo._internal.bytes;
function splitN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        return stdgo._internal.bytes.Bytes__genSplit._genSplit(_s, _sep, (0 : stdgo.GoInt), _n);
    }