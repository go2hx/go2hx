package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testDirSeek(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.os.Os_open.open(_wd?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _f.readdirnames((0 : stdgo.GoInt)), _dirnames1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _f.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), _ret:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_ret != ((0i64 : stdgo.GoInt64))) {
            _t.fatalf(("seek result not zero: %d" : stdgo.GoString), stdgo.Go.toInterface(_ret));
        };
        var __tmp__ = _f.readdirnames((0 : stdgo.GoInt)), _dirnames2:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_dirnames1.length) != ((_dirnames2.length))) {
            _t.fatalf(("listings have different lengths: %d and %d\n" : stdgo.GoString), stdgo.Go.toInterface((_dirnames1.length)), stdgo.Go.toInterface((_dirnames2.length)));
        };
        for (_i => _n1 in _dirnames1) {
            var _n2 = (_dirnames2[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            if (_n1 != (_n2)) {
                _t.fatalf(("different name i=%d n1=%s n2=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2));
            };
        };
    }
