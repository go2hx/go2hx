package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testRangeError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-int=123456789012345678901" : stdgo.GoString), ("-int64=123456789012345678901" : stdgo.GoString), ("-uint=123456789012345678901" : stdgo.GoString), ("-uint64=123456789012345678901" : stdgo.GoString), ("-float64=1e1000" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _arg in _bad) {
            var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("parse error test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
            _fs.setOutput(stdgo._internal.io.Io_discard.discard);
            var __blank__ = _fs.int_(("int" : stdgo.GoString), (0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.int64(("int64" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.uint(("uint" : stdgo.GoString), (0u32 : stdgo.GoUInt), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.float64(("float64" : stdgo.GoString), (0 : stdgo.GoFloat64), stdgo.Go.str()?.__copy__());
            var _err = (_fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_arg?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
            if (_err == null) {
                _t.errorf(("Parse(%q)=%v; expected range error" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("invalid" : stdgo.GoString)) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("value out of range" : stdgo.GoString)) : Bool)) {
                _t.errorf(("Parse(%q)=%v; expected range error" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_err));
            };
        };
    }
