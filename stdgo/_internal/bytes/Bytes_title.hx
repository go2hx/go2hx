package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function title(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _prev = (32 : stdgo.GoInt32);
        return stdgo._internal.bytes.Bytes_map_.map_(function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (stdgo._internal.bytes.Bytes__isSeparator._isSeparator(_prev)) {
                _prev = _r;
                return stdgo._internal.unicode.Unicode_toTitle.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s);
    }
