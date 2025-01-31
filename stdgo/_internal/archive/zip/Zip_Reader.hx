package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.archive.zip.Zip_Reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo._internal.io.Io_ReaderAt.ReaderAt = (null : stdgo._internal.io.Io_ReaderAt.ReaderAt);
    public var file : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>);
    public var comment : stdgo.GoString = "";
    public var _decompressors : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor> = (null : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>);
    public var _baseOffset : stdgo.GoInt64 = 0;
    public var _fileListOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _fileList : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = (null : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
    public function new(?_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?file:stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>, ?comment:stdgo.GoString, ?_decompressors:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor>, ?_baseOffset:stdgo.GoInt64, ?_fileListOnce:stdgo._internal.sync.Sync_Once.Once, ?_fileList:stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>) {
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
