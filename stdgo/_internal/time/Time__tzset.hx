package stdgo._internal.time;
function _tzset(_s:stdgo.GoString, _lastTxSec:stdgo.GoInt64, _sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } {
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt), _start = (0 : stdgo.GoInt64), _end = (0 : stdgo.GoInt64), _isDST = false, _ok = false;
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt);
var _dstOffset = __3, _stdOffset = __2, _dstName = __1, _stdName = __0;
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetname._tzsetName(_s?.__copy__());
            _stdName = @:tmpset0 __tmp__._0?.__copy__();
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        if (_ok) {
            {
                var __tmp__ = stdgo._internal.time.Time__tzsetoffset._tzsetOffset(_s?.__copy__());
                _stdOffset = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok = @:tmpset0 __tmp__._2;
            };
        };
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        _stdOffset = -_stdOffset;
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] == (44 : stdgo.GoUInt8)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : _lastTxSec, _3 : (9223372036854775807i64 : stdgo.GoInt64), _4 : false, _5 : true };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetname._tzsetName(_s?.__copy__());
            _dstName = @:tmpset0 __tmp__._0?.__copy__();
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        if (_ok) {
            if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] == (44 : stdgo.GoUInt8)) : Bool)) {
                _dstOffset = (_stdOffset + (3600 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                {
                    var __tmp__ = stdgo._internal.time.Time__tzsetoffset._tzsetOffset(_s?.__copy__());
                    _dstOffset = @:tmpset0 __tmp__._0;
                    _s = @:tmpset0 __tmp__._1?.__copy__();
                    _ok = @:tmpset0 __tmp__._2;
                };
                _dstOffset = -_dstOffset;
            };
        };
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            _s = (",M3.2.0,M11.1.0" : stdgo.GoString);
        };
        if (((_s[(0 : stdgo.GoInt)] != (44 : stdgo.GoUInt8)) && (_s[(0 : stdgo.GoInt)] != (59 : stdgo.GoUInt8)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var __0:stdgo._internal.time.Time_t_rule.T_rule = ({} : stdgo._internal.time.Time_t_rule.T_rule), __1:stdgo._internal.time.Time_t_rule.T_rule = ({} : stdgo._internal.time.Time_t_rule.T_rule);
var _endRule = __1, _startRule = __0;
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetrule._tzsetRule(_s?.__copy__());
            _startRule = @:tmpset0 __tmp__._0?.__copy__();
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        if (((!_ok || (_s.length) == ((0 : stdgo.GoInt)) : Bool) || (_s[(0 : stdgo.GoInt)] != (44 : stdgo.GoUInt8)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetrule._tzsetRule(_s?.__copy__());
            _endRule = @:tmpset0 __tmp__._0?.__copy__();
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        if ((!_ok || ((_s.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.time.Time__absdate._absDate((((_sec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) + (9223371966579724800i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64), false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time_month.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        var _ysec = (((_yday * (86400 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) + (_sec % (86400i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _d = (stdgo._internal.time.Time__dayssinceepoch._daysSinceEpoch(_year) : stdgo.GoUInt64);
        var _abs = ((_d * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        _abs = (_abs + ((-9223372028715321600i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        var _startSec = (stdgo._internal.time.Time__tzruletime._tzruleTime(_year, _startRule?.__copy__(), _stdOffset) : stdgo.GoInt64);
        var _endSec = (stdgo._internal.time.Time__tzruletime._tzruleTime(_year, _endRule?.__copy__(), _dstOffset) : stdgo.GoInt64);
        var __0 = (true : Bool), __1 = (false : Bool);
var _stdIsDST = __1, _dstIsDST = __0;
        if ((_endSec < _startSec : Bool)) {
            {
                final __tmp__0 = _endSec;
                final __tmp__1 = _startSec;
                _startSec = __tmp__0;
                _endSec = __tmp__1;
            };
            {
                final __tmp__0 = _dstName?.__copy__();
                final __tmp__1 = _stdName?.__copy__();
                _stdName = __tmp__0;
                _dstName = __tmp__1;
            };
            {
                final __tmp__0 = _dstOffset;
                final __tmp__1 = _stdOffset;
                _stdOffset = __tmp__0;
                _dstOffset = __tmp__1;
            };
            {
                final __tmp__0 = _dstIsDST;
                final __tmp__1 = _stdIsDST;
                _stdIsDST = __tmp__0;
                _dstIsDST = __tmp__1;
            };
        };
        if ((_ysec < _startSec : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : _abs, _3 : (_startSec + _abs : stdgo.GoInt64), _4 : _stdIsDST, _5 : true };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        } else if ((_ysec >= _endSec : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : (_endSec + _abs : stdgo.GoInt64), _3 : (_abs + (31536000i64 : stdgo.GoInt64) : stdgo.GoInt64), _4 : _stdIsDST, _5 : true };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = { _0 : _dstName?.__copy__(), _1 : _dstOffset, _2 : (_startSec + _abs : stdgo.GoInt64), _3 : (_endSec + _abs : stdgo.GoInt64), _4 : _dstIsDST, _5 : true };
                _name = __tmp__._0;
                _offset = __tmp__._1;
                _start = __tmp__._2;
                _end = __tmp__._3;
                _isDST = __tmp__._4;
                _ok = __tmp__._5;
                __tmp__;
            };
        };
    }
