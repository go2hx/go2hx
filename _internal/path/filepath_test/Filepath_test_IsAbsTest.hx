package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class IsAbsTest {
    public var _path : stdgo.GoString = "";
    public var _isAbs : Bool = false;
    public function new(?_path:stdgo.GoString, ?_isAbs:Bool) {
        if (_path != null) this._path = _path;
        if (_isAbs != null) this._isAbs = _isAbs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IsAbsTest(_path, _isAbs);
    }
}
