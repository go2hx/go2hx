package stdgo._internal.path.filepath;
function _splitList(_path:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L35"
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L36"
            return (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L38"
        return stdgo._internal.strings.Strings_split.split(_path?.__copy__(), ((58 : stdgo.GoInt32) : stdgo.GoString));
    }
