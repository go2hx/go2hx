package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class MatchTest {
    public var _pattern : stdgo.GoString = "";
    public var _s : stdgo.GoString = "";
    public var _match : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_pattern:stdgo.GoString, ?_s:stdgo.GoString, ?_match:Bool, ?_err:stdgo.Error) {
        if (_pattern != null) this._pattern = _pattern;
        if (_s != null) this._s = _s;
        if (_match != null) this._match = _match;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MatchTest(_pattern, _s, _match, _err);
    }
}
