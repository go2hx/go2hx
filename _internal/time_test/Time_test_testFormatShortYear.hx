package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testFormatShortYear(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _years = (new stdgo.Slice<stdgo.GoInt>(33, 33, ...[
(-100001 : stdgo.GoInt),
(-100000 : stdgo.GoInt),
(-99999 : stdgo.GoInt),
(-10001 : stdgo.GoInt),
(-10000 : stdgo.GoInt),
(-9999 : stdgo.GoInt),
(-1001 : stdgo.GoInt),
(-1000 : stdgo.GoInt),
(-999 : stdgo.GoInt),
(-101 : stdgo.GoInt),
(-100 : stdgo.GoInt),
(-99 : stdgo.GoInt),
(-11 : stdgo.GoInt),
(-10 : stdgo.GoInt),
(-9 : stdgo.GoInt),
(-1 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(11 : stdgo.GoInt),
(99 : stdgo.GoInt),
(100 : stdgo.GoInt),
(101 : stdgo.GoInt),
(999 : stdgo.GoInt),
(1000 : stdgo.GoInt),
(1001 : stdgo.GoInt),
(9999 : stdgo.GoInt),
(10000 : stdgo.GoInt),
(10001 : stdgo.GoInt),
(99999 : stdgo.GoInt),
(100000 : stdgo.GoInt),
(100001 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__2 => _y in _years) {
            var _time = (stdgo._internal.time.Time_date.date(_y, (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _result = (_time.format(("2006.01.02" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _want:stdgo.GoString = ("" : stdgo.GoString);
            if ((_y < (0 : stdgo.GoInt) : Bool)) {
                _want = stdgo._internal.fmt.Fmt_sprintf.sprintf(("-%04d.%02d.%02d" : stdgo.GoString), stdgo.Go.toInterface(-_y), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__();
            } else {
                _want = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%04d.%02d.%02d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__();
            };
            if (_result != (_want)) {
                _t.errorf(("(jan 1 %d).Format(\"2006.01.02\") = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_want));
            };
        };
    }
