package stdgo.archive.tar;
class Reader_static_extension {
    static public function _writeTo(_tr:Reader, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension._writeTo(_tr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_tr:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension.read(_tr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readOldGNUSparseMap(_tr:Reader, _hdr:Header, _blk:T_block):stdgo.Tuple<T_sparseDatas, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        final _blk = (_blk : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension._readOldGNUSparseMap(_tr, _hdr, _blk);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readHeader(_tr:Reader):stdgo.Tuple.Tuple3<Header, T_block, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension._readHeader(_tr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _readGNUSparsePAXHeaders(_tr:Reader, _hdr:Header):stdgo.Tuple<T_sparseDatas, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension._readGNUSparsePAXHeaders(_tr, _hdr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _handleSparseFile(_tr:Reader, _hdr:Header, _rawHdr:T_block):stdgo.Error {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        final _rawHdr = (_rawHdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension._handleSparseFile(_tr, _hdr, _rawHdr);
    }
    static public function _handleRegularFile(_tr:Reader, _hdr:Header):stdgo.Error {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        return stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension._handleRegularFile(_tr, _hdr);
    }
    static public function _next(_tr:Reader):stdgo.Tuple<Header, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension._next(_tr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function next(_tr:Reader):stdgo.Tuple<Header, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension.next(_tr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
