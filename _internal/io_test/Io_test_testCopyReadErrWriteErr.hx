package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testCopyReadErrWriteErr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0 = (stdgo._internal.errors.Errors_new_.new_(("readError" : stdgo.GoString)) : stdgo.Error), __1 = (stdgo._internal.errors.Errors_new_.new_(("writeError" : stdgo.GoString)) : stdgo.Error);
var _ew = __1, _er = __0;
        var __0 = ({ _err : _er } : _internal.io_test.Io_test_T_zeroErrReader.T_zeroErrReader), __1 = ({ _err : _ew } : _internal.io_test.Io_test_T_errWriter.T_errWriter);
var _w = __1, _r = __0;
        var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_w), stdgo.Go.asInterface(_r)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (0i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_ew)) : Bool)) {
            _t.errorf(("Copy(zeroErrReader, errWriter) = %d, %v; want 0, writeError" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
