package stdgo.internal.lazytemplate;
@:structInit @:using(stdgo.internal.lazytemplate.Lazytemplate.Template_static_extension) abstract Template(stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template) from stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template to stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _tmpl(get, set) : stdgo._internal.text.template.Template_Template.Template;
    function get__tmpl():stdgo._internal.text.template.Template_Template.Template return this._tmpl;
    function set__tmpl(v:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.Template_Template.Template {
        this._tmpl = (v : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return v;
    }
    public function new(?_name:String, ?_text:String, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_tmpl:stdgo._internal.text.template.Template_Template.Template) this = new stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template((_name : stdgo.GoString), (_text : stdgo.GoString), _once, (_tmpl : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
