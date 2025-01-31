package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        if (((_s == stdgo.Go.str()) || (_cutset == stdgo.Go.str()) : Bool)) {
            return _s?.__copy__();
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return stdgo._internal.strings.Strings__trimLeftByte._trimLeftByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        {
            var __tmp__ = stdgo._internal.strings.Strings__makeASCIISet._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.strings.Strings_T_asciiSet.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return stdgo._internal.strings.Strings__trimLeftASCII._trimLeftASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings_T_asciiSet.T_asciiSet>))?.__copy__();
            };
        };
        return stdgo._internal.strings.Strings__trimLeftUnicode._trimLeftUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
