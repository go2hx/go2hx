package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class EvalSymlinksTest {
    public var _path : stdgo.GoString = "";
    public var _dest : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_dest:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_dest != null) this._dest = _dest;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EvalSymlinksTest(_path, _dest);
    }
}
