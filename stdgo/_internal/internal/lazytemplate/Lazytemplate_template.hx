package stdgo._internal.internal.lazytemplate;
@:structInit @:using(stdgo._internal.internal.lazytemplate.Lazytemplate_template_static_extension.Template_static_extension) class Template {
    public var _name : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _tmpl : stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
    public function new(?_name:stdgo.GoString, ?_text:stdgo.GoString, ?_once:stdgo._internal.sync.Sync_once.Once, ?_tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>) {
        if (_name != null) this._name = _name;
        if (_text != null) this._text = _text;
        if (_once != null) this._once = _once;
        if (_tmpl != null) this._tmpl = _tmpl;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Template(_name, _text, _once, _tmpl);
    }
}
