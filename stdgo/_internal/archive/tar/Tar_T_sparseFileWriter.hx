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
@:structInit @:using(stdgo._internal.archive.tar.Tar_T_sparseFileWriter_static_extension.T_sparseFileWriter_static_extension) class T_sparseFileWriter {
    public var _fw : stdgo._internal.archive.tar.Tar_T_fileWriter.T_fileWriter = (null : stdgo._internal.archive.tar.Tar_T_fileWriter.T_fileWriter);
    public var _sp : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas = new stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas(0, 0);
    public var _pos : stdgo.GoInt64 = 0;
    public function new(?_fw:stdgo._internal.archive.tar.Tar_T_fileWriter.T_fileWriter, ?_sp:stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas, ?_pos:stdgo.GoInt64) {
        if (_fw != null) this._fw = _fw;
        if (_sp != null) this._sp = _sp;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sparseFileWriter(_fw, _sp, _pos);
    }
}
