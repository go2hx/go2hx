package stdgo._internal.path.filepath;
function base(_path:stdgo.GoString):stdgo.GoString {
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return ("." : stdgo.GoString);
        };
        while ((((_path.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _path = (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _path = (_path.__slice__((stdgo._internal.path.filepath.Filepath_volumename.volumeName(_path?.__copy__()).length)) : stdgo.GoString)?.__copy__();
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
            _path = (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return ((47 : stdgo.GoInt32) : stdgo.GoString);
        };
        return _path?.__copy__();
    }
