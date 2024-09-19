package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function _reader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _r:stdgo._internal.io.Io_Reader.Reader, _c:stdgo.Chan<stdgo.GoInt>):Void {
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _c.__send__((0 : stdgo.GoInt));
                break;
            };
            if (_err != null) {
                _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _c.__send__(_n);
        };
    }
