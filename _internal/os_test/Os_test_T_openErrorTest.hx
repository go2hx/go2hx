package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
@:structInit class T_openErrorTest {
    public var _path : stdgo.GoString = "";
    public var _mode : stdgo.GoInt = 0;
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_path:stdgo.GoString, ?_mode:stdgo.GoInt, ?_error:stdgo.Error) {
        if (_path != null) this._path = _path;
        if (_mode != null) this._mode = _mode;
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_openErrorTest(_path, _mode, _error);
    }
}
