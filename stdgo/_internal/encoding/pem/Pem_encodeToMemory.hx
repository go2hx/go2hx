package stdgo._internal.encoding.pem;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
function encodeToMemory(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>):stdgo.Slice<stdgo.GoUInt8> {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _err = (stdgo._internal.encoding.pem.Pem_encode.encode(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), _b) : stdgo.Error);
            if (_err != null) {
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return @:check2 _buf.bytes();
    }
