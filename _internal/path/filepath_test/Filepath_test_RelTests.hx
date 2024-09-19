package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class RelTests {
    public var _root : stdgo.GoString = "";
    public var _path : stdgo.GoString = "";
    public var _want : stdgo.GoString = "";
    public function new(?_root:stdgo.GoString, ?_path:stdgo.GoString, ?_want:stdgo.GoString) {
        if (_root != null) this._root = _root;
        if (_path != null) this._path = _path;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RelTests(_root, _path, _want);
    }
}
