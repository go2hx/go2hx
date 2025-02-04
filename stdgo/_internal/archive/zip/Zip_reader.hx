package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
    public var file : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>>);
    public var comment : stdgo.GoString = "";
    public var _decompressors : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor> = (null : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor>);
    public var _baseOffset : stdgo.GoInt64 = 0;
    public var _fileListOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _fileList : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = (null : stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>);
    public function new(?_r:stdgo._internal.io.Io_readerat.ReaderAt, ?file:stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>>, ?comment:stdgo.GoString, ?_decompressors:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor>, ?_baseOffset:stdgo.GoInt64, ?_fileListOnce:stdgo._internal.sync.Sync_once.Once, ?_fileList:stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>) {
        if (_r != null) this._r = _r;
        if (file != null) this.file = file;
        if (comment != null) this.comment = comment;
        if (_decompressors != null) this._decompressors = _decompressors;
        if (_baseOffset != null) this._baseOffset = _baseOffset;
        if (_fileListOnce != null) this._fileListOnce = _fileListOnce;
        if (_fileList != null) this._fileList = _fileList;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, file, comment, _decompressors, _baseOffset, _fileListOnce, _fileList);
    }
}
