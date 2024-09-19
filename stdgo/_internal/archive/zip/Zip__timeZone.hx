package stdgo._internal.archive.zip;
function _timeZone(_offset:stdgo._internal.time.Time_Duration.Duration):stdgo.Ref<stdgo._internal.time.Time_Location.Location> {
        {};
        _offset = _offset.round((900000000000i64 : stdgo._internal.time.Time_Duration.Duration));
        if (((_offset < (-43200000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) || ((50400000000000i64 : stdgo._internal.time.Time_Duration.Duration) < _offset : Bool) : Bool)) {
            _offset = (0i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        return stdgo._internal.time.Time_fixedZone.fixedZone(stdgo.Go.str()?.__copy__(), ((_offset / (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt));
    }
