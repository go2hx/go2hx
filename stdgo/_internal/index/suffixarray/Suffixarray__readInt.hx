package stdgo._internal.index.suffixarray;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.regexp.Regexp;
function _readInt(_r:stdgo._internal.io.Io_Reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf.__slice__((0 : stdgo.GoInt), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.encoding.binary.Binary_varint.varint(_buf), _x:stdgo.GoInt64 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
        return { _0 : _x, _1 : _err };
    }
