package stdgo._internal.encoding.pem;
function encodeToMemory(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>):stdgo.Slice<stdgo.GoUInt8> {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _err = (stdgo._internal.encoding.pem.Pem_encode.encode(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), _b) : stdgo.Error);
            if (_err != null) {
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return _buf.bytes();
    }