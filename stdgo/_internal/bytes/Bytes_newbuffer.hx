package stdgo._internal.bytes;
function newBuffer(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> {
        return (stdgo.Go.setRef(({ _buf : _buf } : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    }
