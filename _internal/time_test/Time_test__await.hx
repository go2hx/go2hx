package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _await(_slot:stdgo.GoInt, _result:stdgo.Chan<_internal.time_test.Time_test_T_afterResult.T_afterResult>, _ac:stdgo.Chan<stdgo._internal.time.Time_Time.Time>):Void {
        _result.__send__((new _internal.time_test.Time_test_T_afterResult.T_afterResult(_slot, _ac.__get__()?.__copy__()) : _internal.time_test.Time_test_T_afterResult.T_afterResult));
    }
