package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _equalTimeAndZone(_a:stdgo._internal.time.Time_Time.Time, _b:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _a.zone(), _aname:stdgo.GoString = __tmp__._0, _aoffset:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _b.zone(), _bname:stdgo.GoString = __tmp__._0, _boffset:stdgo.GoInt = __tmp__._1;
        return ((_a.equal(_b?.__copy__()) && _aoffset == (_boffset) : Bool) && (_aname == _bname) : Bool);
    }
