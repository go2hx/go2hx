package _internal.math.big_test;
@:structInit @:using(_internal.math.big_test.Big_test_T_zeroOrOne_static_extension.T_zeroOrOne_static_extension) class T_zeroOrOne {
    @:embedded
    public var _uint : stdgo.GoUInt = 0;
    public function new(?_uint:stdgo.GoUInt) {
        if (_uint != null) this._uint = _uint;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zeroOrOne(_uint);
    }
}
