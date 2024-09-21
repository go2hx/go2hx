package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testWriteNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _w.write((null : stdgo.Slice<stdgo.GoUInt8>));
                _w.close();
            };
            a();
        });
        var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
        stdgo._internal.io.Io_readFull.readFull(stdgo.Go.asInterface(_r), (_b.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _r.close();
    }
