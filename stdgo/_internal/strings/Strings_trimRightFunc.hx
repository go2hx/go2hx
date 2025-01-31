package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function trimRightFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoString {
        var _i = (stdgo._internal.strings.Strings__lastIndexFunc._lastIndexFunc(_s?.__copy__(), _f, false) : stdgo.GoInt);
        if (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            _i = (_i + (_wid) : stdgo.GoInt);
        } else {
            _i++;
        };
        return (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
    }
