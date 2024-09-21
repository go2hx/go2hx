package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _slimTests : stdgo.Slice<_internal.time_test.Time_test_T__struct_32.T__struct_32> = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_32.T__struct_32>(4, 4, ...[({ _zoneName : ("Europe/Berlin" : stdgo.GoString), _fileName : ("2020b_Europe_Berlin" : stdgo.GoString), _date : function(_loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.time.Time_date.date((2020 : stdgo.GoInt), (10 : stdgo._internal.time.Time_Month.Month), (29 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
    }, _wantName : ("CET" : stdgo.GoString), _wantOffset : (3600 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_32.T__struct_32), ({ _zoneName : ("America/Nuuk" : stdgo.GoString), _fileName : ("2021a_America_Nuuk" : stdgo.GoString), _date : function(_loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.time.Time_date.date((2020 : stdgo.GoInt), (10 : stdgo._internal.time.Time_Month.Month), (29 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
    }, _wantName : ("-03" : stdgo.GoString), _wantOffset : (-10800 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_32.T__struct_32), ({ _zoneName : ("Asia/Gaza" : stdgo.GoString), _fileName : ("2021a_Asia_Gaza" : stdgo.GoString), _date : function(_loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.time.Time_date.date((2020 : stdgo.GoInt), (10 : stdgo._internal.time.Time_Month.Month), (29 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
    }, _wantName : ("EET" : stdgo.GoString), _wantOffset : (7200 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_32.T__struct_32), ({ _zoneName : ("Europe/Dublin" : stdgo.GoString), _fileName : ("2021a_Europe_Dublin" : stdgo.GoString), _date : function(_loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.time.Time_date.date((2021 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (2 : stdgo.GoInt), (11 : stdgo.GoInt), (12 : stdgo.GoInt), (13 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
    }, _wantName : ("IST" : stdgo.GoString), _wantOffset : (3600 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_32.T__struct_32)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _zoneName : ("" : stdgo.GoString), _fileName : ("" : stdgo.GoString), _date : null, _wantName : ("" : stdgo.GoString), _wantOffset : (0 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_32.T__struct_32)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_32.T__struct_32>);
