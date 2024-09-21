package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testSymlinkStats(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _path:stdgo.GoString, _isdir:Bool):Void {
        if (_isdir) {
            _internal.os_test.Os_test__testStatAndLstat._testStatAndLstat(_t, _path?.__copy__(), true, _internal.os_test.Os_test__testIsDir._testIsDir, _internal.os_test.Os_test__testIsSymlink._testIsSymlink);
        } else {
            _internal.os_test.Os_test__testStatAndLstat._testStatAndLstat(_t, _path?.__copy__(), true, _internal.os_test.Os_test__testIsFile._testIsFile, _internal.os_test.Os_test__testIsSymlink._testIsSymlink);
        };
    }
