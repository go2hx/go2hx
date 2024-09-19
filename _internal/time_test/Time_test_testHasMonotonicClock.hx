package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testHasMonotonicClock(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _yes = (function(_expr:stdgo.GoString, _tt:stdgo._internal.time.Time_Time.Time):Void {
            if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) == ((0i64 : stdgo.GoInt64))) {
                _t.errorf(("%s: missing monotonic clock reading" : stdgo.GoString), stdgo.Go.toInterface(_expr));
            };
        } : (stdgo.GoString, stdgo._internal.time.Time_Time.Time) -> Void);
        var _no = (function(_expr:stdgo.GoString, _tt:stdgo._internal.time.Time_Time.Time):Void {
            if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
                _t.errorf(("%s: unexpected monotonic clock reading" : stdgo.GoString), stdgo.Go.toInterface(_expr));
            };
        } : (stdgo.GoString, stdgo._internal.time.Time_Time.Time) -> Void);
        _yes(("<-After(1)" : stdgo.GoString), stdgo._internal.time.Time_after.after((1i64 : stdgo._internal.time.Time_Duration.Duration)).__get__()?.__copy__());
        var _ticker = stdgo._internal.time.Time_newTicker.newTicker((1i64 : stdgo._internal.time.Time_Duration.Duration));
        _yes(("<-Tick(1)" : stdgo.GoString), _ticker.c.__get__()?.__copy__());
        _ticker.stop();
        _no(("Date(2009, 11, 23, 0, 0, 0, 0, UTC)" : stdgo.GoString), stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time_Month.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__());
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Sat Mar  7 11:06:39 PST 2015" : stdgo.GoString)), _tp:stdgo._internal.time.Time_Time.Time = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        _no(("Parse(UnixDate, \"Sat Mar  7 11:06:39 PST 2015\")" : stdgo.GoString), _tp?.__copy__());
        _no(("Unix(1486057371, 0)" : stdgo.GoString), stdgo._internal.time.Time_unix.unix((1486057371i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__());
        _yes(("Now()" : stdgo.GoString), stdgo._internal.time.Time_now.now()?.__copy__());
        var _tu = (stdgo._internal.time.Time_unix.unix((1486057371i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _tm = (_tu?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.time.Time_setMono.setMono((stdgo.Go.setRef(_tm) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>), (123456i64 : stdgo.GoInt64));
        _no(("tu" : stdgo.GoString), _tu?.__copy__());
        _yes(("tm" : stdgo.GoString), _tm?.__copy__());
        _no(("tu.Add(1)" : stdgo.GoString), _tu.add((1i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
        _no(("tu.In(UTC)" : stdgo.GoString), _tu.in_(stdgo._internal.time.Time_utc.utc)?.__copy__());
        _no(("tu.AddDate(1, 1, 1)" : stdgo.GoString), _tu.addDate((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__());
        _no(("tu.AddDate(0, 0, 0)" : stdgo.GoString), _tu.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
        _no(("tu.Local()" : stdgo.GoString), _tu.local()?.__copy__());
        _no(("tu.UTC()" : stdgo.GoString), _tu.utc()?.__copy__());
        _no(("tu.Round(2)" : stdgo.GoString), _tu.round((2i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
        _no(("tu.Truncate(2)" : stdgo.GoString), _tu.truncate((2i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
        _yes(("tm.Add(1)" : stdgo.GoString), _tm.add((1i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
        _no(("tm.AddDate(1, 1, 1)" : stdgo.GoString), _tm.addDate((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__());
        _no(("tm.AddDate(0, 0, 0)" : stdgo.GoString), _tm.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
        _no(("tm.In(UTC)" : stdgo.GoString), _tm.in_(stdgo._internal.time.Time_utc.utc)?.__copy__());
        _no(("tm.Local()" : stdgo.GoString), _tm.local()?.__copy__());
        _no(("tm.UTC()" : stdgo.GoString), _tm.utc()?.__copy__());
        _no(("tm.Round(2)" : stdgo.GoString), _tm.round((2i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
        _no(("tm.Truncate(2)" : stdgo.GoString), _tm.truncate((2i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
    }
