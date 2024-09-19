package _internal.internal.fmtsort_test;
@:structInit class T_sortTest {
    public var _data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _print : stdgo.GoString = "";
    public function new(?_data:stdgo.AnyInterface, ?_print:stdgo.GoString) {
        if (_data != null) this._data = _data;
        if (_print != null) this._print = _print;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sortTest(_data, _print);
    }
}
