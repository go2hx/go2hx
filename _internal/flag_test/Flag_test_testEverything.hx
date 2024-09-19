package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testEverything(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.flag.Flag_resetForTesting.resetForTesting(null);
        stdgo._internal.flag.Flag_bool_.bool_(("test_bool" : stdgo.GoString), false, ("bool value" : stdgo.GoString));
        stdgo._internal.flag.Flag_int_.int_(("test_int" : stdgo.GoString), (0 : stdgo.GoInt), ("int value" : stdgo.GoString));
        stdgo._internal.flag.Flag_int64.int64(("test_int64" : stdgo.GoString), (0i64 : stdgo.GoInt64), ("int64 value" : stdgo.GoString));
        stdgo._internal.flag.Flag_uint.uint(("test_uint" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("uint value" : stdgo.GoString));
        stdgo._internal.flag.Flag_uint64.uint64(("test_uint64" : stdgo.GoString), (0i64 : stdgo.GoUInt64), ("uint64 value" : stdgo.GoString));
        stdgo._internal.flag.Flag_string.string(("test_string" : stdgo.GoString), ("0" : stdgo.GoString), ("string value" : stdgo.GoString));
        stdgo._internal.flag.Flag_float64.float64(("test_float64" : stdgo.GoString), (0 : stdgo.GoFloat64), ("float64 value" : stdgo.GoString));
        stdgo._internal.flag.Flag_duration.duration(("test_duration" : stdgo.GoString), (0i64 : stdgo._internal.time.Time_Duration.Duration), ("time.Duration value" : stdgo.GoString));
        stdgo._internal.flag.Flag_func.func(("test_func" : stdgo.GoString), ("func value" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.Error {
            return (null : stdgo.Error);
        });
        stdgo._internal.flag.Flag_boolFunc.boolFunc(("test_boolfunc" : stdgo.GoString), ("func" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.Error {
            return (null : stdgo.Error);
        });
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
        var _desired = ("0" : stdgo.GoString);
        var _visitor = function(_f:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>):Void {
            if ((((_f.name.length) > (5 : stdgo.GoInt) : Bool) && ((_f.name.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString) == ("test_" : stdgo.GoString)) : Bool)) {
                _m[_f.name] = _f;
                var _ok = (false : Bool);
                if ((_f.value.string() : stdgo.GoString) == (_desired)) {
                    _ok = true;
                } else if (((_f.name == ("test_bool" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == _internal.flag_test.Flag_test__boolString._boolString(_desired?.__copy__())) : Bool)) {
                    _ok = true;
                } else if (((_f.name == ("test_duration" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == (_desired + ("s" : stdgo.GoString)?.__copy__() : stdgo.GoString)) : Bool)) {
                    _ok = true;
                } else if (((_f.name == ("test_func" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == stdgo.Go.str()) : Bool)) {
                    _ok = true;
                } else if (((_f.name == ("test_boolfunc" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == stdgo.Go.str()) : Bool)) {
                    _ok = true;
                };
                if (!_ok) {
                    _t.error(stdgo.Go.toInterface(("Visit: bad value" : stdgo.GoString)), stdgo.Go.toInterface((_f.value.string() : stdgo.GoString)), stdgo.Go.toInterface(("for" : stdgo.GoString)), stdgo.Go.toInterface(_f.name));
                };
            };
        };
        stdgo._internal.flag.Flag_visitAll.visitAll(_visitor);
        if ((_m.length) != ((10 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("VisitAll misses some flags" : stdgo.GoString)));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo._internal.flag.Flag_Flag.Flag)));
            };
        };
        _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
        stdgo._internal.flag.Flag_visit.visit(_visitor);
        if ((_m.length) != ((0 : stdgo.GoInt))) {
            _t.errorf(("Visit sees unset flags" : stdgo.GoString));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo._internal.flag.Flag_Flag.Flag)));
            };
        };
        stdgo._internal.flag.Flag_set.set(("test_bool" : stdgo.GoString), ("true" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_int" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_int64" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_uint" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_uint64" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_string" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_float64" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_duration" : stdgo.GoString), ("1s" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_func" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.flag.Flag_set.set(("test_boolfunc" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        _desired = ("1" : stdgo.GoString);
        stdgo._internal.flag.Flag_visit.visit(_visitor);
        if ((_m.length) != ((10 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("Visit fails after set" : stdgo.GoString)));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo._internal.flag.Flag_Flag.Flag)));
            };
        };
        var _flagNames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.flag.Flag_visit.visit(function(_f:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>):Void {
            _flagNames = (_flagNames.__append__(_f.name?.__copy__()));
        });
        if (!stdgo._internal.sort.Sort_stringsAreSorted.stringsAreSorted(_flagNames)) {
            _t.errorf(("flag names not sorted: %v" : stdgo.GoString), stdgo.Go.toInterface(_flagNames));
        };
    }
