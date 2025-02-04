package stdgo._internal.path.filepath;
function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        return stdgo._internal.strings.Strings_hasprefix.hasPrefix(_p?.__copy__(), _prefix?.__copy__());
    }
