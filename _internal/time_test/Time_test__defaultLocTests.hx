package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _defaultLocTests : stdgo.Slice<_internal.time_test.Time_test_T__struct_27.T__struct_27> = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_27.T__struct_27>(36, 36, ...[
({ _name : ("After" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.after(_t2?.__copy__()) == (_t2.after(_t1?.__copy__()));
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Before" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.before(_t2?.__copy__()) == (_t2.before(_t1?.__copy__()));
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Equal" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.equal(_t2?.__copy__()) == (_t2.equal(_t1?.__copy__()));
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Compare" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.compare(_t2?.__copy__()) == (_t2.compare(_t1?.__copy__()));
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("IsZero" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.isZero() == (_t2.isZero());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Date" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _t1.date(), _a1:stdgo.GoInt = __tmp__._0, _b1:stdgo._internal.time.Time_Month.Month = __tmp__._1, _c1:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t2.date(), _a2:stdgo.GoInt = __tmp__._0, _b2:stdgo._internal.time.Time_Month.Month = __tmp__._1, _c2:stdgo.GoInt = __tmp__._2;
        return ((_a1 == (_a2) && _b1 == (_b2) : Bool) && (_c1 == _c2) : Bool);
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Year" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.year() == (_t2.year());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Month" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.month() == (_t2.month());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Day" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.day() == (_t2.day());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Weekday" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.weekday() == (_t2.weekday());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("ISOWeek" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _t1.isoweek(), _a1:stdgo.GoInt = __tmp__._0, _b1:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _t2.isoweek(), _a2:stdgo.GoInt = __tmp__._0, _b2:stdgo.GoInt = __tmp__._1;
        return ((_a1 == _a2) && (_b1 == _b2) : Bool);
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Clock" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _t1.clock(), _a1:stdgo.GoInt = __tmp__._0, _b1:stdgo.GoInt = __tmp__._1, _c1:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t2.clock(), _a2:stdgo.GoInt = __tmp__._0, _b2:stdgo.GoInt = __tmp__._1, _c2:stdgo.GoInt = __tmp__._2;
        return ((_a1 == (_a2) && _b1 == (_b2) : Bool) && (_c1 == _c2) : Bool);
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Hour" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.hour() == (_t2.hour());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Minute" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.minute() == (_t2.minute());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Second" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.second() == (_t2.second());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Nanosecond" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.hour() == (_t2.hour());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("YearDay" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.yearDay() == (_t2.yearDay());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Add" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.add((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration)).equal(_t2.add((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Sub" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.sub(_t2?.__copy__()) == (_t2.sub(_t1?.__copy__()));
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("AddDate" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return stdgo.Go.toInterface(_t1.addDate((1991 : stdgo.GoInt), (9 : stdgo.GoInt), (3 : stdgo.GoInt))) == stdgo.Go.toInterface(_t2.addDate((1991 : stdgo.GoInt), (9 : stdgo.GoInt), (3 : stdgo.GoInt)));
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("UTC" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return stdgo.Go.toInterface(_t1.utc()) == stdgo.Go.toInterface(_t2.utc());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Local" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return stdgo.Go.toInterface(_t1.local()) == stdgo.Go.toInterface(_t2.local());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("In" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return stdgo.Go.toInterface(_t1.in_(stdgo._internal.time.Time_utc.utc)) == stdgo.Go.toInterface(_t2.in_(stdgo._internal.time.Time_utc.utc));
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Local" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return stdgo.Go.toInterface(_t1.local()) == stdgo.Go.toInterface(_t2.local());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Zone" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _t1.zone(), _a1:stdgo.GoString = __tmp__._0, _b1:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _t2.zone(), _a2:stdgo.GoString = __tmp__._0, _b2:stdgo.GoInt = __tmp__._1;
        return ((_a1 == _a2) && (_b1 == _b2) : Bool);
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Unix" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.unix() == (_t2.unix());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("UnixNano" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.unixNano() == (_t2.unixNano());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("UnixMilli" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.unixMilli() == (_t2.unixMilli());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("UnixMicro" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.unixMicro() == (_t2.unixMicro());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("MarshalBinary" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _t1.marshalBinary(), _a1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalBinary(), _a2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return (stdgo._internal.bytes.Bytes_equal.equal(_a1, _a2) && (stdgo.Go.toInterface(_b1) == stdgo.Go.toInterface(_b2)) : Bool);
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("GobEncode" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _t1.gobEncode(), _a1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.gobEncode(), _a2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return (stdgo._internal.bytes.Bytes_equal.equal(_a1, _a2) && (stdgo.Go.toInterface(_b1) == stdgo.Go.toInterface(_b2)) : Bool);
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("MarshalJSON" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _t1.marshalJSON(), _a1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalJSON(), _a2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return (stdgo._internal.bytes.Bytes_equal.equal(_a1, _a2) && (stdgo.Go.toInterface(_b1) == stdgo.Go.toInterface(_b2)) : Bool);
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("MarshalText" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        var __tmp__ = _t1.marshalText(), _a1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalText(), _a2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return (stdgo._internal.bytes.Bytes_equal.equal(_a1, _a2) && (stdgo.Go.toInterface(_b1) == stdgo.Go.toInterface(_b2)) : Bool);
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Truncate" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.truncate((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration)).equal(_t2.truncate((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("Round" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return _t1.round((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration)).equal(_t2.round((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27),
({ _name : ("== Time{}" : stdgo.GoString), _f : function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
        return (stdgo.Go.toInterface(_t1) == stdgo.Go.toInterface((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time))) == ((stdgo.Go.toInterface(_t2) == stdgo.Go.toInterface((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time))));
    } } : _internal.time_test.Time_test_T__struct_27.T__struct_27)].concat([for (i in 36 ... (36 > 36 ? 36 : 36 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : _internal.time_test.Time_test_T__struct_27.T__struct_27)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_27.T__struct_27>);
