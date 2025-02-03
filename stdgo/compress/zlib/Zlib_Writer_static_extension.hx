package stdgo.compress.zlib;
class Writer_static_extension {
    static public function close(_z:Writer):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>);
        return stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension.close(_z);
    }
    static public function flush(_z:Writer):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>);
        return stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension.flush(_z);
    }
    static public function write(_z:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension.write(_z, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeHeader(_z:Writer):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>);
        return stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension._writeHeader(_z);
    }
    static public function reset(_z:Writer, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>);
        stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension.reset(_z, _w);
    }
}
