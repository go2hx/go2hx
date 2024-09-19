package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testWriteAfterWriterClose(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _writeErr:stdgo.Error = (null : stdgo.Error);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = _w.write((("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("got error: %q; expected none" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _w.close();
                {
                    var __tmp__ = _w.write((("world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
                    _writeErr = __tmp__._1;
                };
                _done.__send__(true);
            };
            a();
        });
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _result:stdgo.GoString = ("" : stdgo.GoString);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(stdgo.Go.asInterface(_r), _buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF)) : Bool)) {
            _t.fatalf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF));
        };
        _result = ((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        _done.__get__();
        if (_result != (("hello" : stdgo.GoString))) {
            _t.errorf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
        };
        if (stdgo.Go.toInterface(_writeErr) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errClosedPipe.errClosedPipe))) {
            _t.errorf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_writeErr), stdgo.Go.toInterface(stdgo._internal.io.Io_errClosedPipe.errClosedPipe));
        };
    }
