package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testPipe1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.routine(() -> _internal.io_test.Io_test__checkWrite._checkWrite(_t, stdgo.Go.asInterface(_w), (("hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _c));
        var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        } else if (((_n != (12 : stdgo.GoInt)) || (((_buf.__slice__((0 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("hello, world" : stdgo.GoString)) : Bool)) {
            _t.errorf(("bad read: got %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
        _c.__get__();
        _r.close();
        _w.close();
    }
