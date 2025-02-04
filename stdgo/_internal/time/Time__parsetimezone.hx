package stdgo._internal.time;
function _parseTimeZone(_value:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _length = (0 : stdgo.GoInt), _ok = false;
        if (((_value.length) < (3 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : false };
                _length = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        if ((((_value.length) >= (4 : stdgo.GoInt) : Bool) && ((((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("ChST" : stdgo.GoString)) || ((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("MeST" : stdgo.GoString)) : Bool)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (4 : stdgo.GoInt), _1 : true };
                _length = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        if ((_value.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) == (("GMT" : stdgo.GoString))) {
            _length = stdgo._internal.time.Time__parsegmt._parseGMT(_value?.__copy__());
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _length, _1 : true };
                _length = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        if (((_value[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) || (_value[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
            _length = stdgo._internal.time.Time__parsesignedoffset._parseSignedOffset(_value?.__copy__());
            var _ok = (_length > (0 : stdgo.GoInt) : Bool);
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _length, _1 : _ok };
                _length = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _nUpper:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _nUpper = (0 : stdgo.GoInt);
            while ((_nUpper < (6 : stdgo.GoInt) : Bool)) {
                if ((_nUpper >= (_value.length) : Bool)) {
                    break;
                };
{
                    var _c = (_value[(_nUpper : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < (65 : stdgo.GoUInt8) : Bool) || ((90 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                        break;
                    };
                };
                _nUpper++;
            };
        };
        {
            final __value__ = _nUpper;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : false };
                    _length = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                if (_value[(4 : stdgo.GoInt)] == ((84 : stdgo.GoUInt8))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (5 : stdgo.GoInt), _1 : true };
                        _length = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                if (((_value[(3 : stdgo.GoInt)] == (84 : stdgo.GoUInt8)) || ((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("WITA" : stdgo.GoString)) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (4 : stdgo.GoInt), _1 : true };
                        _length = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (3 : stdgo.GoInt), _1 : true };
                    _length = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : false };
            _length = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
