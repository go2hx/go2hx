package stdgo._internal.archive.zip;
function _timeZone(_offset:stdgo._internal.time.Time_duration.Duration):stdgo.Ref<stdgo._internal.time.Time_location.Location> {
        {};
        _offset = _offset.round((900000000000i64 : stdgo._internal.time.Time_duration.Duration));
        if (((_offset < (-43200000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool) || ((50400000000000i64 : stdgo._internal.time.Time_duration.Duration) < _offset : Bool) : Bool)) {
            _offset = (0i64 : stdgo._internal.time.Time_duration.Duration);
        };
        return stdgo._internal.time.Time_fixedzone.fixedZone((stdgo.Go.str() : stdgo.GoString)?.__copy__(), ((_offset / (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoInt));
    }
