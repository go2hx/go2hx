package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function newBuffer(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> {
        return (stdgo.Go.setRef(({ _buf : _buf } : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
    }
