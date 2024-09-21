package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testNewFileInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        {};
        {
            var _f = stdgo._internal.os.Os_newFile.newFile((4294967295 : stdgo.GoUIntptr), ("invalid" : stdgo.GoString));
            if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                _t.errorf(("NewFile(-1) got %v want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            };
        };
    }
