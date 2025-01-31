package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _trimRightByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8> {
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == _c) : Bool)) {
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
