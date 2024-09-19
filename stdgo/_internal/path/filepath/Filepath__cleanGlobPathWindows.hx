package stdgo._internal.path.filepath;
function _cleanGlobPathWindows(_path:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } {
        var _prefixLen = (0 : stdgo.GoInt), _cleaned = ("" : stdgo.GoString);
        var _vollen = (stdgo._internal.path.filepath.Filepath__volumeNameLen._volumeNameLen(_path?.__copy__()) : stdgo.GoInt);
        if (_path == (stdgo.Go.str())) {
            return { _0 : (0 : stdgo.GoInt), _1 : ("." : stdgo.GoString) };
        } else if ((((_vollen + (1 : stdgo.GoInt) : stdgo.GoInt) == (_path.length)) && stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            return { _0 : (_vollen + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _path?.__copy__() };
        } else if (((_vollen == (_path.length)) && (_path.length == (2 : stdgo.GoInt)) : Bool)) {
            return { _0 : _vollen, _1 : (_path + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() };
        } else {
            if ((_vollen >= (_path.length) : Bool)) {
                _vollen = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            return { _0 : _vollen, _1 : (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
        };
    }
