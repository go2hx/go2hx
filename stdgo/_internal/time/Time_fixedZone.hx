package stdgo._internal.time;
function fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):stdgo.Ref<stdgo._internal.time.Time_Location.Location> {
        {};
        {};
        var _hour = ((_offset / (60 : stdgo.GoInt) : stdgo.GoInt) / (60 : stdgo.GoInt) : stdgo.GoInt);
        if ((((_name == (stdgo.Go.str()) && ((-12 : stdgo.GoInt) <= _hour : Bool) : Bool) && (_hour <= (14 : stdgo.GoInt) : Bool) : Bool) && (((_hour * (60 : stdgo.GoInt) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt) == _offset) : Bool)) {
            stdgo._internal.time.Time__unnamedFixedZonesOnce._unnamedFixedZonesOnce.do_(function():Void {
                stdgo._internal.time.Time__unnamedFixedZones._unnamedFixedZones = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_Location.Location>>((27 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_Location.Location>>);
                {
                    var _hr = (-12 : stdgo.GoInt);
                    stdgo.Go.cfor((_hr <= (14 : stdgo.GoInt) : Bool), _hr++, {
                        stdgo._internal.time.Time__unnamedFixedZones._unnamedFixedZones[(_hr + (12 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.time.Time__fixedZone._fixedZone(stdgo.Go.str()?.__copy__(), ((_hr * (60 : stdgo.GoInt) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt));
                    });
                };
            });
            return stdgo._internal.time.Time__unnamedFixedZones._unnamedFixedZones[(_hour + (12 : stdgo.GoInt) : stdgo.GoInt)];
        };
        return stdgo._internal.time.Time__fixedZone._fixedZone(_name?.__copy__(), _offset);
    }
