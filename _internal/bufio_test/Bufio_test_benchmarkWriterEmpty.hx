package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function benchmarkWriterEmpty(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _str = (stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _bs = (_str : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _bw = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo._internal.io.Io_discard.discard);
                _bw.flush();
                _bw.writeByte((97 : stdgo.GoUInt8));
                _bw.flush();
                _bw.writeRune((66 : stdgo.GoInt32));
                _bw.flush();
                _bw.write(_bs);
                _bw.flush();
                _bw.writeString(_str?.__copy__());
                _bw.flush();
            });
        };
    }
