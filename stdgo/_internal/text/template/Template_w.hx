package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_w_static_extension.W_static_extension) class W {
    public var _k : stdgo.GoInt = 0;
    public function new(?_k:stdgo.GoInt) {
        if (_k != null) this._k = _k;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new W(_k);
    }
}
