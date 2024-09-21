package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit @:using(_internal.path.filepath_test.Filepath_test_T_globTest_static_extension.T_globTest_static_extension) class T_globTest {
    public var _pattern : stdgo.GoString = "";
    public var _matches : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_pattern:stdgo.GoString, ?_matches:stdgo.Slice<stdgo.GoString>) {
        if (_pattern != null) this._pattern = _pattern;
        if (_matches != null) this._matches = _matches;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_globTest(_pattern, _matches);
    }
}
