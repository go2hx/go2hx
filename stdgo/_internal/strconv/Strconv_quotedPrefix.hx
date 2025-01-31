package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function quotedPrefix(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.strconv.Strconv__unquote._unquote(_s?.__copy__(), false), _out:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return { _0 : _out?.__copy__(), _1 : _err };
    }
