package stdgo._internal.encoding.pem;
function _writeHeader(_out:stdgo._internal.io.Io_writer.Writer, _k:stdgo.GoString, _v:stdgo.GoString):stdgo.Error {
        var __tmp__ = _out.write(((((_k + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
