package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testPipeReadClose(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.io_test.Io_test__pipeTests._pipeTests) {
            var _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
            if (_tt._async) {
                stdgo.Go.routine(() -> _internal.io_test.Io_test__delayClose._delayClose(_t, stdgo.Go.asInterface(_w), _c, _tt?.__copy__()));
            } else {
                _internal.io_test.Io_test__delayClose._delayClose(_t, stdgo.Go.asInterface(_w), _c, _tt?.__copy__());
            };
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _c.__get__();
            var _want = (_tt._err : stdgo.Error);
            if (_want == null) {
                _want = stdgo._internal.io.Io_eof.eof;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("read from closed pipe: %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
            if (_n != ((0 : stdgo.GoInt))) {
                _t.errorf(("read on closed pipe returned %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
            {
                _err = _r.close();
                if (_err != null) {
                    _t.errorf(("r.Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
