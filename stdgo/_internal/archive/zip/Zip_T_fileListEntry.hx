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
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension) class T_fileListEntry {
    public var _name : stdgo.GoString = "";
    public var _file : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
    public var _isDir : Bool = false;
    public var _isDup : Bool = false;
    public function new(?_name:stdgo.GoString, ?_file:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, ?_isDir:Bool, ?_isDup:Bool) {
        if (_name != null) this._name = _name;
        if (_file != null) this._file = _file;
        if (_isDir != null) this._isDir = _isDir;
        if (_isDup != null) this._isDup = _isDup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileListEntry(_name, _file, _isDir, _isDup);
    }
}
