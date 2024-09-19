package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testPipeCloseError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        _r.closeWithError(stdgo.Go.asInterface((new _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330() : _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330)));
        {
            var __tmp__ = _w.write((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface(((new _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330() : _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330)))))) {
                _t.errorf(("Write error: got %T, want testError1" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _r.closeWithError(stdgo.Go.asInterface((new _internal.io_test.Io_test_T_testPipeCloseError___localname___testError2_6363.T_testPipeCloseError___localname___testError2_6363() : _internal.io_test.Io_test_T_testPipeCloseError___localname___testError2_6363.T_testPipeCloseError___localname___testError2_6363)));
        {
            var __tmp__ = _w.write((null : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface(((new _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330() : _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330)))))) {
                _t.errorf(("Write error: got %T, want testError1" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_pipe.pipe();
            _r = __tmp__._0;
            _w = __tmp__._1;
        };
        _w.closeWithError(stdgo.Go.asInterface((new _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330() : _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330)));
        {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface(((new _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330() : _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330)))))) {
                _t.errorf(("Read error: got %T, want testError1" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _w.closeWithError(stdgo.Go.asInterface((new _internal.io_test.Io_test_T_testPipeCloseError___localname___testError2_6363.T_testPipeCloseError___localname___testError2_6363() : _internal.io_test.Io_test_T_testPipeCloseError___localname___testError2_6363.T_testPipeCloseError___localname___testError2_6363)));
        {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface(((new _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330() : _internal.io_test.Io_test_T_testPipeCloseError___localname___testError1_6330.T_testPipeCloseError___localname___testError1_6330)))))) {
                _t.errorf(("Read error: got %T, want testError1" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
