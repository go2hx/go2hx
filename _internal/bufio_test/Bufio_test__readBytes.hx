package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _readBytes(_buf:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.GoString {
        var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1000, 1000, ...[for (i in 0 ... 1000) (0 : stdgo.GoUInt8)]);
        var _nb = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = _buf.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                break;
            };
            if (_err == null) {
                _b[(_nb : stdgo.GoInt)] = _c;
                _nb++;
            } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.testing.iotest.Iotest_errTimeout.errTimeout))) {
                throw stdgo.Go.toInterface((("Data: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
            };
        };
        return ((_b.__slice__((0 : stdgo.GoInt), _nb) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
