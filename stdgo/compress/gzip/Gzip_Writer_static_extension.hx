package stdgo.compress.gzip;
class Writer_static_extension {
    static public function close(_z:Writer):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        return stdgo._internal.compress.gzip.Gzip_Writer_static_extension.Writer_static_extension.close(_z);
    }
    static public function flush(_z:Writer):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        return stdgo._internal.compress.gzip.Gzip_Writer_static_extension.Writer_static_extension.flush(_z);
    }
    static public function write(_z:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_Writer_static_extension.Writer_static_extension.write(_z, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeString(_z:Writer, _s:String):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.compress.gzip.Gzip_Writer_static_extension.Writer_static_extension._writeString(_z, _s);
    }
    static public function _writeBytes(_z:Writer, _b:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.gzip.Gzip_Writer_static_extension.Writer_static_extension._writeBytes(_z, _b);
    }
    static public function reset(_z:Writer, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        stdgo._internal.compress.gzip.Gzip_Writer_static_extension.Writer_static_extension.reset(_z, _w);
    }
    static public function _init(_z:Writer, _w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        final _level = (_level : stdgo.GoInt);
        stdgo._internal.compress.gzip.Gzip_Writer_static_extension.Writer_static_extension._init(_z, _w, _level);
    }
}
