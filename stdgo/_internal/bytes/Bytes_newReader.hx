package stdgo._internal.bytes;
function newReader(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader> {
        return (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Reader.Reader(_b, (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.bytes.Bytes_Reader.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>);
    }
