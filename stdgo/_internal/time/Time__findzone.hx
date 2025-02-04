package stdgo._internal.time;
function _findZone(_zones:stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>, _name:stdgo.GoString, _offset:stdgo.GoInt, _isDST:Bool):stdgo.GoInt {
        for (_i => _z in _zones) {
            if (((_z._name == (_name) && _z._offset == (_offset) : Bool) && (_z._isDST == _isDST) : Bool)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
