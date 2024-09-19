package _internal.flag_test;
import stdgo._internal.flag.Flag;
function _testParse(_f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (_f.parsed()) {
            _t.error(stdgo.Go.toInterface(("f.Parse() = true before Parse" : stdgo.GoString)));
        };
        var _boolFlag = _f.bool_(("bool" : stdgo.GoString), false, ("bool value" : stdgo.GoString));
        var _bool2Flag = _f.bool_(("bool2" : stdgo.GoString), false, ("bool2 value" : stdgo.GoString));
        var _intFlag = _f.int_(("int" : stdgo.GoString), (0 : stdgo.GoInt), ("int value" : stdgo.GoString));
        var _int64Flag = _f.int64(("int64" : stdgo.GoString), (0i64 : stdgo.GoInt64), ("int64 value" : stdgo.GoString));
        var _uintFlag = _f.uint(("uint" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("uint value" : stdgo.GoString));
        var _uint64Flag = _f.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.GoUInt64), ("uint64 value" : stdgo.GoString));
        var _stringFlag = _f.string(("string" : stdgo.GoString), ("0" : stdgo.GoString), ("string value" : stdgo.GoString));
        var _float64Flag = _f.float64(("float64" : stdgo.GoString), (0 : stdgo.GoFloat64), ("float64 value" : stdgo.GoString));
        var _durationFlag = _f.duration(("duration" : stdgo.GoString), (5000000000i64 : stdgo._internal.time.Time_Duration.Duration), ("time.Duration value" : stdgo.GoString));
        var _extra = ("one-extra-argument" : stdgo.GoString);
        var _args = (new stdgo.Slice<stdgo.GoString>(17, 17, ...[
("-bool" : stdgo.GoString),
("-bool2=true" : stdgo.GoString),
("--int" : stdgo.GoString),
("22" : stdgo.GoString),
("--int64" : stdgo.GoString),
("0x23" : stdgo.GoString),
("-uint" : stdgo.GoString),
("24" : stdgo.GoString),
("--uint64" : stdgo.GoString),
("25" : stdgo.GoString),
("-string" : stdgo.GoString),
("hello" : stdgo.GoString),
("-float64" : stdgo.GoString),
("2718e28" : stdgo.GoString),
("-duration" : stdgo.GoString),
("2m" : stdgo.GoString),
_extra?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _err = (_f.parse(_args) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if (!_f.parsed()) {
            _t.error(stdgo.Go.toInterface(("f.Parse() = false after Parse" : stdgo.GoString)));
        };
        if (_boolFlag.value != (true)) {
            _t.error(stdgo.Go.toInterface(("bool flag should be true, is " : stdgo.GoString)), stdgo.Go.toInterface(_boolFlag.value));
        };
        if (_bool2Flag.value != (true)) {
            _t.error(stdgo.Go.toInterface(("bool2 flag should be true, is " : stdgo.GoString)), stdgo.Go.toInterface(_bool2Flag.value));
        };
        if (_intFlag.value != ((22 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("int flag should be 22, is " : stdgo.GoString)), stdgo.Go.toInterface(_intFlag.value));
        };
        if (_int64Flag.value != ((35i64 : stdgo.GoInt64))) {
            _t.error(stdgo.Go.toInterface(("int64 flag should be 0x23, is " : stdgo.GoString)), stdgo.Go.toInterface(_int64Flag.value));
        };
        if (_uintFlag.value != ((24u32 : stdgo.GoUInt))) {
            _t.error(stdgo.Go.toInterface(("uint flag should be 24, is " : stdgo.GoString)), stdgo.Go.toInterface(_uintFlag.value));
        };
        if (_uint64Flag.value != ((25i64 : stdgo.GoUInt64))) {
            _t.error(stdgo.Go.toInterface(("uint64 flag should be 25, is " : stdgo.GoString)), stdgo.Go.toInterface(_uint64Flag.value));
        };
        if (_stringFlag.value != (("hello" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("string flag should be `hello`, is " : stdgo.GoString)), stdgo.Go.toInterface(_stringFlag.value));
        };
        if (_float64Flag.value != (2.718e+31 : stdgo.GoFloat64)) {
            _t.error(stdgo.Go.toInterface(("float64 flag should be 2718e28, is " : stdgo.GoString)), stdgo.Go.toInterface(_float64Flag.value));
        };
        if (_durationFlag.value != ((120000000000i64 : stdgo._internal.time.Time_Duration.Duration))) {
            _t.error(stdgo.Go.toInterface(("duration flag should be 2m, is " : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_durationFlag.value)));
        };
        if ((_f.args().length) != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected one argument, got" : stdgo.GoString)), stdgo.Go.toInterface((_f.args().length)));
        } else if (_f.args()[(0 : stdgo.GoInt)] != (_extra)) {
            _t.errorf(("expected argument %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_extra), stdgo.Go.toInterface(_f.args()[(0 : stdgo.GoInt)]));
        };
    }
