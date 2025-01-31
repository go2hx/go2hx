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
@:structInit @:using(stdgo._internal.archive.tar.Tar_T_regFileWriter_static_extension.T_regFileWriter_static_extension) class T_regFileWriter {
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _nb : stdgo.GoInt64 = 0;
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_nb:stdgo.GoInt64) {
        if (_w != null) this._w = _w;
        if (_nb != null) this._nb = _nb;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_regFileWriter(_w, _nb);
    }
}
