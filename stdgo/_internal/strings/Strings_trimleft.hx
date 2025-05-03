package stdgo._internal.strings;
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L914"
        if (((_s == (stdgo.Go.str() : stdgo.GoString)) || (_cutset == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L915"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L917"
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L918"
            return stdgo._internal.strings.Strings__trimleftbyte._trimLeftByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L920"
        {
            var __tmp__ = stdgo._internal.strings.Strings__makeasciiset._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.strings.Strings_t_asciiset.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L921"
                return stdgo._internal.strings.Strings__trimleftascii._trimLeftASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>))?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L923"
        return stdgo._internal.strings.Strings__trimleftunicode._trimLeftUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
