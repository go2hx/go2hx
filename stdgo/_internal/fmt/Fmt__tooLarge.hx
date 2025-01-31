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
function _tooLarge(_x:stdgo.GoInt):Bool {
        {};
        return ((_x > (1000000 : stdgo.GoInt) : Bool) || (_x < (-1000000 : stdgo.GoInt) : Bool) : Bool);
    }
