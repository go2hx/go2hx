package stdgo._internal.encoding.asn1;
function _outsideUTCRange(_t:stdgo._internal.time.Time_time.Time):Bool {
        var _year = (_t.year() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L368"
        return ((_year < (1950 : stdgo.GoInt) : Bool) || (_year >= (2050 : stdgo.GoInt) : Bool) : Bool);
    }
