package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _testAfterQueuing(_delta:stdgo._internal.time.Time_Duration.Duration):stdgo.Error {
        var _result = (new stdgo.Chan<_internal.time_test.Time_test_T_afterResult.T_afterResult>((_internal.time_test.Time_test__slots._slots.length : stdgo.GoInt).toBasic(), () -> ({} : _internal.time_test.Time_test_T_afterResult.T_afterResult)) : stdgo.Chan<_internal.time_test.Time_test_T_afterResult.T_afterResult>);
        var _t0 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        for (__2 => _slot in _internal.time_test.Time_test__slots._slots) {
            stdgo.Go.routine(() -> _internal.time_test.Time_test__await._await(_slot, _result, stdgo._internal.time.Time_after.after(((_slot : stdgo._internal.time.Time_Duration.Duration) * _delta : stdgo._internal.time.Time_Duration.Duration))));
        };
        var _order:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _times:stdgo.Slice<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Slice<stdgo._internal.time.Time_Time.Time>);
        for (_ => _ in _internal.time_test.Time_test__slots._slots) {
            var _r = (_result.__get__()?.__copy__() : _internal.time_test.Time_test_T_afterResult.T_afterResult);
            _order = (_order.__append__(_r._slot));
            _times = (_times.__append__(_r._t?.__copy__()));
        };
        for (_i => _ in _order) {
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_order[(_i : stdgo.GoInt)] < _order[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("After calls returned out of order: %v" : stdgo.GoString), stdgo.Go.toInterface(_order));
            };
        };
        for (_i => _t in _times) {
            var _dt = (_t.sub(_t0?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
            var _target = ((_order[(_i : stdgo.GoInt)] : stdgo._internal.time.Time_Duration.Duration) * _delta : stdgo._internal.time.Time_Duration.Duration);
            if (((_dt < (_target - (_delta / (2i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : Bool) || (_dt > (_target + (_delta * (10i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("After(%s) arrived at %s, expected [%s,%s]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_target)), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt)), stdgo.Go.toInterface(stdgo.Go.asInterface((_target - (_delta / (2i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface((_target + (_delta * (10i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration))));
            };
        };
        return (null : stdgo.Error);
    }
