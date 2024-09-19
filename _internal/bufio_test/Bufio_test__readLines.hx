package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _readLines(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.GoString {
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        while (true) {
            var __tmp__ = _b.readString((10 : stdgo.GoUInt8)), _s1:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                break;
            };
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.testing.iotest.Iotest_errTimeout.errTimeout)) : Bool)) {
                throw stdgo.Go.toInterface((("GetLines: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
            };
            _s = (_s + (_s1)?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
