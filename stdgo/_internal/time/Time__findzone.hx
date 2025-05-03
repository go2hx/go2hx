package stdgo._internal.time;
function _findZone(_zones:stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>, _name:stdgo.GoString, _offset:stdgo.GoInt, _isDST:Bool):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L355"
        for (_i => _z in _zones) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L356"
            if (((_z._name == (_name) && _z._offset == (_offset) : Bool) && (_z._isDST == _isDST) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L357"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L360"
        return (-1 : stdgo.GoInt);
    }
