package stdgo._internal.time;
function _absDate(_abs:stdgo.GoUInt64, _full:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_month.Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } {
        var _year = (0 : stdgo.GoInt), _month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_month.Month), _day = (0 : stdgo.GoInt), _yday = (0 : stdgo.GoInt);
        var _d = (_abs / (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _n = (_d / (146097i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _y = ((400i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64);
        _d = (_d - (((146097i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_d / (36524i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _n = (_n - ((_n >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _y = (_y + (((100i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d - (((36524i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_d / (1461i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y + (((4i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d - (((1461i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_d / (365i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _n = (_n - ((_n >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _y = (_y + (_n) : stdgo.GoUInt64);
        _d = (_d - (((365i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _year = (((_y : stdgo.GoInt64) + (-292277022399i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt);
        _yday = (_d : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1003"
        if (!_full) {
            //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1004"
            return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
        };
        _day = _yday;
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1008"
        if (stdgo._internal.time.Time__isleap._isLeap(_year)) {
            //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1010"
            if ((_day > (59 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1013"
                _day--;
            } else if (_day == ((59 : stdgo.GoInt))) {
                _month = (2 : stdgo._internal.time.Time_month.Month);
                _day = (29 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1018"
                return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
            };
        };
        _month = ((_day / (31 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.time.Time_month.Month);
        var _end = (stdgo._internal.time.Time__daysbefore._daysBefore[((_month + (1 : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month) : stdgo.GoInt)] : stdgo.GoInt);
        var _begin:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1027"
        if ((_day >= _end : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1028"
            _month++;
            _begin = _end;
        } else {
            _begin = (stdgo._internal.time.Time__daysbefore._daysBefore[(_month : stdgo.GoInt)] : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1034"
        _month++;
        _day = ((_day - _begin : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1036"
        return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
    }
