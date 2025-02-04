package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_common_static_extension.T_common_static_extension) class T_common {
    public var _tmpl : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>);
    public var _muTmpl : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _option : stdgo._internal.text.template.Template_t_option.T_option = ({} : stdgo._internal.text.template.Template_t_option.T_option);
    public var _muFuncs : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _parseFuncs : stdgo._internal.text.template.Template_funcmap.FuncMap = (null : stdgo._internal.text.template.Template_funcmap.FuncMap);
    public var _execFuncs : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>);
    public function new(?_tmpl:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>, ?_muTmpl:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_option:stdgo._internal.text.template.Template_t_option.T_option, ?_muFuncs:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_parseFuncs:stdgo._internal.text.template.Template_funcmap.FuncMap, ?_execFuncs:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>) {
        if (_tmpl != null) this._tmpl = _tmpl;
        if (_muTmpl != null) this._muTmpl = _muTmpl;
        if (_option != null) this._option = _option;
        if (_muFuncs != null) this._muFuncs = _muFuncs;
        if (_parseFuncs != null) this._parseFuncs = _parseFuncs;
        if (_execFuncs != null) this._execFuncs = _execFuncs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_common(_tmpl, _muTmpl, _option, _muFuncs, _parseFuncs, _execFuncs);
    }
}
