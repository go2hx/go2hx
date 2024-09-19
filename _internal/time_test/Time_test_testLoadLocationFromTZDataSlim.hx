package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testLoadLocationFromTZDataSlim(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__slimTests._slimTests) {
            var __tmp__ = stdgo._internal.os.Os_readFile.readFile((("testdata/" : stdgo.GoString) + _test._fileName?.__copy__() : stdgo.GoString)?.__copy__()), _tzData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                continue;
            };
            var __tmp__ = stdgo._internal.time.Time_loadLocationFromTZData.loadLocationFromTZData(_test._zoneName?.__copy__(), _tzData), _reference:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                continue;
            };
            var _d = (_test._date(_reference)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var __tmp__ = _d.zone(), _tzName:stdgo.GoString = __tmp__._0, _tzOffset:stdgo.GoInt = __tmp__._1;
            if (_tzName != (_test._wantName)) {
                _t.errorf(("Zone name == %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tzName), stdgo.Go.toInterface(_test._wantName));
            };
            if (_tzOffset != (_test._wantOffset)) {
                _t.errorf(("Zone offset == %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tzOffset), stdgo.Go.toInterface(_test._wantOffset));
            };
        };
    }
