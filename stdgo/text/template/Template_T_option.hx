package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_option_static_extension) abstract T_option(stdgo._internal.text.template.Template_T_option.T_option) from stdgo._internal.text.template.Template_T_option.T_option to stdgo._internal.text.template.Template_T_option.T_option {
    public var _missingKey(get, set) : T_missingKeyAction;
    function get__missingKey():T_missingKeyAction return this._missingKey;
    function set__missingKey(v:T_missingKeyAction):T_missingKeyAction {
        this._missingKey = v;
        return v;
    }
    public function new(?_missingKey:T_missingKeyAction) this = new stdgo._internal.text.template.Template_T_option.T_option(_missingKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
