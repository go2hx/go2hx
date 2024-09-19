package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
@:structInit class T_isExistTest {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _is : Bool = false;
    public var _isnot : Bool = false;
    public function new(?_err:stdgo.Error, ?_is:Bool, ?_isnot:Bool) {
        if (_err != null) this._err = _err;
        if (_is != null) this._is = _is;
        if (_isnot != null) this._isnot = _isnot;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isExistTest(_err, _is, _isnot);
    }
}
