package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testParseError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _typ in (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("bool" : stdgo.GoString), ("int" : stdgo.GoString), ("int64" : stdgo.GoString), ("uint" : stdgo.GoString), ("uint64" : stdgo.GoString), ("float64" : stdgo.GoString), ("duration" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("parse error test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
            _fs.setOutput(stdgo._internal.io.Io_discard.discard);
            var __blank__ = _fs.bool_(("bool" : stdgo.GoString), false, stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.int_(("int" : stdgo.GoString), (0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.int64(("int64" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.uint(("uint" : stdgo.GoString), (0u32 : stdgo.GoUInt), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.float64(("float64" : stdgo.GoString), (0 : stdgo.GoFloat64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.duration(("duration" : stdgo.GoString), (0i64 : stdgo._internal.time.Time_Duration.Duration), stdgo.Go.str()?.__copy__());
            var _args = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[((("-" : stdgo.GoString) + _typ?.__copy__() : stdgo.GoString) + ("=x" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _err = (_fs.parse(_args) : stdgo.Error);
            if (_err == null) {
                _t.errorf(("Parse(%q)=%v; expected parse error" : stdgo.GoString), stdgo.Go.toInterface(_args), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("invalid" : stdgo.GoString)) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("parse error" : stdgo.GoString)) : Bool)) {
                _t.errorf(("Parse(%q)=%v; expected parse error" : stdgo.GoString), stdgo.Go.toInterface(_args), stdgo.Go.toInterface(_err));
            };
        };
    }
