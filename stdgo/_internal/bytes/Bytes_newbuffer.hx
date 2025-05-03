package stdgo._internal.bytes;
function newBuffer(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L472"
        return (stdgo.Go.setRef(({ _buf : _buf } : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    }
