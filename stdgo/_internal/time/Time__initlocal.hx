package stdgo._internal.time;
function _initLocal():Void {
        stdgo._internal.time.Time__localloc._localLoc._name = ("Local" : stdgo.GoString);
        final d = new std.Date(0, 0, 0, 0, 0, 0);
        var offset = d.getTimezoneOffset() * -1;
        offset *= 60;
        var name = "UTC";
        if (offset < 0) {
            name += "-";
            offset *= -1;
        } else {
            name += "+";
        };
        name += std.Std.string(offset / 60);
        final min = offset % 60;
        if (min != 0) {
            name += ":" + std.Std.string(min);
        };
        stdgo._internal.time.Time__localloc._localLoc._zone = new stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>(1, 1, ...[{ _name : (name : stdgo.GoString), _offset : offset, _isDST : false }]);
    }
