package stdgo._internal.path.filepath;
function isAbs(_path:stdgo.GoString):Bool {
        return stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_path?.__copy__(), ("/" : stdgo.GoString));
    }