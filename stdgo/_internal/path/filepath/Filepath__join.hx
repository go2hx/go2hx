package stdgo._internal.path.filepath;
function _join(_elem:stdgo.Slice<stdgo.GoString>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L47"
        for (_i => _e in _elem) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L48"
            if (_e != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L49"
                return stdgo._internal.path.filepath.Filepath_clean.clean(stdgo._internal.strings.Strings_join.join((_elem.__slice__(_i) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__())?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path_unix.go#L52"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
