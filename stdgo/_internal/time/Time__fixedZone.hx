package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):stdgo.Ref<stdgo._internal.time.Time_Location.Location> {
        var _l = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _zone : (new stdgo.Slice<stdgo._internal.time.Time_T_zone.T_zone>(1, 1, ...[(new stdgo._internal.time.Time_T_zone.T_zone(_name?.__copy__(), _offset, false) : stdgo._internal.time.Time_T_zone.T_zone)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time_T_zone.T_zone)])) : stdgo.Slice<stdgo._internal.time.Time_T_zone.T_zone>), _tx : (new stdgo.Slice<stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans>(1, 1, ...[(new stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans((-9223372036854775808i64 : stdgo.GoInt64), (0 : stdgo.GoUInt8), false, false) : stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans)])) : stdgo.Slice<stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans>), _cacheStart : (-9223372036854775808i64 : stdgo.GoInt64), _cacheEnd : (9223372036854775807i64 : stdgo.GoInt64) } : stdgo._internal.time.Time_Location.Location)) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        (@:checkr _l ?? throw "null pointer dereference")._cacheZone = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._zone[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_T_zone.T_zone>);
        return _l;
    }
