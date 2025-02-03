package stdgo.compress.zlib;
class T_reader_static_extension {
    static public function reset(_z:T_reader, _r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader>);
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.zlib.Zlib_T_reader_static_extension.T_reader_static_extension.reset(_z, _r, _dict);
    }
    static public function close(_z:T_reader):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader>);
        return stdgo._internal.compress.zlib.Zlib_T_reader_static_extension.T_reader_static_extension.close(_z);
    }
    static public function read(_z:T_reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib_T_reader_static_extension.T_reader_static_extension.read(_z, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
