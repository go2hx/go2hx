package stdgo.html.template;
class Template_static_extension {
    static public function parseFS(_t:Template_, _fs:stdgo._internal.io.fs.Fs_FS.FS, _patterns:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.parseFS(_t, _fs, ...[for (i in _patterns) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseGlob(_t:Template_, _pattern:String):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.parseGlob(_t, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseFiles(_t:Template_, _filenames:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.parseFiles(_t, ...[for (i in _filenames) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookup(_t:Template_, _name:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.lookup(_t, _name);
    }
    static public function delims(_t:Template_, _left:String, _right:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _left = (_left : stdgo.GoString);
        final _right = (_right : stdgo.GoString);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.delims(_t, _left, _right);
    }
    static public function funcs(_t:Template_, _funcMap:stdgo._internal.text.template.Template_FuncMap.FuncMap):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.funcs(_t, _funcMap);
    }
    static public function name(_t:Template_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.name(_t);
    }
    static public function _new(_t:Template_, _name:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension._new(_t, _name);
    }
    static public function new_(_t:Template_, _name:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.new_(_t, _name);
    }
    static public function clone(_t:Template_):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.clone(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function addParseTree(_t:Template_, _name:String, _tree:stdgo._internal.text.template.parse.Parse_Tree.Tree):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        final _tree = (_tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.addParseTree(_t, _name, _tree);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parse(_t:Template_, _text:String):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _text = (_text : stdgo.GoString);
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.parse(_t, _text);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function definedTemplates(_t:Template_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.definedTemplates(_t);
    }
    static public function _lookupAndEscapeTemplate(_t:Template_, _name:String):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension._lookupAndEscapeTemplate(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function executeTemplate(_t:Template_, _wr:stdgo._internal.io.Io_Writer.Writer, _name:String, _data:stdgo.AnyInterface):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.executeTemplate(_t, _wr, _name, _data);
    }
    static public function execute(_t:Template_, _wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.execute(_t, _wr, _data);
    }
    static public function _escape(_t:Template_):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension._escape(_t);
    }
    static public function _checkCanParse(_t:Template_):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension._checkCanParse(_t);
    }
    static public function option(_t:Template_, _opt:haxe.Rest<String>):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.option(_t, ...[for (i in _opt) i]);
    }
    static public function templates(_t:Template_):Array<Template_> {
        final _t = (_t : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        return [for (i in stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.templates(_t)) i];
    }
}
