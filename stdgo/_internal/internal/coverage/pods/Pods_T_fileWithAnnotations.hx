package stdgo._internal.internal.coverage.pods;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations_static_extension.T_fileWithAnnotations_static_extension) class T_fileWithAnnotations {
    public var _file : stdgo.GoString = "";
    public var _origin : stdgo.GoInt = 0;
    public var _pid : stdgo.GoInt = 0;
    public function new(?_file:stdgo.GoString, ?_origin:stdgo.GoInt, ?_pid:stdgo.GoInt) {
        if (_file != null) this._file = _file;
        if (_origin != null) this._origin = _origin;
        if (_pid != null) this._pid = _pid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileWithAnnotations(_file, _origin, _pid);
    }
}
