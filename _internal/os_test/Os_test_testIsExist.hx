package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testIsExist(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.os_test.Os_test__isExistTests._isExistTests) {
            {
                var _is = (stdgo._internal.os.Os_isExist.isExist(_tt._err) : Bool);
                if (_is != (_tt._is)) {
                    _t.errorf(("os.IsExist(%T %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_is), stdgo.Go.toInterface(_tt._is));
                };
            };
            {
                var _is = (stdgo._internal.errors.Errors_is_.is_(_tt._err, stdgo._internal.io.fs.Fs_errExist.errExist) : Bool);
                if (_is != (_tt._is)) {
                    _t.errorf(("errors.Is(%T %v, fs.ErrExist) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_is), stdgo.Go.toInterface(_tt._is));
                };
            };
            {
                var _isnot = (stdgo._internal.os.Os_isNotExist.isNotExist(_tt._err) : Bool);
                if (_isnot != (_tt._isnot)) {
                    _t.errorf(("os.IsNotExist(%T %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_isnot), stdgo.Go.toInterface(_tt._isnot));
                };
            };
            {
                var _isnot = (stdgo._internal.errors.Errors_is_.is_(_tt._err, stdgo._internal.io.fs.Fs_errNotExist.errNotExist) : Bool);
                if (_isnot != (_tt._isnot)) {
                    _t.errorf(("errors.Is(%T %v, fs.ErrNotExist) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_isnot), stdgo.Go.toInterface(_tt._isnot));
                };
            };
        };
    }
