package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_common_static_extension) abstract T_common(stdgo._internal.text.template.Template_T_common.T_common) from stdgo._internal.text.template.Template_T_common.T_common to stdgo._internal.text.template.Template_T_common.T_common {
    public var _tmpl(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>;
    function get__tmpl():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> return this._tmpl;
    function set__tmpl(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> {
        this._tmpl = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>);
        return v;
    }
    public var _muTmpl(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__muTmpl():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._muTmpl;
    function set__muTmpl(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._muTmpl = v;
        return v;
    }
    public var _option(get, set) : T_option;
    function get__option():T_option return this._option;
    function set__option(v:T_option):T_option {
        this._option = v;
        return v;
    }
    public var _muFuncs(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__muFuncs():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._muFuncs;
    function set__muFuncs(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._muFuncs = v;
        return v;
    }
    public var _parseFuncs(get, set) : FuncMap;
    function get__parseFuncs():FuncMap return this._parseFuncs;
    function set__parseFuncs(v:FuncMap):FuncMap {
        this._parseFuncs = v;
        return v;
    }
    public var _execFuncs(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>;
    function get__execFuncs():stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value> return this._execFuncs;
    function set__execFuncs(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>):stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value> {
        this._execFuncs = (v : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>);
        return v;
    }
    public function new(?_tmpl:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>, ?_muTmpl:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_option:T_option, ?_muFuncs:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_parseFuncs:FuncMap, ?_execFuncs:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>) this = new stdgo._internal.text.template.Template_T_common.T_common((_tmpl : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>), _muTmpl, _option, _muFuncs, _parseFuncs, (_execFuncs : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
