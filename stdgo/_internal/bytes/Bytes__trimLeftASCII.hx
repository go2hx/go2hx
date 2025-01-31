package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.Bytes_T_asciiSet.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!@:check2r _as._contains(_s[(0 : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
