package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.Time_asInterface) class Time_static_extension {
    @:keep
    static public function round( _t:stdgo._internal.time.Time_Time.Time, _d:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Time.Time {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        _t._stripMono();
        if ((_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return _t?.__copy__();
        };
        var __tmp__ = stdgo._internal.time.Time__div._div(_t?.__copy__(), _d), __1:stdgo.GoInt = __tmp__._0, _r:stdgo._internal.time.Time_Duration.Duration = __tmp__._1;
        if (stdgo._internal.time.Time__lessThanHalf._lessThanHalf(_r, _d)) {
            return _t.add(-_r)?.__copy__();
        };
        return _t.add((_d - _r : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
    }
    @:keep
    static public function truncate( _t:stdgo._internal.time.Time_Time.Time, _d:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Time.Time {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        _t._stripMono();
        if ((_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return _t?.__copy__();
        };
        var __tmp__ = stdgo._internal.time.Time__div._div(_t?.__copy__(), _d), __1:stdgo.GoInt = __tmp__._0, _r:stdgo._internal.time.Time_Duration.Duration = __tmp__._1;
        return _t.add(-_r)?.__copy__();
    }
    @:keep
    static public function isDST( _t:stdgo._internal.time.Time_Time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __tmp__ = _t._loc._lookup(_t.unix()), __1:stdgo.GoString = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, __3:stdgo.GoInt64 = __tmp__._2, __4:stdgo.GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4;
        return _isDST;
    }
    @:keep
    static public function unmarshalText( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.time.Time__parseStrictRFC3339._parseStrictRFC3339(_data);
            var x = _t;
            x._wall = __tmp__._0?.__copy__()._wall;
            x._ext = __tmp__._0?.__copy__()._ext;
            x._loc = __tmp__._0?.__copy__()._loc;
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function marshalText( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString).length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _t._appendStrictRFC3339(_b), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("Time.MarshalText: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unmarshalJSON( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        if ((_data : stdgo.GoString) == (("null" : stdgo.GoString))) {
            return (null : stdgo.Error);
        };
        if (((((_data.length) < (2 : stdgo.GoInt) : Bool) || _data[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8)) : Bool) || (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Time.UnmarshalJSON: input is not a JSON string" : stdgo.GoString));
        };
        _data = (_data.__slice__((("\"" : stdgo.GoString).length), ((_data.length) - (("\"" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.time.Time__parseStrictRFC3339._parseStrictRFC3339(_data);
            var x = _t;
            x._wall = __tmp__._0?.__copy__()._wall;
            x._ext = __tmp__._0?.__copy__()._ext;
            x._loc = __tmp__._0?.__copy__()._loc;
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function marshalJSON( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (37 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        var __tmp__ = _t._appendStrictRFC3339(_b), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("Time.MarshalJSON: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function gobDecode( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        return _t.unmarshalBinary(_data);
    }
    @:keep
    static public function gobEncode( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return _t.marshalBinary();
    }
    @:keep
    static public function unmarshalBinary( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        var _buf = _data;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("Time.UnmarshalBinary: no data" : stdgo.GoString));
        };
        var _version = (_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_version != (1 : stdgo.GoUInt8)) && (_version != (2 : stdgo.GoUInt8)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Time.UnmarshalBinary: unsupported version" : stdgo.GoString));
        };
        var _wantLen = (15 : stdgo.GoInt);
        if (_version == ((2 : stdgo.GoUInt8))) {
            _wantLen++;
        };
        if ((_buf.length) != (_wantLen)) {
            return stdgo._internal.errors.Errors_new_.new_(("Time.UnmarshalBinary: invalid length" : stdgo.GoString));
        };
        _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _sec = ((((((((_buf[(7 : stdgo.GoInt)] : stdgo.GoInt64) | ((_buf[(6 : stdgo.GoInt)] : stdgo.GoInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(5 : stdgo.GoInt)] : stdgo.GoInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(4 : stdgo.GoInt)] : stdgo.GoInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(3 : stdgo.GoInt)] : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        _buf = (_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nsec = ((((_buf[(3 : stdgo.GoInt)] : stdgo.GoInt32) | ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32);
        _buf = (_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _offset = ((((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt16) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt16) : stdgo.GoInt16) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt);
        if (_version == ((2 : stdgo.GoUInt8))) {
            _offset = (_offset + ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
        };
        {
            var __tmp__ = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
            var x = (_t : stdgo._internal.time.Time_Time.Time);
            x._wall = __tmp__._wall;
            x._ext = __tmp__._ext;
            x._loc = __tmp__._loc;
        };
        _t._wall = (_nsec : stdgo.GoUInt64);
        _t._ext = _sec;
        if (_offset == ((-60 : stdgo.GoInt))) {
            _t._setLoc((stdgo.Go.setRef(stdgo._internal.time.Time__utcLoc._utcLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>));
        } else {
            var __tmp__ = stdgo._internal.time.Time_local.local._lookup(_t._unixSec()), __1:stdgo.GoString = __tmp__._0, _localoff:stdgo.GoInt = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2, __3:stdgo.GoInt64 = __tmp__._3, __4:Bool = __tmp__._4;
            if (_offset == (_localoff)) {
                _t._setLoc(stdgo._internal.time.Time_local.local);
            } else {
                _t._setLoc(stdgo._internal.time.Time_fixedZone.fixedZone(stdgo.Go.str()?.__copy__(), _offset));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalBinary( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _offsetMin:stdgo.GoInt16 = (0 : stdgo.GoInt16);
        var _offsetSec:stdgo.GoInt8 = (0 : stdgo.GoInt8);
        var _version = (1 : stdgo.GoUInt8);
        if (_t.location() == (stdgo._internal.time.Time_utc.utc)) {
            _offsetMin = (-1 : stdgo.GoInt16);
        } else {
            var __tmp__ = _t.zone(), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
            if ((_offset % (60 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                _version = (2 : stdgo.GoUInt8);
                _offsetSec = ((_offset % (60 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt8);
            };
            _offset = (_offset / ((60 : stdgo.GoInt)) : stdgo.GoInt);
            if ((((_offset < (-32768 : stdgo.GoInt) : Bool) || _offset == ((-1 : stdgo.GoInt)) : Bool) || (_offset > (32767 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("Time.MarshalBinary: unexpected zone offset" : stdgo.GoString)) };
            };
            _offsetMin = (_offset : stdgo.GoInt16);
        };
        var _sec = (_t._sec() : stdgo.GoInt64);
        var _nsec = (_t._nsec() : stdgo.GoInt32);
        var _enc = (new stdgo.Slice<stdgo.GoUInt8>(15, 15, ...[
_version,
((_sec >> (56i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (48i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (40i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (24i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
((_sec >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt8),
(_sec : stdgo.GoUInt8),
((_nsec >> (24i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8),
((_nsec >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8),
((_nsec >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8),
(_nsec : stdgo.GoUInt8),
((_offsetMin >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt16) : stdgo.GoUInt8),
(_offsetMin : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        if (_version == ((2 : stdgo.GoUInt8))) {
            _enc = (_enc.__append__((_offsetSec : stdgo.GoUInt8)));
        };
        return { _0 : _enc, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unixNano( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt64 {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return (((_t._unixSec()) * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_t._nsec() : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function unixMicro( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt64 {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return ((_t._unixSec() * (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + ((_t._nsec() : stdgo.GoInt64) / (1000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function unixMilli( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt64 {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return ((_t._unixSec() * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64) + ((_t._nsec() : stdgo.GoInt64) / (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function unix( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt64 {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return _t._unixSec();
    }
    @:keep
    static public function zoneBounds( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo._internal.time.Time_Time.Time; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _start = ({} : stdgo._internal.time.Time_Time.Time), _end = ({} : stdgo._internal.time.Time_Time.Time);
        var __tmp__ = _t._loc._lookup(_t._unixSec()), __1:stdgo.GoString = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _startSec:stdgo.GoInt64 = __tmp__._2, _endSec:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
        if (_startSec != ((-9223372036854775808i64 : stdgo.GoInt64))) {
            _start = stdgo._internal.time.Time__unixTime._unixTime(_startSec, (0 : stdgo.GoInt32))?.__copy__();
            _start._setLoc(_t._loc);
        };
        if (_endSec != ((9223372036854775807i64 : stdgo.GoInt64))) {
            _end = stdgo._internal.time.Time__unixTime._unixTime(_endSec, (0 : stdgo.GoInt32))?.__copy__();
            _end._setLoc(_t._loc);
        };
        return { _0 : _start, _1 : _end };
    }
    @:keep
    static public function zone( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt);
        {
            var __tmp__ = _t._loc._lookup(_t._unixSec());
            _name = __tmp__._0?.__copy__();
            _offset = __tmp__._1;
        };
        return { _0 : _name, _1 : _offset };
    }
    @:keep
    static public function location( _t:stdgo._internal.time.Time_Time.Time):stdgo.Ref<stdgo._internal.time.Time_Location.Location> {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _l = _t._loc;
        if ((_l == null || (_l : Dynamic).__nil__)) {
            _l = stdgo._internal.time.Time_utc.utc;
        };
        return _l;
    }
    @:keep
    static public function in_( _t:stdgo._internal.time.Time_Time.Time, _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo._internal.time.Time_Time.Time {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        if ((_loc == null || (_loc : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("time: missing Location in call to Time.In" : stdgo.GoString));
        };
        _t._setLoc(_loc);
        return _t?.__copy__();
    }
    @:keep
    static public function local( _t:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        _t._setLoc(stdgo._internal.time.Time_local.local);
        return _t?.__copy__();
    }
    @:keep
    static public function utc( _t:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        _t._setLoc((stdgo.Go.setRef(stdgo._internal.time.Time__utcLoc._utcLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>));
        return _t?.__copy__();
    }
    @:keep
    static public function _date( _t:stdgo._internal.time.Time_Time.Time, _full:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_Month.Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _year = (0 : stdgo.GoInt), _month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_Month.Month), _day = (0 : stdgo.GoInt), _yday = (0 : stdgo.GoInt);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_Month.Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } = stdgo._internal.time.Time__absDate._absDate(_t._abs(), _full);
            _year = __tmp__._0;
            _month = __tmp__._1;
            _day = __tmp__._2;
            _yday = __tmp__._3;
            __tmp__;
        };
    }
    @:keep
    static public function addDate( _t:stdgo._internal.time.Time_Time.Time, _years:stdgo.GoInt, _months:stdgo.GoInt, _days:stdgo.GoInt):stdgo._internal.time.Time_Time.Time {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_Month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        return stdgo._internal.time.Time_date.date((_year + _years : stdgo.GoInt), (_month + (_months : stdgo._internal.time.Time_Month.Month) : stdgo._internal.time.Time_Month.Month), (_day + _days : stdgo.GoInt), _hour, _min, _sec, (_t._nsec() : stdgo.GoInt), _t.location())?.__copy__();
    }
    @:keep
    static public function sub( _t:stdgo._internal.time.Time_Time.Time, _u:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _te = (_t._ext : stdgo.GoInt64);
            var _ue = (_u._ext : stdgo.GoInt64);
            var _d = ((_te - _ue : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
            if (((_d < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) && (_te > _ue : Bool) : Bool)) {
                return (9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration);
            };
            if (((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) && (_te < _ue : Bool) : Bool)) {
                return (-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration);
            };
            return _d;
        };
        var _d = ((((_t._sec() - _u._sec() : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) + ((_t._nsec() - _u._nsec() : stdgo.GoInt32) : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        if (_u.add(_d).equal(_t?.__copy__())) {
            return _d;
        } else if (_t.before(_u?.__copy__())) {
            return (-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration);
        } else {
            return (9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration);
        };
    }
    @:keep
    static public function add( _t:stdgo._internal.time.Time_Time.Time, _d:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Time.Time {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _dsec = ((_d / (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt64);
        var _nsec = (_t._nsec() + ((_d % (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt32) : stdgo.GoInt32);
        if ((_nsec >= (1000000000 : stdgo.GoInt32) : Bool)) {
            _dsec++;
            _nsec = (_nsec - ((1000000000 : stdgo.GoInt32)) : stdgo.GoInt32);
        } else if ((_nsec < (0 : stdgo.GoInt32) : Bool)) {
            _dsec--;
            _nsec = (_nsec + ((1000000000 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        _t._wall = ((_t._wall & (((1073741823i64 : stdgo.GoUInt64) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) | (_nsec : stdgo.GoUInt64) : stdgo.GoUInt64);
        _t._addSec(_dsec);
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _te = (_t._ext + (_d : stdgo.GoInt64) : stdgo.GoInt64);
            if ((((_d < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) && (_te > _t._ext : Bool) : Bool) || ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) && (_te < _t._ext : Bool) : Bool) : Bool)) {
                _t._stripMono();
            } else {
                _t._ext = _te;
            };
        };
        return _t?.__copy__();
    }
    @:keep
    static public function yearDay( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __tmp__ = _t._date(false), __1:stdgo.GoInt = __tmp__._0, __2:stdgo._internal.time.Time_Month.Month = __tmp__._1, __3:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        return (_yday + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function nanosecond( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return (_t._nsec() : stdgo.GoInt);
    }
    @:keep
    static public function second( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return ((_t._abs() % (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
    }
    @:keep
    static public function minute( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return (((_t._abs() % (3600i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) / (60 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function hour( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return (((_t._abs() % (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) / (3600 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function clock( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _hour = (0 : stdgo.GoInt), _min = (0 : stdgo.GoInt), _sec = (0 : stdgo.GoInt);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } = stdgo._internal.time.Time__absClock._absClock(_t._abs());
            _hour = __tmp__._0;
            _min = __tmp__._1;
            _sec = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    static public function isoweek( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _year = (0 : stdgo.GoInt), _week = (0 : stdgo.GoInt);
        var _abs = (_t._abs() : stdgo.GoUInt64);
        var _d = ((4 : stdgo._internal.time.Time_Weekday.Weekday) - stdgo._internal.time.Time__absWeekday._absWeekday(_abs) : stdgo._internal.time.Time_Weekday.Weekday);
        if (_d == ((4 : stdgo._internal.time.Time_Weekday.Weekday))) {
            _d = (-3 : stdgo._internal.time.Time_Weekday.Weekday);
        };
        _abs = (_abs + (((_d : stdgo.GoUInt64) * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.time.Time__absDate._absDate(_abs, false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time_Month.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : _year, _1 : ((_yday / (7 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
            _year = __tmp__._0;
            _week = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function weekday( _t:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Weekday.Weekday {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return stdgo._internal.time.Time__absWeekday._absWeekday(_t._abs());
    }
    @:keep
    static public function day( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __tmp__ = _t._date(true), __1:stdgo.GoInt = __tmp__._0, __2:stdgo._internal.time.Time_Month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        return _day;
    }
    @:keep
    static public function month( _t:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Month.Month {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __tmp__ = _t._date(true), __1:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_Month.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        return _month;
    }
    @:keep
    static public function year( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __tmp__ = _t._date(false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time_Month.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        return _year;
    }
    @:keep
    static public function date( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_Month.Month; var _2 : stdgo.GoInt; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _year = (0 : stdgo.GoInt), _month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_Month.Month), _day = (0 : stdgo.GoInt);
        {
            var __tmp__ = _t._date(true);
            _year = __tmp__._0;
            _month = __tmp__._1;
            _day = __tmp__._2;
        };
        return { _0 : _year, _1 : _month, _2 : _day };
    }
    @:keep
    static public function _locabs( _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt64; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt), _abs = (0 : stdgo.GoUInt64);
        var _l = _t._loc;
        if (((_l == null || (_l : Dynamic).__nil__) || (_l == (stdgo.Go.setRef(stdgo._internal.time.Time__localLoc._localLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>)) : Bool)) {
            _l = _l._get();
        };
        var _sec = (_t._unixSec() : stdgo.GoInt64);
        if (_l != ((stdgo.Go.setRef(stdgo._internal.time.Time__utcLoc._utcLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>))) {
            if ((((_l._cacheZone != null && ((_l._cacheZone : Dynamic).__nil__ == null || !(_l._cacheZone : Dynamic).__nil__)) && (_l._cacheStart <= _sec : Bool) : Bool) && (_sec < _l._cacheEnd : Bool) : Bool)) {
                _name = _l._cacheZone._name?.__copy__();
                _offset = _l._cacheZone._offset;
            } else {
                {
                    var __tmp__ = _l._lookup(_sec);
                    _name = __tmp__._0?.__copy__();
                    _offset = __tmp__._1;
                };
            };
            _sec = (_sec + ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
        } else {
            _name = ("UTC" : stdgo.GoString);
        };
        _abs = ((_sec + (9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
        return { _0 : _name, _1 : _offset, _2 : _abs };
    }
    @:keep
    static public function _abs( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoUInt64 {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _l = _t._loc;
        if (((_l == null || (_l : Dynamic).__nil__) || (_l == (stdgo.Go.setRef(stdgo._internal.time.Time__localLoc._localLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>)) : Bool)) {
            _l = _l._get();
        };
        var _sec = (_t._unixSec() : stdgo.GoInt64);
        if (_l != ((stdgo.Go.setRef(stdgo._internal.time.Time__utcLoc._utcLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>))) {
            if ((((_l._cacheZone != null && ((_l._cacheZone : Dynamic).__nil__ == null || !(_l._cacheZone : Dynamic).__nil__)) && (_l._cacheStart <= _sec : Bool) : Bool) && (_sec < _l._cacheEnd : Bool) : Bool)) {
                _sec = (_sec + ((_l._cacheZone._offset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else {
                var __tmp__ = _l._lookup(_sec), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2, __3:stdgo.GoInt64 = __tmp__._3, __4:Bool = __tmp__._4;
                _sec = (_sec + ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        return ((_sec + (9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function isZero( _t:stdgo._internal.time.Time_Time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        return ((_t._sec() == (0i64 : stdgo.GoInt64)) && (_t._nsec() == (0 : stdgo.GoInt32)) : Bool);
    }
    @:keep
    static public function equal( _t:stdgo._internal.time.Time_Time.Time, _u:stdgo._internal.time.Time_Time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return _t._ext == (_u._ext);
        };
        return ((_t._sec() == _u._sec()) && (_t._nsec() == _u._nsec()) : Bool);
    }
    @:keep
    static public function compare( _t:stdgo._internal.time.Time_Time.Time, _u:stdgo._internal.time.Time_Time.Time):stdgo.GoInt {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _uc = __1, _tc = __0;
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            {
                final __tmp__0 = _t._ext;
                final __tmp__1 = _u._ext;
                _tc = __tmp__0;
                _uc = __tmp__1;
            };
        } else {
            {
                final __tmp__0 = _t._sec();
                final __tmp__1 = _u._sec();
                _tc = __tmp__0;
                _uc = __tmp__1;
            };
            if (_tc == (_uc)) {
                {
                    final __tmp__0 = (_t._nsec() : stdgo.GoInt64);
                    final __tmp__1 = (_u._nsec() : stdgo.GoInt64);
                    _tc = __tmp__0;
                    _uc = __tmp__1;
                };
            };
        };
        if ((_tc < _uc : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_tc > _uc : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    static public function before( _t:stdgo._internal.time.Time_Time.Time, _u:stdgo._internal.time.Time_Time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return (_t._ext < _u._ext : Bool);
        };
        var _ts = (_t._sec() : stdgo.GoInt64);
        var _us = (_u._sec() : stdgo.GoInt64);
        return ((_ts < _us : Bool) || (_ts == (_us) && (_t._nsec() < _u._nsec() : Bool) : Bool) : Bool);
    }
    @:keep
    static public function after( _t:stdgo._internal.time.Time_Time.Time, _u:stdgo._internal.time.Time_Time.Time):Bool {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return (_t._ext > _u._ext : Bool);
        };
        var _ts = (_t._sec() : stdgo.GoInt64);
        var _us = (_u._sec() : stdgo.GoInt64);
        return ((_ts > _us : Bool) || (_ts == (_us) && (_t._nsec() > _u._nsec() : Bool) : Bool) : Bool);
    }
    @:keep
    static public function _mono( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
            return (0i64 : stdgo.GoInt64);
        };
        return _t._ext;
    }
    @:keep
    static public function _setMono( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, _m:stdgo.GoInt64):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
            var _sec = (_t._ext : stdgo.GoInt64);
            if (((_sec < (59453308800i64 : stdgo.GoInt64) : Bool) || ((68043243391i64 : stdgo.GoInt64) < _sec : Bool) : Bool)) {
                return;
            };
            _t._wall = (_t._wall | (((-9223372036854775808i64 : stdgo.GoUInt64) | (((_sec - (59453308800i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64) << (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _t._ext = _m;
    }
    @:keep
    static public function _stripMono( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _t._ext = _t._sec();
            _t._wall = (_t._wall & ((1073741823i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
    }
    @:keep
    static public function _setLoc( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        if (_loc == ((stdgo.Go.setRef(stdgo._internal.time.Time__utcLoc._utcLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>))) {
            _loc = null;
        };
        _t._stripMono();
        _t._loc = _loc;
    }
    @:keep
    static public function _addSec( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>, _d:stdgo.GoInt64):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _sec = (((_t._wall << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
            var _dsec = (_sec + _d : stdgo.GoInt64);
            if ((((0i64 : stdgo.GoInt64) <= _dsec : Bool) && (_dsec <= (8589934591i64 : stdgo.GoInt64) : Bool) : Bool)) {
                _t._wall = (((_t._wall & (1073741823i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_dsec : stdgo.GoUInt64) << (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                return;
            };
            _t._stripMono();
        };
        var _sum = (_t._ext + _d : stdgo.GoInt64);
        if (((_sum > _t._ext : Bool)) == ((_d > (0i64 : stdgo.GoInt64) : Bool))) {
            _t._ext = _sum;
        } else if ((_d > (0i64 : stdgo.GoInt64) : Bool)) {
            _t._ext = (9223372036854775807i64 : stdgo.GoInt64);
        } else {
            _t._ext = (-9223372036854775807i64 : stdgo.GoInt64);
        };
    }
    @:keep
    static public function _unixSec( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        return (_t._sec() + (-62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function _sec( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return ((59453308800i64 : stdgo.GoInt64) + (((_t._wall << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        };
        return _t._ext;
    }
    @:keep
    static public function _nsec( _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):stdgo.GoInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = _t;
        return ((_t._wall & (1073741823i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32);
    }
    @:keep
    static public function _appendStrictRFC3339( _t:stdgo._internal.time.Time_Time.Time, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _n0 = (_b.length : stdgo.GoInt);
        _b = _t._appendFormatRFC3339(_b, true);
        var _num2 = function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt8 {
            return (((10 : stdgo.GoUInt8) * ((_b[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) + ((_b[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        if (_b[(_n0 + (("9999" : stdgo.GoString).length) : stdgo.GoInt)] != ((45 : stdgo.GoUInt8))) {
            return { _0 : _b, _1 : stdgo._internal.errors.Errors_new_.new_(("year outside of range [0,9999]" : stdgo.GoString)) };
        } else if (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((90 : stdgo.GoUInt8))) {
            var _c = (_b[((_b.length) - (("Z07:00" : stdgo.GoString).length) : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || (_num2((_b.__slice__(((_b.length) - (("07:00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >= (24 : stdgo.GoUInt8) : Bool) : Bool)) {
                return { _0 : _b, _1 : stdgo._internal.errors.Errors_new_.new_(("timezone hour outside of range [0,23]" : stdgo.GoString)) };
            };
        };
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _appendFormatRFC3339( _t:stdgo._internal.time.Time_Time.Time, _b:stdgo.Slice<stdgo.GoUInt8>, _nanos:Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __tmp__ = _t._locabs(), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _abs:stdgo.GoUInt64 = __tmp__._2;
        var __tmp__ = stdgo._internal.time.Time__absDate._absDate(_abs, true), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_Month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __2:stdgo.GoInt = __tmp__._3;
        _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _year, (4 : stdgo.GoInt));
        _b = (_b.__append__((45 : stdgo.GoUInt8)));
        _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_month : stdgo.GoInt), (2 : stdgo.GoInt));
        _b = (_b.__append__((45 : stdgo.GoUInt8)));
        _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _day, (2 : stdgo.GoInt));
        _b = (_b.__append__((84 : stdgo.GoUInt8)));
        var __tmp__ = stdgo._internal.time.Time__absClock._absClock(_abs), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _hour, (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)));
        _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _min, (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)));
        _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _sec, (2 : stdgo.GoInt));
        if (_nanos) {
            var _std = (stdgo._internal.time.Time__stdFracSecond._stdFracSecond((35 : stdgo.GoInt), (9 : stdgo.GoInt), (46 : stdgo.GoInt)) : stdgo.GoInt);
            _b = stdgo._internal.time.Time__appendNano._appendNano(_b, _t.nanosecond(), _std);
        };
        if (_offset == ((0 : stdgo.GoInt))) {
            return (_b.__append__((90 : stdgo.GoUInt8)));
        };
        var _zone = (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
        if ((_zone < (0 : stdgo.GoInt) : Bool)) {
            _b = (_b.__append__((45 : stdgo.GoUInt8)));
            _zone = -_zone;
        } else {
            _b = (_b.__append__((43 : stdgo.GoUInt8)));
        };
        _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)));
        _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
        return _b;
    }
    @:keep
    static public function _appendFormat( _t:stdgo._internal.time.Time_Time.Time, _b:stdgo.Slice<stdgo.GoUInt8>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var __tmp__ = _t._locabs(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _abs:stdgo.GoUInt64 = __tmp__._2;
var __0:stdgo.GoInt = (-1 : stdgo.GoInt), __1:stdgo._internal.time.Time_Month.Month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_Month.Month), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt), __4:stdgo.GoInt = (-1 : stdgo.GoInt), __5:stdgo.GoInt = (0 : stdgo.GoInt), __6:stdgo.GoInt = (0 : stdgo.GoInt);
var _sec = __6, _min = __5, _hour = __4, _yday = __3, _day = __2, _month = __1, _year = __0;
        while (_layout != (stdgo.Go.str())) {
            var __tmp__ = stdgo._internal.time.Time__nextStdChunk._nextStdChunk(_layout?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _std:stdgo.GoInt = __tmp__._1, _suffix:stdgo.GoString = __tmp__._2;
            if (_prefix != (stdgo.Go.str())) {
                _b = (_b.__append__(...(_prefix : Array<stdgo.GoUInt8>)));
            };
            if (_std == ((0 : stdgo.GoInt))) {
                break;
            };
            _layout = _suffix?.__copy__();
            if (((_year < (0 : stdgo.GoInt) : Bool) && ((_std & (256 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.time.Time__absDate._absDate(_abs, true);
                    _year = __tmp__._0;
                    _month = __tmp__._1;
                    _day = __tmp__._2;
                    _yday = __tmp__._3;
                };
                _yday++;
            };
            if (((_hour < (0 : stdgo.GoInt) : Bool) && ((_std & (512 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.time.Time__absClock._absClock(_abs);
                    _hour = __tmp__._0;
                    _min = __tmp__._1;
                    _sec = __tmp__._2;
                };
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (_std & (65535 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((276 : stdgo.GoInt))) {
                            var _y = (_year : stdgo.GoInt);
                            if ((_y < (0 : stdgo.GoInt) : Bool)) {
                                _y = -_y;
                            };
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_y % (100 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((275 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _year, (4 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((258 : stdgo.GoInt))) {
                            _b = (_b.__append__(...(((_month.string() : stdgo.GoString).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            break;
                        } else if (__value__ == ((257 : stdgo.GoInt))) {
                            var _m = ((_month.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _b = (_b.__append__(...(_m : Array<stdgo.GoUInt8>)));
                            break;
                        } else if (__value__ == ((259 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_month : stdgo.GoInt), (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((260 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_month : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((262 : stdgo.GoInt))) {
                            _b = (_b.__append__(...(((stdgo._internal.time.Time__absWeekday._absWeekday(_abs).string() : stdgo.GoString).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            break;
                        } else if (__value__ == ((261 : stdgo.GoInt))) {
                            var _s = ((stdgo._internal.time.Time__absWeekday._absWeekday(_abs).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _b = (_b.__append__(...(_s : Array<stdgo.GoUInt8>)));
                            break;
                        } else if (__value__ == ((263 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _day, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((264 : stdgo.GoInt))) {
                            if ((_day < (10 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((32 : stdgo.GoUInt8)));
                            };
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _day, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((265 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _day, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((266 : stdgo.GoInt))) {
                            if ((_yday < (100 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((32 : stdgo.GoUInt8)));
                                if ((_yday < (10 : stdgo.GoInt) : Bool)) {
                                    _b = (_b.__append__((32 : stdgo.GoUInt8)));
                                };
                            };
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _yday, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((267 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _yday, (3 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((524 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _hour, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((525 : stdgo.GoInt))) {
                            var _hr = (_hour % (12 : stdgo.GoInt) : stdgo.GoInt);
                            if (_hr == ((0 : stdgo.GoInt))) {
                                _hr = (12 : stdgo.GoInt);
                            };
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _hr, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((526 : stdgo.GoInt))) {
                            var _hr = (_hour % (12 : stdgo.GoInt) : stdgo.GoInt);
                            if (_hr == ((0 : stdgo.GoInt))) {
                                _hr = (12 : stdgo.GoInt);
                            };
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _hr, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((527 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _min, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((528 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _min, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((529 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _sec, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((530 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, _sec, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((533 : stdgo.GoInt))) {
                            if ((_hour >= (12 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__(...(("PM" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            } else {
                                _b = (_b.__append__(...(("AM" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            };
                            break;
                        } else if (__value__ == ((534 : stdgo.GoInt))) {
                            if ((_hour >= (12 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__(...(("pm" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            } else {
                                _b = (_b.__append__(...(("am" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            };
                            break;
                        } else if (__value__ == ((24 : stdgo.GoInt)) || __value__ == ((27 : stdgo.GoInt)) || __value__ == ((25 : stdgo.GoInt)) || __value__ == ((26 : stdgo.GoInt)) || __value__ == ((28 : stdgo.GoInt)) || __value__ == ((29 : stdgo.GoInt)) || __value__ == ((32 : stdgo.GoInt)) || __value__ == ((30 : stdgo.GoInt)) || __value__ == ((31 : stdgo.GoInt)) || __value__ == ((33 : stdgo.GoInt))) {
                            if (((_offset == (0 : stdgo.GoInt)) && (((((_std == ((24 : stdgo.GoInt)) || _std == ((27 : stdgo.GoInt)) : Bool) || _std == ((25 : stdgo.GoInt)) : Bool) || _std == ((26 : stdgo.GoInt)) : Bool) || (_std == (28 : stdgo.GoInt)) : Bool)) : Bool)) {
                                _b = (_b.__append__((90 : stdgo.GoUInt8)));
                                break;
                            };
                            var _zone = (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
                            var _absoffset = (_offset : stdgo.GoInt);
                            if ((_zone < (0 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((45 : stdgo.GoUInt8)));
                                _zone = -_zone;
                                _absoffset = -_absoffset;
                            } else {
                                _b = (_b.__append__((43 : stdgo.GoUInt8)));
                            };
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            if ((((_std == ((27 : stdgo.GoInt)) || _std == ((32 : stdgo.GoInt)) : Bool) || _std == ((28 : stdgo.GoInt)) : Bool) || (_std == (33 : stdgo.GoInt)) : Bool)) {
                                _b = (_b.__append__((58 : stdgo.GoUInt8)));
                            };
                            if (((_std != (31 : stdgo.GoInt)) && (_std != (26 : stdgo.GoInt)) : Bool)) {
                                _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            };
                            if ((((_std == ((25 : stdgo.GoInt)) || _std == ((30 : stdgo.GoInt)) : Bool) || _std == ((33 : stdgo.GoInt)) : Bool) || (_std == (28 : stdgo.GoInt)) : Bool)) {
                                if (((_std == (33 : stdgo.GoInt)) || (_std == (28 : stdgo.GoInt)) : Bool)) {
                                    _b = (_b.__append__((58 : stdgo.GoUInt8)));
                                };
                                _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_absoffset % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            };
                            break;
                        } else if (__value__ == ((23 : stdgo.GoInt))) {
                            if (_name != (stdgo.Go.str())) {
                                _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)));
                                break;
                            };
                            var _zone = (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
                            if ((_zone < (0 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((45 : stdgo.GoUInt8)));
                                _zone = -_zone;
                            } else {
                                _b = (_b.__append__((43 : stdgo.GoUInt8)));
                            };
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            _b = stdgo._internal.time.Time__appendInt._appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((34 : stdgo.GoInt)) || __value__ == ((35 : stdgo.GoInt))) {
                            _b = stdgo._internal.time.Time__appendNano._appendNano(_b, _t.nanosecond(), _std);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        return _b;
    }
    @:keep
    static public function appendFormat( _t:stdgo._internal.time.Time_Time.Time, _b:stdgo.Slice<stdgo.GoUInt8>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        {
            final __value__ = _layout;
            if (__value__ == (("2006-01-02T15:04:05Z07:00" : stdgo.GoString))) {
                return _t._appendFormatRFC3339(_b, false);
            } else if (__value__ == (("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))) {
                return _t._appendFormatRFC3339(_b, true);
            } else {
                return _t._appendFormat(_b, _layout?.__copy__());
            };
        };
    }
    @:keep
    static public function format( _t:stdgo._internal.time.Time_Time.Time, _layout:stdgo.GoString):stdgo.GoString {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        {};
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _max = ((_layout.length) + (10 : stdgo.GoInt) : stdgo.GoInt);
        if ((_max < (64 : stdgo.GoInt) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
            _b = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = _t.appendFormat(_b, _layout?.__copy__());
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function goString( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoString {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _abs = (_t._abs() : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.time.Time__absDate._absDate(_abs, true), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_Month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __1:stdgo.GoInt = __tmp__._3;
        var __tmp__ = stdgo._internal.time.Time__absClock._absClock(_abs), _hour:stdgo.GoInt = __tmp__._0, _minute:stdgo.GoInt = __tmp__._1, _second:stdgo.GoInt = __tmp__._2;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (("time.Date(9999, time.September, 31, 23, 59, 59, 999999999, time.Local)" : stdgo.GoString).length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(("time.Date(" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, _year, (0 : stdgo.GoInt));
        if ((((1 : stdgo._internal.time.Time_Month.Month) <= _month : Bool) && (_month <= (12 : stdgo._internal.time.Time_Month.Month) : Bool) : Bool)) {
            _buf = (_buf.__append__(...((", time." : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _buf = (_buf.__append__(...(stdgo._internal.time.Time__longMonthNames._longMonthNames[((_month - (1 : stdgo._internal.time.Time_Month.Month) : stdgo._internal.time.Time_Month.Month) : stdgo.GoInt)] : Array<stdgo.GoUInt8>)));
        } else {
            _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, (_month : stdgo.GoInt), (0 : stdgo.GoInt));
        };
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, _day, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, _hour, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, _minute, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, _second, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, _t.nanosecond(), (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        {
            var _loc = _t.location();
            {
                final __value__ = _loc;
                if (__value__ == (stdgo._internal.time.Time_utc.utc) || (__value__ == null || (__value__ : Dynamic).__nil__)) {
                    _buf = (_buf.__append__(...(("time.UTC" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                } else if (__value__ == (stdgo._internal.time.Time_local.local)) {
                    _buf = (_buf.__append__(...(("time.Local" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                } else {
                    _buf = (_buf.__append__(...(("time.Location(" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _buf = (_buf.__append__(...(stdgo._internal.time.Time__quote._quote(_loc._name?.__copy__()) : Array<stdgo.GoUInt8>)));
                    _buf = (_buf.__append__((41 : stdgo.GoUInt8)));
                };
            };
        };
        _buf = (_buf.__append__((41 : stdgo.GoUInt8)));
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _t:stdgo._internal.time.Time_Time.Time):stdgo.GoString {
        @:recv var _t:stdgo._internal.time.Time_Time.Time = _t?.__copy__();
        var _s = (_t.format(("2006-01-02 15:04:05.999999999 -0700 MST" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _m2 = (_t._ext : stdgo.GoUInt64);
            var _sign = ((43 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if ((_t._ext < (0i64 : stdgo.GoInt64) : Bool)) {
                _sign = (45 : stdgo.GoUInt8);
                _m2 = -_m2;
            };
            var __0 = (_m2 / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = (_m2 % (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _m2 = __1, _m1 = __0;
            var __0 = (_m1 / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = (_m1 % (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _m1 = __1, _m0 = __0;
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (24 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(...((" m=" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _buf = (_buf.__append__(_sign));
            var _wid = (0 : stdgo.GoInt);
            if (_m0 != ((0i64 : stdgo.GoUInt64))) {
                _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, (_m0 : stdgo.GoInt), (0 : stdgo.GoInt));
                _wid = (9 : stdgo.GoInt);
            };
            _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, (_m1 : stdgo.GoInt), _wid);
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
            _buf = stdgo._internal.time.Time__appendInt._appendInt(_buf, (_m2 : stdgo.GoInt), (9 : stdgo.GoInt));
            _s = (_s + ((_buf : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
}
