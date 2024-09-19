package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
@:structInit class PathTest {
    public var _path : stdgo.GoString = "";
    public var _result : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_result:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PathTest(_path, _result);
    }
}
