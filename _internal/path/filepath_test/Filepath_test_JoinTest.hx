package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class JoinTest {
    public var _elem : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _path : stdgo.GoString = "";
    public function new(?_elem:stdgo.Slice<stdgo.GoString>, ?_path:stdgo.GoString) {
        if (_elem != null) this._elem = _elem;
        if (_path != null) this._path = _path;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new JoinTest(_elem, _path);
    }
}
