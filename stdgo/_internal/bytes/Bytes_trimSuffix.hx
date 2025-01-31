package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function trimSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (stdgo._internal.bytes.Bytes_hasSuffix.hasSuffix(_s, _suffix)) {
            return (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
