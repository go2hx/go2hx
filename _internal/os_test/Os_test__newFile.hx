package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _newFile(_testName:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):stdgo.Ref<stdgo._internal.os.Os_File.File> {
        var _f = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(_internal.os_test.Os_test__localTmp._localTmp()?.__copy__(), (("_Go_" : stdgo.GoString) + _testName?.__copy__() : stdgo.GoString)?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("TempFile %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_err));
        };
        return _f;
    }
