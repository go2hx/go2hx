package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_option_static_extension.T_option_static_extension) class T_option {
    public var _missingKey : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction = ((0 : stdgo.GoInt) : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction);
    public function new(?_missingKey:stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction) {
        if (_missingKey != null) this._missingKey = _missingKey;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_option(_missingKey);
    }
}
