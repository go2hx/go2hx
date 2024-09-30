package stdgo._internal.time;
function date(_year:stdgo.GoInt, _month:stdgo._internal.time.Time_Month.Month, _day:stdgo.GoInt, _hour:stdgo.GoInt, _min:stdgo.GoInt, _sec:stdgo.GoInt, _nsec:stdgo.GoInt, _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo._internal.time.Time_Time.Time {
        if (_loc == null || (_loc : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("time: missing Location in call to Date" : stdgo.GoString));
        };
        var _m = ((_month : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_year, _m, (12 : stdgo.GoInt));
            _year = __tmp__._0;
            _m = __tmp__._1;
        };
        _month = ((_m : stdgo._internal.time.Time_Month.Month) + (1 : stdgo._internal.time.Time_Month.Month) : stdgo._internal.time.Time_Month.Month);
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_sec, _nsec, (1000000000 : stdgo.GoInt));
            _sec = __tmp__._0;
            _nsec = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_min, _sec, (60 : stdgo.GoInt));
            _min = __tmp__._0;
            _sec = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_hour, _min, (60 : stdgo.GoInt));
            _hour = __tmp__._0;
            _min = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_day, _hour, (24 : stdgo.GoInt));
            _day = __tmp__._0;
            _hour = __tmp__._1;
        };
        var _d = (stdgo._internal.time.Time__daysSinceEpoch._daysSinceEpoch(_year) : stdgo.GoUInt64);
        _d = (_d + ((stdgo._internal.time.Time__daysBefore._daysBefore[((_month - (1 : stdgo._internal.time.Time_Month.Month) : stdgo._internal.time.Time_Month.Month) : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((stdgo._internal.time.Time__isLeap._isLeap(_year) && (_month >= (3 : stdgo._internal.time.Time_Month.Month) : Bool) : Bool)) {
            _d++;
        };
        _d = (_d + (((_day - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _abs = (_d * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _abs = (_abs + (((((_hour * (3600 : stdgo.GoInt) : stdgo.GoInt) + (_min * (60 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + _sec : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _unix = ((_abs : stdgo.GoInt64) + (-9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var __tmp__ = _loc._lookup(_unix), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _start:stdgo.GoInt64 = __tmp__._2, _end:stdgo.GoInt64 = __tmp__._3, __2:Bool = __tmp__._4;
        if (_offset != ((0 : stdgo.GoInt))) {
            var _utc = (_unix - (_offset : stdgo.GoInt64) : stdgo.GoInt64);
            if (((_utc < _start : Bool) || (_utc >= _end : Bool) : Bool)) {
                {
                    var __tmp__ = _loc._lookup(_utc);
                    _offset = __tmp__._1;
                };
            };
            _unix = (_unix - ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        var _t = (stdgo._internal.time.Time__unixTime._unixTime(_unix, (_nsec : stdgo.GoInt32))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        _t._setLoc(_loc);
        return _t?.__copy__();
    }
