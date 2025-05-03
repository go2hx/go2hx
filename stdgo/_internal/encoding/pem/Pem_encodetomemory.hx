package stdgo._internal.encoding.pem;
function encodeToMemory(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>):stdgo.Slice<stdgo.GoUInt8> {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L312"
        {
            var _err = (stdgo._internal.encoding.pem.Pem_encode.encode(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _b) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L313"
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/pem/pem.go#L315"
        return _buf.bytes();
    }
