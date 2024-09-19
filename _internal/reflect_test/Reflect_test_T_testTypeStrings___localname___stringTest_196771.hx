package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testTypeStrings___localname___stringTest_196771 {
    public var _typ : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var _want : stdgo.GoString = "";
    public function new(?_typ:stdgo._internal.reflect.Reflect_Type_.Type_, ?_want:stdgo.GoString) {
        if (_typ != null) this._typ = _typ;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testTypeStrings___localname___stringTest_196771(_typ, _want);
    }
}
