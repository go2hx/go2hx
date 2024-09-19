package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testNilFileMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        for (__8 => _tt in _internal.os_test.Os_test__nilFileMethodTests._nilFileMethodTests) {
            var _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _got = (_tt._f(_file) : stdgo.Error);
            if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo._internal.os.Os_errInvalid.errInvalid))) {
                _t.errorf(("%v should fail when f is nil; got %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got));
            };
        };
    }
