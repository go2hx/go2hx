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
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension) class T_headerFileInfo {
    public var _fh : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
    public function new(?_fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>) {
        if (_fh != null) this._fh = _fh;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_fh);
    }
}
