package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.Weekday_asInterface) class Weekday_static_extension {
    @:keep
    @:tdfield
    static public function string( _d:stdgo._internal.time.Time_weekday.Weekday):stdgo.GoString {
        @:recv var _d:stdgo._internal.time.Time_weekday.Weekday = _d;
        if ((((0 : stdgo._internal.time.Time_weekday.Weekday) <= _d : Bool) && (_d <= (6 : stdgo._internal.time.Time_weekday.Weekday) : Bool) : Bool)) {
            return stdgo._internal.time.Time__longdaynames._longDayNames[(_d : stdgo.GoInt)]?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.time.Time__fmtint._fmtInt(_buf, (_d : stdgo.GoUInt64)) : stdgo.GoInt);
        return ((("%!Weekday(" : stdgo.GoString) + ((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
