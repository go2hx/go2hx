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
@:structInit @:using(stdgo._internal.archive.tar.Tar_T_regFileReader_static_extension.T_regFileReader_static_extension) class T_regFileReader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _nb : stdgo.GoInt64 = 0;
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_nb:stdgo.GoInt64) {
        if (_r != null) this._r = _r;
        if (_nb != null) this._nb = _nb;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_regFileReader(_r, _nb);
    }
}
