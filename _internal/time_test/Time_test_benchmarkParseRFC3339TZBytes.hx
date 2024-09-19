package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkParseRFC3339TZBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.time.Time_parse.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_internal.time_test.Time_test__testdataRFC3339TZBytes._testdataRFC3339TZBytes : stdgo.GoString)?.__copy__());
            });
        };
    }
