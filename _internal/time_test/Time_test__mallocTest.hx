package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _mallocTest : stdgo.Slice<_internal.time_test.Time_test_T__struct_21.T__struct_21> = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_21.T__struct_21>(4, 4, ...[({ _count : (0 : stdgo.GoInt), _desc : ("time.Now()" : stdgo.GoString), _fn : function():Void {
        _internal.time_test.Time_test__t._t = stdgo._internal.time.Time_now.now()?.__copy__();
    } } : _internal.time_test.Time_test_T__struct_21.T__struct_21), ({ _count : (0 : stdgo.GoInt), _desc : ("time.Now().UnixNano()" : stdgo.GoString), _fn : function():Void {
        _internal.time_test.Time_test__u._u = stdgo._internal.time.Time_now.now().unixNano();
    } } : _internal.time_test.Time_test_T__struct_21.T__struct_21), ({ _count : (0 : stdgo.GoInt), _desc : ("time.Now().UnixMilli()" : stdgo.GoString), _fn : function():Void {
        _internal.time_test.Time_test__u._u = stdgo._internal.time.Time_now.now().unixMilli();
    } } : _internal.time_test.Time_test_T__struct_21.T__struct_21), ({ _count : (0 : stdgo.GoInt), _desc : ("time.Now().UnixMicro()" : stdgo.GoString), _fn : function():Void {
        _internal.time_test.Time_test__u._u = stdgo._internal.time.Time_now.now().unixMicro();
    } } : _internal.time_test.Time_test_T__struct_21.T__struct_21)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _count : (0 : stdgo.GoInt), _desc : ("" : stdgo.GoString), _fn : null } : _internal.time_test.Time_test_T__struct_21.T__struct_21)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_21.T__struct_21>);
