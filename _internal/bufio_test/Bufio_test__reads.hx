package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _reads(_buf:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _m:stdgo.GoInt):stdgo.GoString {
        var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1000, 1000, ...[for (i in 0 ... 1000) (0 : stdgo.GoUInt8)]);
        var _nb = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = _buf.read((_b.__slice__(_nb, (_nb + _m : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _nb = (_nb + (_n) : stdgo.GoInt);
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                break;
            };
        };
        return ((_b.__slice__((0 : stdgo.GoInt), _nb) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
