package stdgo._internal.runtime.pprof;
function _writeGoroutineStacks(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L702"
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                var _n = (stdgo._internal.runtime.Runtime_stack.stack(_buf, true) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L704"
                if ((_n < (_buf.length) : Bool)) {
                    _buf = (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L706"
                    break;
                };
//"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L708"
                if (((_buf.length) >= (67108864 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L710"
                    break;
                };
_buf = (new stdgo.Slice<stdgo.GoUInt8>(((2 : stdgo.GoInt) * (_buf.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        var __tmp__ = _w.write(_buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L715"
        return _err;
    }
