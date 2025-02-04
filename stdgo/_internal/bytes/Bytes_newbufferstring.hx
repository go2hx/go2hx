package stdgo._internal.bytes;
function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> {
        return (stdgo.Go.setRef(({ _buf : (_s : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    }
