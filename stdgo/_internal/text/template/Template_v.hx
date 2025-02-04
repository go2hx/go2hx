package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_v_static_extension.V_static_extension) class V {
    public var _j : stdgo.GoInt = 0;
    public function new(?_j:stdgo.GoInt) {
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new V(_j);
    }
}
