package stdgo._internal.path.filepath;
function fromSlash(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L242"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L243"
            return _path?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L245"
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_path?.__copy__(), ("/" : stdgo.GoString), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__();
    }
