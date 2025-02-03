package stdgo.compress.gzip;
class Reader_static_extension {
    static public function close(_z:Reader):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
        return stdgo._internal.compress.gzip.Gzip_Reader_static_extension.Reader_static_extension.close(_z);
    }
    static public function read(_z:Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_Reader_static_extension.Reader_static_extension.read(_z, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readHeader(_z:Reader):stdgo.Tuple<Header, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_Reader_static_extension.Reader_static_extension._readHeader(_z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readString(_z:Reader):stdgo.Tuple<String, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_Reader_static_extension.Reader_static_extension._readString(_z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function multistream(_z:Reader, _ok:Bool):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
        stdgo._internal.compress.gzip.Gzip_Reader_static_extension.Reader_static_extension.multistream(_z, _ok);
    }
    static public function reset(_z:Reader, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
        return stdgo._internal.compress.gzip.Gzip_Reader_static_extension.Reader_static_extension.reset(_z, _r);
    }
}
