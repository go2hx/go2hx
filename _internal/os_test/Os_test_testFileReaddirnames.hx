package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testFileReaddirnames(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        _t.run(("." : stdgo.GoString), _internal.os_test.Os_test__testReaddirnames._testReaddirnames(("." : stdgo.GoString), _internal.os_test.Os_test__dot._dot));
        _t.run(("sysdir" : stdgo.GoString), _internal.os_test.Os_test__testReaddirnames._testReaddirnames(_internal.os_test.Os_test__sysdir._sysdir._name?.__copy__(), _internal.os_test.Os_test__sysdir._sysdir._files));
        _t.run(("TempDir" : stdgo.GoString), _internal.os_test.Os_test__testReaddirnames._testReaddirnames(_t.tempDir()?.__copy__(), (null : stdgo.Slice<stdgo.GoString>)));
    }
