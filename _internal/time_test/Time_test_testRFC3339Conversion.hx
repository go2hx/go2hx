package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testRFC3339Conversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _f in _internal.time_test.Time_test__rfc3339Formats._rfc3339Formats) {
            if (_f._time.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString)) != (_f._formattedValue)) {
                _t.error(stdgo.Go.toInterface(("RFC3339:" : stdgo.GoString)));
                _t.errorf(("  want=%+v" : stdgo.GoString), stdgo.Go.toInterface(_f._formattedValue));
                _t.errorf(("  have=%+v" : stdgo.GoString), stdgo.Go.toInterface(_f._time.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))));
            };
        };
    }
