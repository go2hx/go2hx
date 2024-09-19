package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.time.Time.Weekday_asInterface) class Weekday_static_extension {
    @:keep
    static public function string( _d:stdgo._internal.time.Time_Weekday.Weekday):stdgo.GoString {
        @:recv var _d:stdgo._internal.time.Time_Weekday.Weekday = _d;
        if ((((0 : stdgo._internal.time.Time_Weekday.Weekday) <= _d : Bool) && (_d <= (6 : stdgo._internal.time.Time_Weekday.Weekday) : Bool) : Bool)) {
            return stdgo._internal.time.Time__longDayNames._longDayNames[(_d : stdgo.GoInt)]?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.time.Time__fmtInt._fmtInt(_buf, (_d : stdgo.GoUInt64)) : stdgo.GoInt);
        return ((("%!Weekday(" : stdgo.GoString) + ((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
