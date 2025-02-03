package stdgo.archive.zip;
class Reader_static_extension {
    static public function _openReadDir(_r:Reader, _dir:String):Array<T_fileListEntry> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        final _dir = (_dir : stdgo.GoString);
        return [for (i in stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._openReadDir(_r, _dir)) i];
    }
    static public function _openLookup(_r:Reader, _name:String):T_fileListEntry {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._openLookup(_r, _name);
    }
    static public function open(_r:Reader, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension.open(_r, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _initFileList(_r:Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._initFileList(_r);
    }
    static public function _decompressor(_r:Reader, _method:std.UInt):Decompressor {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        final _method = (_method : stdgo.GoUInt16);
        return stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._decompressor(_r, _method);
    }
    static public function registerDecompressor(_r:Reader, _method:std.UInt, _dcomp:Decompressor):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        final _method = (_method : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension.registerDecompressor(_r, _method, _dcomp);
    }
    static public function _init(_r:Reader, _rdr:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:haxe.Int64):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        final _size = (_size : stdgo.GoInt64);
        return stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension._init(_r, _rdr, _size);
    }
}
