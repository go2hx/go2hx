package stdgo._internal.path.filepath;
function _cleanGlobPathWindows(_path:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } {
        var _prefixLen = (0 : stdgo.GoInt), _cleaned = ("" : stdgo.GoString);
        var _vollen = (stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_path?.__copy__()) : stdgo.GoInt);
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } = { _0 : (0 : stdgo.GoInt), _1 : ("." : stdgo.GoString) };
                _prefixLen = __tmp__._0;
                _cleaned = __tmp__._1;
                __tmp__;
            };
        } else if ((((_vollen + (1 : stdgo.GoInt) : stdgo.GoInt) == (_path.length)) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } = { _0 : (_vollen + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _path?.__copy__() };
                _prefixLen = __tmp__._0;
                _cleaned = __tmp__._1;
                __tmp__;
            };
        } else if (((_vollen == (_path.length)) && (_path.length == (2 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } = { _0 : _vollen, _1 : (_path + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() };
                _prefixLen = __tmp__._0;
                _cleaned = __tmp__._1;
                __tmp__;
            };
        } else {
            if ((_vollen >= (_path.length) : Bool)) {
                _vollen = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } = { _0 : _vollen, _1 : (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                _prefixLen = __tmp__._0;
                _cleaned = __tmp__._1;
                __tmp__;
            };
        };
    }
