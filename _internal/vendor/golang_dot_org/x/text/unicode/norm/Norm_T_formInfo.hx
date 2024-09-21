package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo_static_extension.T_formInfo_static_extension) class T_formInfo {
    public var _form : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = ((0 : stdgo.GoInt) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form);
    public var _composing : Bool = false;
    public var _compatibility : Bool = false;
    public var _info : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_lookupFunc.T_lookupFunc = (null : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_lookupFunc.T_lookupFunc);
    public var _nextMain : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc = (null : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc);
    public function new(?_form:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, ?_composing:Bool, ?_compatibility:Bool, ?_info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_lookupFunc.T_lookupFunc, ?_nextMain:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc) {
        if (_form != null) this._form = _form;
        if (_composing != null) this._composing = _composing;
        if (_compatibility != null) this._compatibility = _compatibility;
        if (_info != null) this._info = _info;
        if (_nextMain != null) this._nextMain = _nextMain;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_formInfo(_form, _composing, _compatibility, _info, _nextMain);
    }
}
