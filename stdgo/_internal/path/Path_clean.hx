package stdgo._internal.path;
function clean(_path:stdgo.GoString):stdgo.GoString {
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return ("." : stdgo.GoString);
        };
        var _rooted = (_path[(0 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool);
        var _n = (_path.length : stdgo.GoInt);
        var _out = ({ _s : _path?.__copy__() } : stdgo._internal.path.Path_t_lazybuf.T_lazybuf);
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
            if (_path[(_r : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && ((((_r + (1 : stdgo.GoInt) : stdgo.GoInt) == _n) || (_path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) && _path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && ((((_r + (2 : stdgo.GoInt) : stdgo.GoInt) == _n) || (_path[(_r + (2 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                _r = (_r + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                if ((_out._w > _dotdot : Bool)) {
                    _out._w--;
                    while (((_out._w > _dotdot : Bool) && (@:check2 _out._index(_out._w) != (47 : stdgo.GoUInt8)) : Bool)) {
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
                while (((_r < _n : Bool) && (_path[(_r : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                    @:check2 _out._append(_path[(_r : stdgo.GoInt)]);
                    _r++;
                };
            };
        };
        if (_out._w == ((0 : stdgo.GoInt))) {
            return ("." : stdgo.GoString);
        };
        return @:check2 _out._string()?.__copy__();
    }
