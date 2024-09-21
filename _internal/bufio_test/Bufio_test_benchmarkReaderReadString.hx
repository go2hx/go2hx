package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function benchmarkReaderReadString(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("       foo       foo        42        42        42        42        42        42        42        42       4.2       4.2       4.2       4.2\n" : stdgo.GoString));
        var _buf = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_r));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _buf.reset(stdgo.Go.asInterface(_r));
                var __tmp__ = _buf.readString((10 : stdgo.GoUInt8)), __16:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            });
        };
    }
