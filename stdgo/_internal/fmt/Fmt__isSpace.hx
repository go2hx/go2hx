package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
function _isSpace(_r:stdgo.GoInt32):Bool {
        if ((_r >= (65536 : stdgo.GoInt32) : Bool)) {
            return false;
        };
        var _rx = (_r : stdgo.GoUInt16);
        for (__0 => _rng in stdgo._internal.fmt.Fmt__space._space) {
            if ((_rx < _rng[(0 : stdgo.GoInt)] : Bool)) {
                return false;
            };
            if ((_rx <= _rng[(1 : stdgo.GoInt)] : Bool)) {
                return true;
            };
        };
        return false;
    }
