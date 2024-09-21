package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function benchmarkWriterFlush(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _bw = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo._internal.io.Io_discard.discard);
        var _str = (stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (50 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bw.writeString(_str?.__copy__());
                _bw.flush();
            });
        };
    }
