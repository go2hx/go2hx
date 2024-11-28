package stdgo._internal.path.filepath;
function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _dir = ("" : stdgo.GoString), _file = ("" : stdgo.GoString);
        var _vol = (stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_path?.__copy__())?.__copy__() : stdgo.GoString);
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (_vol.length) : Bool) && !stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        return { _0 : _dir = (_path.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : _file = (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
    }
