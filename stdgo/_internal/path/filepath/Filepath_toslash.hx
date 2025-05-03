package stdgo._internal.path.filepath;
function toSlash(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L232"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L233"
            return _path?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L235"
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_path?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString), ("/" : stdgo.GoString))?.__copy__();
    }
