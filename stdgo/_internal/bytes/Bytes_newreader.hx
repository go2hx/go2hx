package stdgo._internal.bytes;
function newReader(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/reader.go#L159"
        return (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader(_b, (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.bytes.Bytes_reader.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
    }
