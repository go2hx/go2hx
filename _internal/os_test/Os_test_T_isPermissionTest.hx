package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
@:structInit class T_isPermissionTest {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _want : Bool = false;
    public function new(?_err:stdgo.Error, ?_want:Bool) {
        if (_err != null) this._err = _err;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isPermissionTest(_err, _want);
    }
}
