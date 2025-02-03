package stdgo.html.template;
@:structInit @:using(stdgo.html.template.Template.T_nameSpace_static_extension) abstract T_nameSpace(stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace) from stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace to stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _set(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>;
    function get__set():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> return this._set;
    function set__set(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> {
        this._set = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>);
        return v;
    }
    public var _escaped(get, set) : Bool;
    function get__escaped():Bool return this._escaped;
    function set__escaped(v:Bool):Bool {
        this._escaped = v;
        return v;
    }
    public var _esc(get, set) : T_escaper;
    function get__esc():T_escaper return this._esc;
    function set__esc(v:T_escaper):T_escaper {
        this._esc = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_set:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>, ?_escaped:Bool, ?_esc:T_escaper) this = new stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace(_mu, (_set : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>), _escaped, _esc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
