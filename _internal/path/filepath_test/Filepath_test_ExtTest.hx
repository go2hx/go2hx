package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class ExtTest {
    public var _path : stdgo.GoString = "";
    public var _ext : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_ext:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_ext != null) this._ext = _ext;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExtTest(_path, _ext);
    }
}
