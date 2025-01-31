package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _findZone(_zones:stdgo.Slice<stdgo._internal.time.Time_T_zone.T_zone>, _name:stdgo.GoString, _offset:stdgo.GoInt, _isDST:Bool):stdgo.GoInt {
        for (_i => _z in _zones) {
            if (((_z._name == (_name) && _z._offset == (_offset) : Bool) && (_z._isDST == _isDST) : Bool)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
