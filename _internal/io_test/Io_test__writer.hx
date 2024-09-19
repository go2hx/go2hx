package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function _writer(_w:stdgo._internal.io.Io_WriteCloser.WriteCloser, _buf:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Chan<_internal.io_test.Io_test_T_pipeReturn.T_pipeReturn>):Void {
        var __tmp__ = _w.write(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w.close();
        _c.__send__((new _internal.io_test.Io_test_T_pipeReturn.T_pipeReturn(_n, _err) : _internal.io_test.Io_test_T_pipeReturn.T_pipeReturn));
    }
