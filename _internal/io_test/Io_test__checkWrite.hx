package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function _checkWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _w:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Chan<stdgo.GoInt>):Void {
        var __tmp__ = _w.write(_data), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((_data.length))) {
            _t.errorf(("short write: %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_data.length)));
        };
        _c.__send__((0 : stdgo.GoInt));
    }
