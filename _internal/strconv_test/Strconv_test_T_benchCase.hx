package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
@:structInit class T_benchCase {
    public var _name : stdgo.GoString = "";
    public var _num : stdgo.GoInt64 = 0;
    public function new(?_name:stdgo.GoString, ?_num:stdgo.GoInt64) {
        if (_name != null) this._name = _name;
        if (_num != null) this._num = _num;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchCase(_name, _num);
    }
}
