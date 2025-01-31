package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> {
        var _i = (stdgo._internal.bytes.Bytes__indexFunc._indexFunc(_s, _f, false) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
    }
