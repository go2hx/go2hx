package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
@:structInit class SplitTest {
    public var _path : stdgo.GoString = "";
    public var _dir : stdgo.GoString = "";
    public var _file : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_dir:stdgo.GoString, ?_file:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_dir != null) this._dir = _dir;
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SplitTest(_path, _dir, _file);
    }
}
