package stdgo._internal.html.template;
class Template_asInterface {
    @:keep
    @:tdfield
    public dynamic function parseFS(_fs:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.parseFS(_fs, ..._patterns);
    @:keep
    @:tdfield
    public dynamic function parseGlob(_pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.parseGlob(_pattern);
    @:keep
    @:tdfield
    public dynamic function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.parseFiles(..._filenames);
    @:keep
    @:tdfield
    public dynamic function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return @:_0 __self__.value.lookup(_name);
    @:keep
    @:tdfield
    public dynamic function delims(_left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return @:_0 __self__.value.delims(_left, _right);
    @:keep
    @:tdfield
    public dynamic function funcs(_funcMap:stdgo._internal.text.template.Template_funcmap.FuncMap):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return @:_0 __self__.value.funcs(_funcMap);
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function _new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return @:_0 __self__.value._new_(_name);
    @:keep
    @:tdfield
    public dynamic function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return @:_0 __self__.value.new_(_name);
    @:keep
    @:tdfield
    public dynamic function clone():{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.clone();
    @:keep
    @:tdfield
    public dynamic function addParseTree(_name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.addParseTree(_name, _tree);
    @:keep
    @:tdfield
    public dynamic function parse(_text:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.parse(_text);
    @:keep
    @:tdfield
    public dynamic function definedTemplates():stdgo.GoString return @:_0 __self__.value.definedTemplates();
    @:keep
    @:tdfield
    public dynamic function _lookupAndEscapeTemplate(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupAndEscapeTemplate(_name);
    @:keep
    @:tdfield
    public dynamic function executeTemplate(_wr:stdgo._internal.io.Io_writer.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.executeTemplate(_wr, _name, _data);
    @:keep
    @:tdfield
    public dynamic function execute(_wr:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.execute(_wr, _data);
    @:keep
    @:tdfield
    public dynamic function _escape():stdgo.Error return @:_0 __self__.value._escape();
    @:keep
    @:tdfield
    public dynamic function _checkCanParse():stdgo.Error return @:_0 __self__.value._checkCanParse();
    @:keep
    @:tdfield
    public dynamic function option(_opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return @:_0 __self__.value.option(..._opt);
    @:keep
    @:tdfield
    public dynamic function templates():stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_template.Template>> return @:_0 __self__.value.templates();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.html.template.Template_templatepointer.TemplatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
