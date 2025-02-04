package stdgo._internal.path.filepath;
function clean(_path:stdgo.GoString):stdgo.GoString {
        var _originalPath = (_path?.__copy__() : stdgo.GoString);
        var _volLen = (stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_path?.__copy__()) : stdgo.GoInt);
        _path = (_path.__slice__(_volLen) : stdgo.GoString)?.__copy__();
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            if ((((_volLen > (1 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_originalPath[(0 : stdgo.GoInt)]) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_originalPath[(1 : stdgo.GoInt)]) : Bool)) {
                return stdgo._internal.path.filepath.Filepath_fromslash.fromSlash(_originalPath?.__copy__())?.__copy__();
            };
            return (_originalPath + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var _rooted = (stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(0 : stdgo.GoInt)]) : Bool);
        var _n = (_path.length : stdgo.GoInt);
        var _out = ({ _path : _path?.__copy__(), _volAndPath : _originalPath?.__copy__(), _volLen : _volLen } : stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf);
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _dotdot = __1, _r = __0;
        if (_rooted) {
            @:check2 _out._append((47 : stdgo.GoUInt8));
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (1 : stdgo.GoInt);
                _r = __tmp__0;
                _dotdot = __tmp__1;
            };
        };
        while ((_r < _n : Bool)) {
            if (stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_r : stdgo.GoInt)])) {
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && ((((_r + (1 : stdgo.GoInt) : stdgo.GoInt) == _n) || stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) : Bool)) {
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) && _path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && ((((_r + (2 : stdgo.GoInt) : stdgo.GoInt) == _n) || stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_r + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) : Bool)) {
                _r = (_r + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                if ((_out._w > _dotdot : Bool)) {
                    _out._w--;
                    while (((_out._w > _dotdot : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(@:check2 _out._index(_out._w)) : Bool)) {
                        _out._w--;
                    };
                } else if (!_rooted) {
                    if ((_out._w > (0 : stdgo.GoInt) : Bool)) {
                        @:check2 _out._append((47 : stdgo.GoUInt8));
                    };
                    @:check2 _out._append((46 : stdgo.GoUInt8));
                    @:check2 _out._append((46 : stdgo.GoUInt8));
                    _dotdot = _out._w;
                };
            } else {
                if (((_rooted && _out._w != ((1 : stdgo.GoInt)) : Bool) || (!_rooted && _out._w != ((0 : stdgo.GoInt)) : Bool) : Bool)) {
                    @:check2 _out._append((47 : stdgo.GoUInt8));
                };
                while (((_r < _n : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_r : stdgo.GoInt)]) : Bool)) {
                    @:check2 _out._append(_path[(_r : stdgo.GoInt)]);
                    _r++;
                };
            };
        };
        if (_out._w == ((0 : stdgo.GoInt))) {
            @:check2 _out._append((46 : stdgo.GoUInt8));
        };
        if (((false && _out._volLen == ((0 : stdgo.GoInt)) : Bool) && (_out._buf != null) : Bool)) {
            for (__0 => _c in _out._buf) {
                if (stdgo._internal.os.Os_ispathseparator.isPathSeparator(_c)) {
                    break;
                };
                if (_c == ((58 : stdgo.GoUInt8))) {
                    @:check2 _out._prepend((46 : stdgo.GoUInt8), (47 : stdgo.GoUInt8));
                    break;
                };
            };
        };
        return stdgo._internal.path.filepath.Filepath_fromslash.fromSlash(@:check2 _out._string()?.__copy__())?.__copy__();
    }
