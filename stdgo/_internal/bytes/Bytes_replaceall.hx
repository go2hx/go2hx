package stdgo._internal.bytes;
function replaceAll(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new_:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.bytes.Bytes_replace.replace(_s, _old, _new_, (-1 : stdgo.GoInt));
    }
