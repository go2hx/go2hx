package stdgo._internal.html.template;
@:structInit class T_nameSpace {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _set : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>);
    public var _escaped : Bool = false;
    public var _esc : stdgo._internal.html.template.Template_T_escaper.T_escaper = ({} : stdgo._internal.html.template.Template_T_escaper.T_escaper);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_set:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>, ?_escaped:Bool, ?_esc:stdgo._internal.html.template.Template_T_escaper.T_escaper) {
        if (_mu != null) this._mu = _mu;
        if (_set != null) this._set = _set;
        if (_escaped != null) this._escaped = _escaped;
        if (_esc != null) this._esc = _esc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nameSpace(_mu, _set, _escaped, _esc);
    }
}
