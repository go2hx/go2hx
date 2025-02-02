package stdgo._internal.strings;
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        return (((_s.length) >= (_prefix.length) : Bool) && ((_s.__slice__((0 : stdgo.GoInt), (_prefix.length)) : stdgo.GoString) == _prefix) : Bool);
    }
