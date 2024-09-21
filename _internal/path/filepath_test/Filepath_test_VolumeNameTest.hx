package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class VolumeNameTest {
    public var _path : stdgo.GoString = "";
    public var _vol : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_vol:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_vol != null) this._vol = _vol;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new VolumeNameTest(_path, _vol);
    }
}
