package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function benchmarkReaderEmpty(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _str = (stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (16384 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _br = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_str?.__copy__())));
                var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(_br)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
                if (_n != ((_str.length : stdgo.GoInt64))) {
                    _b.fatal(stdgo.Go.toInterface(("wrong length" : stdgo.GoString)));
                };
            });
        };
    }
