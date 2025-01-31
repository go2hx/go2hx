package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.archive.tar.Tar_T_sparseFileReader_static_extension.T_sparseFileReader_static_extension) class T_sparseFileReader {
    public var _fr : stdgo._internal.archive.tar.Tar_T_fileReader.T_fileReader = (null : stdgo._internal.archive.tar.Tar_T_fileReader.T_fileReader);
    public var _sp : stdgo._internal.archive.tar.Tar_T_sparseHoles.T_sparseHoles = new stdgo._internal.archive.tar.Tar_T_sparseHoles.T_sparseHoles(0, 0);
    public var _pos : stdgo.GoInt64 = 0;
    public function new(?_fr:stdgo._internal.archive.tar.Tar_T_fileReader.T_fileReader, ?_sp:stdgo._internal.archive.tar.Tar_T_sparseHoles.T_sparseHoles, ?_pos:stdgo.GoInt64) {
        if (_fr != null) this._fr = _fr;
        if (_sp != null) this._sp = _sp;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sparseFileReader(_fr, _sp, _pos);
    }
}
