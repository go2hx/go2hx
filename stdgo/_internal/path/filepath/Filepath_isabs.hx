package stdgo._internal.path.filepath;
function isAbs(_path:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L17"
        return stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("/" : stdgo.GoString));
    }
