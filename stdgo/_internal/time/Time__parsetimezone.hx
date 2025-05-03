package stdgo._internal.time;
function _parseTimeZone(_value:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _length = (0 : stdgo.GoInt), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1412"
        if (((_value.length) < (3 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1413"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : false };
                _length = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1416"
        if ((((_value.length) >= (4 : stdgo.GoInt) : Bool) && ((((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("ChST" : stdgo.GoString)) || ((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("MeST" : stdgo.GoString)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1417"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (4 : stdgo.GoInt), _1 : true };
                _length = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1420"
        if ((_value.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) == (("GMT" : stdgo.GoString))) {
            _length = stdgo._internal.time.Time__parsegmt._parseGMT(_value?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1422"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _length, _1 : true };
                _length = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1425"
        if (((_value[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) || (_value[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
            _length = stdgo._internal.time.Time__parsesignedoffset._parseSignedOffset(_value?.__copy__());
            var _ok = (_length > (0 : stdgo.GoInt) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1428"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _length, _1 : _ok };
                _length = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _nUpper:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1432"
        {
            _nUpper = (0 : stdgo.GoInt);
            while ((_nUpper < (6 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1433"
                if ((_nUpper >= (_value.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1434"
                    break;
                };
//"file:///home/runner/.go/go1.21.3/src/time/format.go#L1436"
                {
                    var _c = (_value[(_nUpper : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < (65 : stdgo.GoUInt8) : Bool) || ((90 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1437"
                        break;
                    };
                };
                _nUpper++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1440"
        {
            final __value__ = _nUpper;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1442"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : false };
                    _length = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1444"
                if (_value[(4 : stdgo.GoInt)] == ((84 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1445"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (5 : stdgo.GoInt), _1 : true };
                        _length = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1449"
                if (((_value[(3 : stdgo.GoInt)] == (84 : stdgo.GoUInt8)) || ((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("WITA" : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1450"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (4 : stdgo.GoInt), _1 : true };
                        _length = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1453"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (3 : stdgo.GoInt), _1 : true };
                    _length = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1455"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : false };
            _length = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
