package stdgo._internal.index.suffixarray;
function _writeInt(_w:stdgo._internal.io.Io_writer.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L89"
        stdgo._internal.encoding.binary.Binary_putvarint.putVarint(_buf, (_x : stdgo.GoInt64));
        var __tmp__ = _w.write((_buf.__slice__((0 : stdgo.GoInt), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L91"
        return _err;
    }
