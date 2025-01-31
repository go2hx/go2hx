package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _daysSinceEpoch(_year:stdgo.GoInt):stdgo.GoUInt64 {
        var _y = (((_year : stdgo.GoInt64) - (-292277022399i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
        var _n = (_y / (400i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((400i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _d = ((146097i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64);
        _n = (_y / (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((100i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d + (((36524i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_y / (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((4i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d + (((1461i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = _y;
        _d = (_d + (((365i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _d;
    }
