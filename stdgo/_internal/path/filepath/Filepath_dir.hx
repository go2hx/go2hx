package stdgo._internal.path.filepath;
function dir(_path:stdgo.GoString):stdgo.GoString {
        var _vol = (stdgo._internal.path.filepath.Filepath_volumename.volumeName(_path?.__copy__())?.__copy__() : stdgo.GoString);
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L665"
        while (((_i >= (_vol.length) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L666"
            _i--;
        };
        var _dir = (stdgo._internal.path.filepath.Filepath_clean.clean((_path.__slice__((_vol.length), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L669"
        if (((_dir == ("." : stdgo.GoString)) && ((_vol.length) > (2 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L671"
            return _vol?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L673"
        return (_vol + _dir?.__copy__() : stdgo.GoString)?.__copy__();
    }
