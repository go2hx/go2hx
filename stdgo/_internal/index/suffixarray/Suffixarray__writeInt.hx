package stdgo._internal.index.suffixarray;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.regexp.Regexp;
function _writeInt(_w:stdgo._internal.io.Io_Writer.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt):stdgo.Error {
        stdgo._internal.encoding.binary.Binary_putVarint.putVarint(_buf, (_x : stdgo.GoInt64));
        var __tmp__ = _w.write((_buf.__slice__((0 : stdgo.GoInt), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
