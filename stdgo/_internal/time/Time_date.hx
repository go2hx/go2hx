package stdgo._internal.time;
function date(_year:stdgo.GoInt, _month:stdgo._internal.time.Time_month.Month, _day:stdgo.GoInt, _hour:stdgo.GoInt, _min:stdgo.GoInt, _sec:stdgo.GoInt, _nsec:stdgo.GoInt, _loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo._internal.time.Time_time.Time {
        if ((_loc == null || (_loc : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("time: missing Location in call to Date" : stdgo.GoString));
        };
        var _m = ((_month : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_year, _m, (12 : stdgo.GoInt));
            _year = @:tmpset0 __tmp__._0;
            _m = @:tmpset0 __tmp__._1;
        };
        _month = ((_m : stdgo._internal.time.Time_month.Month) + (1 : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month);
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_sec, _nsec, (1000000000 : stdgo.GoInt));
            _sec = @:tmpset0 __tmp__._0;
            _nsec = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_min, _sec, (60 : stdgo.GoInt));
            _min = @:tmpset0 __tmp__._0;
            _sec = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_hour, _min, (60 : stdgo.GoInt));
            _hour = @:tmpset0 __tmp__._0;
            _min = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.time.Time__norm._norm(_day, _hour, (24 : stdgo.GoInt));
            _day = @:tmpset0 __tmp__._0;
            _hour = @:tmpset0 __tmp__._1;
        };
        var _d = (stdgo._internal.time.Time__dayssinceepoch._daysSinceEpoch(_year) : stdgo.GoUInt64);
        _d = (_d + ((stdgo._internal.time.Time__daysbefore._daysBefore[((_month - (1 : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month) : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((stdgo._internal.time.Time__isleap._isLeap(_year) && (_month >= (3 : stdgo._internal.time.Time_month.Month) : Bool) : Bool)) {
            _d++;
        };
        _d = (_d + (((_day - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _abs = (_d * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _abs = (_abs + (((((_hour * (3600 : stdgo.GoInt) : stdgo.GoInt) + (_min * (60 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + _sec : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _unix = ((_abs : stdgo.GoInt64) + (-9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var __tmp__ = @:check2r _loc._lookup(_unix), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _start:stdgo.GoInt64 = __tmp__._2, _end:stdgo.GoInt64 = __tmp__._3, __2:Bool = __tmp__._4;
        if (_offset != ((0 : stdgo.GoInt))) {
            var _utc = (_unix - (_offset : stdgo.GoInt64) : stdgo.GoInt64);
            if (((_utc < _start : Bool) || (_utc >= _end : Bool) : Bool)) {
                {
                    var __tmp__ = @:check2r _loc._lookup(_utc);
                    _offset = @:tmpset0 __tmp__._1;
                };
            };
            _unix = (_unix - ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        var _t = (stdgo._internal.time.Time__unixtime._unixTime(_unix, (_nsec : stdgo.GoInt32))?.__copy__() : stdgo._internal.time.Time_time.Time);
        @:check2 _t._setLoc(_loc);
        return _t?.__copy__();
    }
