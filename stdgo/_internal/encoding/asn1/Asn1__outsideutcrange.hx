package stdgo._internal.encoding.asn1;
function _outsideUTCRange(_t:stdgo._internal.time.Time_time.Time):Bool {
        var _year = (_t.year() : stdgo.GoInt);
        return ((_year < (1950 : stdgo.GoInt) : Bool) || (_year >= (2050 : stdgo.GoInt) : Bool) : Bool);
    }
