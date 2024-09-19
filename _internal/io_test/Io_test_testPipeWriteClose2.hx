package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testPipeWriteClose2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), __0:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> _internal.io_test.Io_test__delayClose._delayClose(_t, stdgo.Go.asInterface(_w), _c, (new _internal.io_test.Io_test_T_pipeTest.T_pipeTest() : _internal.io_test.Io_test_T_pipeTest.T_pipeTest)));
        var __tmp__ = _w.write((new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.__get__();
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_errClosedPipe.errClosedPipe)) : Bool)) {
            _t.errorf(("write to closed pipe: %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.io.Io_errClosedPipe.errClosedPipe));
        };
    }
