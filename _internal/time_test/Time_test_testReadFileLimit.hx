package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testReadFileLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(("/dev/zero" : stdgo.GoString)), __2:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.skip(stdgo.Go.toInterface(("skipping test without a /dev/zero" : stdgo.GoString)));
            };
        };
        var __tmp__ = stdgo._internal.time.Time_readFile.readFile(("/dev/zero" : stdgo.GoString)), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err == null) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("is too large" : stdgo.GoString)) : Bool)) {
            _t.errorf(("readFile(%q) error = %v; want error containing \'is too large\'" : stdgo.GoString), stdgo.Go.toInterface(("/dev/zero" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
