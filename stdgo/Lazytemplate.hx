package stdgo;
@:structInit @:using(stdgo.internal.lazytemplate.Lazytemplate.Template_static_extension) abstract Template(stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template) from stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template to stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template {
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
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _tmpl(get, set) : stdgo._internal.text.template.Template_template.Template;
    function get__tmpl():stdgo._internal.text.template.Template_template.Template return this._tmpl;
    function set__tmpl(v:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.Template_template.Template {
        this._tmpl = (v : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        return v;
    }
    public function new(?_name:String, ?_text:String, ?_once:stdgo._internal.sync.Sync_once.Once, ?_tmpl:stdgo._internal.text.template.Template_template.Template) this = new stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template((_name : stdgo.GoString), (_text : stdgo.GoString), _once, (_tmpl : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef TemplatePointer = stdgo._internal.internal.lazytemplate.Lazytemplate_templatepointer.TemplatePointer;
class Template_static_extension {
    static public function execute(_r:Template, _w:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template>);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.internal.lazytemplate.Lazytemplate_template_static_extension.Template_static_extension.execute(_r, _w, _data);
    }
    static public function _build(_r:Template):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template>);
        stdgo._internal.internal.lazytemplate.Lazytemplate_template_static_extension.Template_static_extension._build(_r);
    }
    static public function _tp(_r:Template):stdgo._internal.text.template.Template_template.Template {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template>);
        return stdgo._internal.internal.lazytemplate.Lazytemplate_template_static_extension.Template_static_extension._tp(_r);
    }
}
/**
    * Package lazytemplate is a thin wrapper over text/template, allowing the use
    * of global template variables without forcing them to be parsed at init.
**/
class Lazytemplate {
    /**
        * New creates a new lazy template, delaying the parsing work until it is first
        * needed. If the code is being run as part of tests, the template parsing will
        * happen immediately.
    **/
    static public inline function new_(_name:String, _text:String):Template {
        final _name = (_name : stdgo.GoString);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.internal.lazytemplate.Lazytemplate_new_.new_(_name, _text);
    }
}
