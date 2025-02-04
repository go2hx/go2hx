package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_cmptest_static_extension.T_cmpTest_static_extension) class T_cmpTest {
    public var _expr : stdgo.GoString = "";
    public var _truth : stdgo.GoString = "";
    public var _ok : Bool = false;
    public function new(?_expr:stdgo.GoString, ?_truth:stdgo.GoString, ?_ok:Bool) {
        if (_expr != null) this._expr = _expr;
        if (_truth != null) this._truth = _truth;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cmpTest(_expr, _truth, _ok);
    }
}
