package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _checkTime(_time:stdgo._internal.time.Time_Time.Time, _test:stdgo.Ref<_internal.time_test.Time_test_ParseTest.ParseTest>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (((_test._yearSign >= (0 : stdgo.GoInt) : Bool) && ((_test._yearSign * _time.year() : stdgo.GoInt) != (2010 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("%s: bad year: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.year()), stdgo.Go.toInterface((2010 : stdgo.GoInt)));
        };
        if (_time.month() != ((2 : stdgo._internal.time.Time_Month.Month))) {
            _t.errorf(("%s: bad month: %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_time.month())), stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.time.Time_Month.Month))));
        };
        if (_time.day() != ((4 : stdgo.GoInt))) {
            _t.errorf(("%s: bad day: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.day()), stdgo.Go.toInterface((4 : stdgo.GoInt)));
        };
        if (_time.hour() != ((21 : stdgo.GoInt))) {
            _t.errorf(("%s: bad hour: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.hour()), stdgo.Go.toInterface((21 : stdgo.GoInt)));
        };
        if (_time.minute() != ((0 : stdgo.GoInt))) {
            _t.errorf(("%s: bad minute: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.minute()), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        };
        if (_time.second() != ((57 : stdgo.GoInt))) {
            _t.errorf(("%s: bad second: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.second()), stdgo.Go.toInterface((57 : stdgo.GoInt)));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(((("012345678" : stdgo.GoString).__slice__(0, _test._fracDigits) : stdgo.GoString) + (("000000000" : stdgo.GoString).__slice__(0, ((9 : stdgo.GoInt) - _test._fracDigits : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _nanosec:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        if (_time.nanosecond() != ((_nanosec : stdgo.GoInt))) {
            _t.errorf(("%s: bad nanosecond: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.nanosecond()), stdgo.Go.toInterface(_nanosec));
        };
        var __tmp__ = _time.zone(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if ((_test._hasTZ && (_offset != (-28800 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("%s: bad tz offset: %s %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface((-28800 : stdgo.GoInt)));
        };
        if ((_test._hasWD && (_time.weekday() != (4 : stdgo._internal.time.Time_Weekday.Weekday)) : Bool)) {
            _t.errorf(("%s: bad weekday: %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_time.weekday())), stdgo.Go.toInterface(stdgo.Go.asInterface((4 : stdgo._internal.time.Time_Weekday.Weekday))));
        };
    }
