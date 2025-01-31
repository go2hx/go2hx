package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> {
        return (stdgo.Go.setRef(({ _buf : (_s : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
    }
