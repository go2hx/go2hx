package stdgo._internal.strings;
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L962"
        if (((_s == (stdgo.Go.str() : stdgo.GoString)) || (_cutset == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L963"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L965"
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L966"
            return stdgo._internal.strings.Strings__trimrightbyte._trimRightByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L968"
        {
            var __tmp__ = stdgo._internal.strings.Strings__makeasciiset._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.strings.Strings_t_asciiset.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L969"
                return stdgo._internal.strings.Strings__trimrightascii._trimRightASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>))?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L971"
        return stdgo._internal.strings.Strings__trimrightunicode._trimRightUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
