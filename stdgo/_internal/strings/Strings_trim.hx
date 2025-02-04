package stdgo._internal.strings;
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        if (((_s == (stdgo.Go.str() : stdgo.GoString)) || (_cutset == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            return _s?.__copy__();
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return stdgo._internal.strings.Strings__trimleftbyte._trimLeftByte(stdgo._internal.strings.Strings__trimrightbyte._trimRightByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        {
            var __tmp__ = stdgo._internal.strings.Strings__makeasciiset._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.strings.Strings_t_asciiset.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return stdgo._internal.strings.Strings__trimleftascii._trimLeftASCII(stdgo._internal.strings.Strings__trimrightascii._trimRightASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>))?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>))?.__copy__();
            };
        };
        return stdgo._internal.strings.Strings__trimleftunicode._trimLeftUnicode(stdgo._internal.strings.Strings__trimrightunicode._trimRightUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
