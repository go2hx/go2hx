package _internal.vendor.golang_dot_org.x.net.idna;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError_static_extension.T_labelError_static_extension) class T_labelError {
    public var _label : stdgo.GoString = "";
    public var _code_ : stdgo.GoString = "";
    public function new(?_label:stdgo.GoString, ?_code_:stdgo.GoString) {
        if (_label != null) this._label = _label;
        if (_code_ != null) this._code_ = _code_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_labelError(_label, _code_);
    }
}
