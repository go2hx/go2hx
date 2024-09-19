package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _tzsetOffset(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _offset = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        var _neg = (false : Bool);
        if (_s[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _neg = true;
        };
        var _hours:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetNum._tzsetNum(_s?.__copy__(), (0 : stdgo.GoInt), (168 : stdgo.GoInt));
            _hours = __tmp__._0;
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        var _off = (_hours * (3600 : stdgo.GoInt) : stdgo.GoInt);
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            if (_neg) {
                _off = -_off;
            };
            return { _0 : _off, _1 : _s?.__copy__(), _2 : true };
        };
        var _mins:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetNum._tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (59 : stdgo.GoInt));
            _mins = __tmp__._0;
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        _off = (_off + ((_mins * (60 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            if (_neg) {
                _off = -_off;
            };
            return { _0 : _off, _1 : _s?.__copy__(), _2 : true };
        };
        var _secs:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetNum._tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (59 : stdgo.GoInt));
            _secs = __tmp__._0;
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        _off = (_off + (_secs) : stdgo.GoInt);
        if (_neg) {
            _off = -_off;
        };
        return { _0 : _off, _1 : _s?.__copy__(), _2 : true };
    }
