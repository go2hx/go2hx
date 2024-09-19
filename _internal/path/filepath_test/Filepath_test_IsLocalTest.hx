package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class IsLocalTest {
    public var _path : stdgo.GoString = "";
    public var _isLocal : Bool = false;
    public function new(?_path:stdgo.GoString, ?_isLocal:Bool) {
        if (_path != null) this._path = _path;
        if (_isLocal != null) this._isLocal = _isLocal;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IsLocalTest(_path, _isLocal);
    }
}
