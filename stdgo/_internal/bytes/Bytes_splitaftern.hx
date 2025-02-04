package stdgo._internal.bytes;
function splitAfterN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        return stdgo._internal.bytes.Bytes__gensplit._genSplit(_s, _sep, (_sep.length), _n);
    }
