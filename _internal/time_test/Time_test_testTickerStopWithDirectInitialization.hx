package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTickerStopWithDirectInitialization(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo._internal.time.Time_Time.Time>(0, () -> ({} : stdgo._internal.time.Time_Time.Time)) : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
        var _tk = (stdgo.Go.setRef(({ c : _c } : stdgo._internal.time.Time_Ticker.Ticker)) : stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker>);
        _tk.stop();
    }
