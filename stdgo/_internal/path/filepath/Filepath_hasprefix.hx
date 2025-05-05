package stdgo._internal.path.filepath;
function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L31"
        return stdgo._internal.strings.Strings_hasprefix.hasPrefix(_p?.__copy__(), _prefix?.__copy__());
    }
