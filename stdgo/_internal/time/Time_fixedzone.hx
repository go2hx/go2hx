package stdgo._internal.time;
function fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):stdgo.Ref<stdgo._internal.time.Time_location.Location> {
        {};
        {};
        var _hour = ((_offset / (60 : stdgo.GoInt) : stdgo.GoInt) / (60 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L114"
        if ((((_name == ((stdgo.Go.str() : stdgo.GoString)) && ((-12 : stdgo.GoInt) <= _hour : Bool) : Bool) && (_hour <= (14 : stdgo.GoInt) : Bool) : Bool) && (((_hour * (60 : stdgo.GoInt) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt) == _offset) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L115"
            stdgo._internal.time.Time__unnamedfixedzonesonce._unnamedFixedZonesOnce.do_(function():Void {
                stdgo._internal.time.Time__unnamedfixedzones._unnamedFixedZones = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_location.Location>>((27 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_location.Location>>);
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L117"
                {
                    var _hr = (-12 : stdgo.GoInt);
                    while ((_hr <= (14 : stdgo.GoInt) : Bool)) {
                        stdgo._internal.time.Time__unnamedfixedzones._unnamedFixedZones[(_hr + (12 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.time.Time__fixedzone._fixedZone((stdgo.Go.str() : stdgo.GoString).__copy__(), ((_hr * (60 : stdgo.GoInt) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt));
                        _hr++;
                    };
                };
            });
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L121"
            return stdgo._internal.time.Time__unnamedfixedzones._unnamedFixedZones[(_hour + (12 : stdgo.GoInt) : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L123"
        return stdgo._internal.time.Time__fixedzone._fixedZone(_name?.__copy__(), _offset);
    }
