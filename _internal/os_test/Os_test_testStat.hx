package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testStat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _path = (((_internal.os_test.Os_test__sfdir._sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.os_test.Os_test__sfname._sfname?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("stat failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_internal.os_test.Os_test__equal._equal(_internal.os_test.Os_test__sfname._sfname?.__copy__(), _dir.name()?.__copy__())) {
            _t.error(stdgo.Go.toInterface(("name should be " : stdgo.GoString)), stdgo.Go.toInterface(_internal.os_test.Os_test__sfname._sfname), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.name()));
        };
        var _filesize = (_internal.os_test.Os_test__size._size(_path?.__copy__(), _t) : stdgo.GoInt64);
        if (_dir.size() != (_filesize)) {
            _t.error(stdgo.Go.toInterface(("size should be" : stdgo.GoString)), stdgo.Go.toInterface(_filesize), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.size()));
        };
    }
