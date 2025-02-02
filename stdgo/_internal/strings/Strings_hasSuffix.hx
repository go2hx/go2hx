package stdgo._internal.strings;
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool {
        return (((_s.length) >= (_suffix.length) : Bool) && ((_s.__slice__(((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString) == _suffix) : Bool);
    }
