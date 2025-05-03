package stdgo._internal.path;
function clean(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L71"
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/path/path.go#L72"
            return ("." : stdgo.GoString);
        };
        var _rooted = (_path[(0 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool);
        var _n = (_path.length : stdgo.GoInt);
        var _out = ({ _s : _path?.__copy__() } : stdgo._internal.path.Path_t_lazybuf.T_lazybuf);
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _dotdot = __1, _r = __0;
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L85"
        if (_rooted) {
            //"file:///home/runner/.go/go1.21.3/src/path/path.go#L86"
            _out._append((47 : stdgo.GoUInt8));
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (1 : stdgo.GoInt);
                _r = @:binopAssign __tmp__0;
                _dotdot = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L90"
        while ((_r < _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/path.go#L91"
            if (_path[(_r : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/path/path.go#L94"
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && ((((_r + (1 : stdgo.GoInt) : stdgo.GoInt) == _n) || (_path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/path/path.go#L97"
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) && _path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && ((((_r + (2 : stdgo.GoInt) : stdgo.GoInt) == _n) || (_path[(_r + (2 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                _r = (_r + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/path/path.go#L101"
                if ((_out._w > _dotdot : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/path.go#L104"
                    _out._w--;
                    //"file:///home/runner/.go/go1.21.3/src/path/path.go#L105"
                    while (((_out._w > _dotdot : Bool) && (_out._index(_out._w) != (47 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L106"
                        _out._w--;
                    };
                } else if (!_rooted) {
                    //"file:///home/runner/.go/go1.21.3/src/path/path.go#L110"
                    if ((_out._w > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L111"
                        _out._append((47 : stdgo.GoUInt8));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/path.go#L113"
                    _out._append((46 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/path/path.go#L114"
                    _out._append((46 : stdgo.GoUInt8));
                    _dotdot = _out._w;
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/path/path.go#L120"
                if (((_rooted && _out._w != ((1 : stdgo.GoInt)) : Bool) || (!_rooted && _out._w != ((0 : stdgo.GoInt)) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/path.go#L121"
                    _out._append((47 : stdgo.GoUInt8));
                };
                //"file:///home/runner/.go/go1.21.3/src/path/path.go#L124"
                while (((_r < _n : Bool) && (_path[(_r : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/path.go#L125"
                    _out._append(_path[(_r : stdgo.GoInt)]);
                    _r++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L131"
        if (_out._w == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/path/path.go#L132"
            return ("." : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L135"
        return _out._string()?.__copy__();
    }
