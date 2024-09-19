package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
var _testFsys : stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>>();
        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
        x.set(("hello.txt" : stdgo.GoString), ({ data : (("hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), mode : (302u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode), modTime : stdgo._internal.time.Time_now.now()?.__copy__(), sys : stdgo.Go.toInterface(stdgo.Go.pointer(_internal.io.fs_test.Fs_test__sysValue._sysValue)) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile));
x.set(("sub/goodbye.txt" : stdgo.GoString), ({ data : (("goodbye, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), mode : (302u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode), modTime : stdgo._internal.time.Time_now.now()?.__copy__(), sys : stdgo.Go.toInterface(stdgo.Go.pointer(_internal.io.fs_test.Fs_test__sysValue._sysValue)) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>>);
