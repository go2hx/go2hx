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
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension) class T_openDir {
    public var _e : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
    public var _files : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = (null : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_e:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>, ?_files:stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>, ?_offset:stdgo.GoInt) {
        if (_e != null) this._e = _e;
        if (_files != null) this._files = _files;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_openDir(_e, _files, _offset);
    }
}
