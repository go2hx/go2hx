package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testPipe2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> _internal.io_test.Io_test_reader.reader(_t, stdgo.Go.asInterface(_r), _c));
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                var _p = (_buf.__slice__((0 : stdgo.GoInt), ((5 : stdgo.GoInt) + (_i * (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = _w.write(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_n != ((_p.length))) {
                    _t.errorf(("wrote %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(_n));
                };
                if (_err != null) {
                    _t.errorf(("write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                var _nn = (_c.__get__() : stdgo.GoInt);
                if (_nn != (_n)) {
                    _t.errorf(("wrote %d, read got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_nn));
                };
            });
        };
        _w.close();
        var _nn = (_c.__get__() : stdgo.GoInt);
        if (_nn != ((0 : stdgo.GoInt))) {
            _t.errorf(("final read got %d" : stdgo.GoString), stdgo.Go.toInterface(_nn));
        };
    }
