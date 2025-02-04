package stdgo._internal.path.filepath;
function dir(_path:stdgo.GoString):stdgo.GoString {
        var _vol = (stdgo._internal.path.filepath.Filepath_volumename.volumeName(_path?.__copy__())?.__copy__() : stdgo.GoString);
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (_vol.length) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        var _dir = (stdgo._internal.path.filepath.Filepath_clean.clean((_path.__slice__((_vol.length), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        if (((_dir == ("." : stdgo.GoString)) && ((_vol.length) > (2 : stdgo.GoInt) : Bool) : Bool)) {
            return _vol?.__copy__();
        };
        return (_vol + _dir?.__copy__() : stdgo.GoString)?.__copy__();
    }
