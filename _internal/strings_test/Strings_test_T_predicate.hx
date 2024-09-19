package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
@:structInit class T_predicate {
    public var _f : stdgo.GoInt32 -> Bool = null;
    public var _name : stdgo.GoString = "";
    public function new(?_f:stdgo.GoInt32 -> Bool, ?_name:stdgo.GoString) {
        if (_f != null) this._f = _f;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_predicate(_f, _name);
    }
}
