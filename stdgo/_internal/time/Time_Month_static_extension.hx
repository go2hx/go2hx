package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.time.Time.Month_asInterface) class Month_static_extension {
    @:keep
    static public function string( _m:stdgo._internal.time.Time_Month.Month):stdgo.GoString {
        @:recv var _m:stdgo._internal.time.Time_Month.Month = _m;
        if ((((1 : stdgo._internal.time.Time_Month.Month) <= _m : Bool) && (_m <= (12 : stdgo._internal.time.Time_Month.Month) : Bool) : Bool)) {
            return stdgo._internal.time.Time__longMonthNames._longMonthNames[((_m - (1 : stdgo._internal.time.Time_Month.Month) : stdgo._internal.time.Time_Month.Month) : stdgo.GoInt)]?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.time.Time__fmtInt._fmtInt(_buf, (_m : stdgo.GoUInt64)) : stdgo.GoInt);
        return ((("%!Month(" : stdgo.GoString) + ((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}