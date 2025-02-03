package stdgo.compress.bzip2;
class T_reader_static_extension {
    static public function _readBlock(_bz2:T_reader):stdgo.Error {
        final _bz2 = (_bz2 : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader>);
        return stdgo._internal.compress.bzip2.Bzip2_T_reader_static_extension.T_reader_static_extension._readBlock(_bz2);
    }
    static public function _read(_bz2:T_reader, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _bz2 = (_bz2 : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.bzip2.Bzip2_T_reader_static_extension.T_reader_static_extension._read(_bz2, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readFromBlock(_bz2:T_reader, _buf:Array<std.UInt>):StdTypes.Int {
        final _bz2 = (_bz2 : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.bzip2.Bzip2_T_reader_static_extension.T_reader_static_extension._readFromBlock(_bz2, _buf);
    }
    static public function read(_bz2:T_reader, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _bz2 = (_bz2 : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.bzip2.Bzip2_T_reader_static_extension.T_reader_static_extension.read(_bz2, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _setup(_bz2:T_reader, _needMagic:Bool):stdgo.Error {
        final _bz2 = (_bz2 : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader>);
        return stdgo._internal.compress.bzip2.Bzip2_T_reader_static_extension.T_reader_static_extension._setup(_bz2, _needMagic);
    }
}
