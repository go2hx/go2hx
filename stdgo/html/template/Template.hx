package stdgo.html.template;
final ok : ErrorCode = stdgo._internal.html.template.Template_ok.ok;
final errAmbigContext = stdgo._internal.html.template.Template_errAmbigContext.errAmbigContext;
final errBadHTML = stdgo._internal.html.template.Template_errBadHTML.errBadHTML;
final errBranchEnd = stdgo._internal.html.template.Template_errBranchEnd.errBranchEnd;
final errEndContext = stdgo._internal.html.template.Template_errEndContext.errEndContext;
final errNoSuchTemplate = stdgo._internal.html.template.Template_errNoSuchTemplate.errNoSuchTemplate;
final errOutputContext = stdgo._internal.html.template.Template_errOutputContext.errOutputContext;
final errPartialCharset = stdgo._internal.html.template.Template_errPartialCharset.errPartialCharset;
final errPartialEscape = stdgo._internal.html.template.Template_errPartialEscape.errPartialEscape;
final errRangeLoopReentry = stdgo._internal.html.template.Template_errRangeLoopReentry.errRangeLoopReentry;
final errSlashAmbig = stdgo._internal.html.template.Template_errSlashAmbig.errSlashAmbig;
final errPredefinedEscaper = stdgo._internal.html.template.Template_errPredefinedEscaper.errPredefinedEscaper;
final errJSTemplate = stdgo._internal.html.template.Template_errJSTemplate.errJSTemplate;
@:structInit @:using(stdgo.html.template.Template.T_context_static_extension) abstract T_context(stdgo._internal.html.template.Template_T_context.T_context) from stdgo._internal.html.template.Template_T_context.T_context to stdgo._internal.html.template.Template_T_context.T_context {
    public var _state(get, set) : T_state;
    function get__state():T_state return this._state;
    function set__state(v:T_state):T_state {
        this._state = v;
        return v;
    }
    public var _delim(get, set) : T_delim;
    function get__delim():T_delim return this._delim;
    function set__delim(v:T_delim):T_delim {
        this._delim = v;
        return v;
    }
    public var _urlPart(get, set) : T_urlPart;
    function get__urlPart():T_urlPart return this._urlPart;
    function set__urlPart(v:T_urlPart):T_urlPart {
        this._urlPart = v;
        return v;
    }
    public var _jsCtx(get, set) : T_jsCtx;
    function get__jsCtx():T_jsCtx return this._jsCtx;
    function set__jsCtx(v:T_jsCtx):T_jsCtx {
        this._jsCtx = v;
        return v;
    }
    public var _attr(get, set) : T_attr;
    function get__attr():T_attr return this._attr;
    function set__attr(v:T_attr):T_attr {
        this._attr = v;
        return v;
    }
    public var _element(get, set) : T_element;
    function get__element():T_element return this._element;
    function set__element(v:T_element):T_element {
        this._element = v;
        return v;
    }
    public var _n(get, set) : stdgo._internal.text.template.parse.Parse_Node.Node;
    function get__n():stdgo._internal.text.template.parse.Parse_Node.Node return this._n;
    function set__n(v:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.text.template.parse.Parse_Node.Node {
        this._n = v;
        return v;
    }
    public var _err(get, set) : Error;
    function get__err():Error return this._err;
    function set__err(v:Error):Error {
        this._err = v;
        return v;
    }
    public function new(?_state:T_state, ?_delim:T_delim, ?_urlPart:T_urlPart, ?_jsCtx:T_jsCtx, ?_attr:T_attr, ?_element:T_element, ?_n:stdgo._internal.text.template.parse.Parse_Node.Node, ?_err:Error) this = new stdgo._internal.html.template.Template_T_context.T_context(_state, _delim, _urlPart, _jsCtx, _attr, _element, _n, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.html.template.Template.Error_static_extension) abstract Error(stdgo._internal.html.template.Template_Error.Error) from stdgo._internal.html.template.Template_Error.Error to stdgo._internal.html.template.Template_Error.Error {
    public var errorCode(get, set) : ErrorCode;
    function get_errorCode():ErrorCode return this.errorCode;
    function set_errorCode(v:ErrorCode):ErrorCode {
        this.errorCode = v;
        return v;
    }
    public var node(get, set) : stdgo._internal.text.template.parse.Parse_Node.Node;
    function get_node():stdgo._internal.text.template.parse.Parse_Node.Node return this.node;
    function set_node(v:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.text.template.parse.Parse_Node.Node {
        this.node = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public var description(get, set) : String;
    function get_description():String return this.description;
    function set_description(v:String):String {
        this.description = v;
        return v;
    }
    public function new(?errorCode:ErrorCode, ?node:stdgo._internal.text.template.parse.Parse_Node.Node, ?name:String, ?line:StdTypes.Int, ?description:String) this = new stdgo._internal.html.template.Template_Error.Error(errorCode, node, name, line, description);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.html.template.Template.T_escaper_static_extension) abstract T_escaper(stdgo._internal.html.template.Template_T_escaper.T_escaper) from stdgo._internal.html.template.Template_T_escaper.T_escaper to stdgo._internal.html.template.Template_T_escaper.T_escaper {
    public var _ns(get, set) : T_nameSpace;
    function get__ns():T_nameSpace return this._ns;
    function set__ns(v:T_nameSpace):T_nameSpace {
        this._ns = v;
        return v;
    }
    public var _output(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>;
    function get__output():stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context> return this._output;
    function set__output(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>):stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context> {
        this._output = v;
        return v;
    }
    public var _derived(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>;
    function get__derived():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> return this._derived;
    function set__derived(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> {
        this._derived = v;
        return v;
    }
    public var _called(get, set) : stdgo.GoMap<stdgo.GoString, Bool>;
    function get__called():stdgo.GoMap<stdgo.GoString, Bool> return this._called;
    function set__called(v:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.GoMap<stdgo.GoString, Bool> {
        this._called = v;
        return v;
    }
    public var _actionNodeEdits(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>;
    function get__actionNodeEdits():stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>> return this._actionNodeEdits;
    function set__actionNodeEdits(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>):stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>> {
        this._actionNodeEdits = v;
        return v;
    }
    public var _templateNodeEdits(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>;
    function get__templateNodeEdits():stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString> return this._templateNodeEdits;
    function set__templateNodeEdits(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>):stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString> {
        this._templateNodeEdits = v;
        return v;
    }
    public var _textNodeEdits(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>;
    function get__textNodeEdits():stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>> return this._textNodeEdits;
    function set__textNodeEdits(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>> {
        this._textNodeEdits = v;
        return v;
    }
    public var _rangeContext(get, set) : T_rangeContext;
    function get__rangeContext():T_rangeContext return this._rangeContext;
    function set__rangeContext(v:T_rangeContext):T_rangeContext {
        this._rangeContext = v;
        return v;
    }
    public function new(?_ns:T_nameSpace, ?_output:stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>, ?_derived:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>, ?_called:stdgo.GoMap<stdgo.GoString, Bool>, ?_actionNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>, ?_templateNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>, ?_textNodeEdits:stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>, ?_rangeContext:T_rangeContext) this = new stdgo._internal.html.template.Template_T_escaper.T_escaper(_ns, _output, _derived, _called, _actionNodeEdits, _templateNodeEdits, _textNodeEdits, _rangeContext);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_rangeContext(stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext) from stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext to stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext {
    public var _outer(get, set) : T_rangeContext;
    function get__outer():T_rangeContext return this._outer;
    function set__outer(v:T_rangeContext):T_rangeContext {
        this._outer = v;
        return v;
    }
    public var _breaks(get, set) : Array<T_context>;
    function get__breaks():Array<T_context> return [for (i in this._breaks) i];
    function set__breaks(v:Array<T_context>):Array<T_context> {
        this._breaks = ([for (i in v) i] : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>);
        return v;
    }
    public var _continues(get, set) : Array<T_context>;
    function get__continues():Array<T_context> return [for (i in this._continues) i];
    function set__continues(v:Array<T_context>):Array<T_context> {
        this._continues = ([for (i in v) i] : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>);
        return v;
    }
    public function new(?_outer:T_rangeContext, ?_breaks:Array<T_context>, ?_continues:Array<T_context>) this = new stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext(_outer, ([for (i in _breaks) i] : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>), ([for (i in _continues) i] : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.html.template.Template.Template_static_extension) abstract Template_(stdgo._internal.html.template.Template_Template.Template) from stdgo._internal.html.template.Template_Template.Template to stdgo._internal.html.template.Template_Template.Template {
    public var _escapeErr(get, set) : stdgo.Error;
    function get__escapeErr():stdgo.Error return this._escapeErr;
    function set__escapeErr(v:stdgo.Error):stdgo.Error {
        this._escapeErr = v;
        return v;
    }
    public var _text(get, set) : stdgo._internal.text.template.Template_Template.Template;
    function get__text():stdgo._internal.text.template.Template_Template.Template return this._text;
    function set__text(v:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.Template_Template.Template {
        this._text = v;
        return v;
    }
    public var tree(get, set) : stdgo._internal.text.template.parse.Parse_Tree.Tree;
    function get_tree():stdgo._internal.text.template.parse.Parse_Tree.Tree return this.tree;
    function set_tree(v:stdgo._internal.text.template.parse.Parse_Tree.Tree):stdgo._internal.text.template.parse.Parse_Tree.Tree {
        this.tree = v;
        return v;
    }
    public var _nameSpace(get, set) : T_nameSpace;
    function get__nameSpace():T_nameSpace return this._nameSpace;
    function set__nameSpace(v:T_nameSpace):T_nameSpace {
        this._nameSpace = v;
        return v;
    }
    public function new(?_escapeErr:stdgo.Error, ?_text:stdgo._internal.text.template.Template_Template.Template, ?tree:stdgo._internal.text.template.parse.Parse_Tree.Tree, ?_nameSpace:T_nameSpace) this = new stdgo._internal.html.template.Template_Template.Template(_escapeErr, _text, tree, _nameSpace);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_nameSpace(stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace) from stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace to stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _set(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>;
    function get__set():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> return this._set;
    function set__set(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> {
        this._set = v;
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
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_set:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>, ?_escaped:Bool, ?_esc:T_escaper) this = new stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace(_mu, _set, _escaped, _esc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.html.template.Template_T__struct_0.T__struct_0;
typedef CSS = stdgo._internal.html.template.Template_CSS.CSS;
typedef HTML = stdgo._internal.html.template.Template_HTML.HTML;
typedef HTMLAttr = stdgo._internal.html.template.Template_HTMLAttr.HTMLAttr;
typedef JS = stdgo._internal.html.template.Template_JS.JS;
typedef JSStr = stdgo._internal.html.template.Template_JSStr.JSStr;
typedef URL = stdgo._internal.html.template.Template_URL.URL;
typedef Srcset = stdgo._internal.html.template.Template_Srcset.Srcset;
typedef T_contentType = stdgo._internal.html.template.Template_T_contentType.T_contentType;
typedef T_state = stdgo._internal.html.template.Template_T_state.T_state;
typedef T_delim = stdgo._internal.html.template.Template_T_delim.T_delim;
typedef T_urlPart = stdgo._internal.html.template.Template_T_urlPart.T_urlPart;
typedef T_jsCtx = stdgo._internal.html.template.Template_T_jsCtx.T_jsCtx;
typedef T_element = stdgo._internal.html.template.Template_T_element.T_element;
typedef T_attr = stdgo._internal.html.template.Template_T_attr.T_attr;
typedef ErrorCode = stdgo._internal.html.template.Template_ErrorCode.ErrorCode;
typedef FuncMap = stdgo._internal.html.template.Template_FuncMap.FuncMap;
class T_context_static_extension {
    static public function _mangle(_c:T_context, _templateName:String):String {
        return stdgo._internal.html.template.Template_T_context_static_extension.T_context_static_extension._mangle(_c, _templateName);
    }
    static public function _eq(_c:T_context, _d:T_context):Bool {
        return stdgo._internal.html.template.Template_T_context_static_extension.T_context_static_extension._eq(_c, _d);
    }
    static public function string(_c:T_context):String {
        return stdgo._internal.html.template.Template_T_context_static_extension.T_context_static_extension.string(_c);
    }
}
class Error_static_extension {
    static public function error(_e:Error):String {
        return stdgo._internal.html.template.Template_Error_static_extension.Error_static_extension.error(_e);
    }
}
class T_escaper_static_extension {
    static public function _arbitraryTemplate(_e:T_escaper):Template_ {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._arbitraryTemplate(_e);
    }
    static public function _template(_e:T_escaper, _name:String):stdgo._internal.text.template.Template_Template.Template {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._template(_e, _name);
    }
    static public function _commit(_e:T_escaper):Void {
        stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._commit(_e);
    }
    static public function _editTextNode(_e:T_escaper, _n:stdgo._internal.text.template.parse.Parse_TextNode.TextNode, _text:Array<std.UInt>):Void {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._editTextNode(_e, _n, _text);
    }
    static public function _editTemplateNode(_e:T_escaper, _n:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode, _callee:String):Void {
        stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._editTemplateNode(_e, _n, _callee);
    }
    static public function _editActionNode(_e:T_escaper, _n:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode, _cmds:Array<String>):Void {
        final _cmds = ([for (i in _cmds) i] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._editActionNode(_e, _n, _cmds);
    }
    static public function _escapeText(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_TextNode.TextNode):T_context {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeText(_e, _c, _n);
    }
    static public function _escapeTemplateBody(_e:T_escaper, _c:T_context, _t:stdgo._internal.text.template.Template_Template.Template):stdgo.Tuple<T_context, Bool> {
        return {
            final obj = stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeTemplateBody(_e, _c, _t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _computeOutCtx(_e:T_escaper, _c:T_context, _t:stdgo._internal.text.template.Template_Template.Template):T_context {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._computeOutCtx(_e, _c, _t);
    }
    static public function _escapeTree(_e:T_escaper, _c:T_context, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _name:String, _line:StdTypes.Int):stdgo.Tuple<T_context, String> {
        return {
            final obj = stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeTree(_e, _c, _node, _name, _line);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _escapeTemplate(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode):T_context {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeTemplate(_e, _c, _n);
    }
    static public function _escapeListConditionally(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_ListNode.ListNode, _filter:(stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, stdgo._internal.html.template.Template_T_context.T_context) -> Bool):stdgo.Tuple<T_context, Bool> {
        final _filter = _filter;
        return {
            final obj = stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeListConditionally(_e, _c, _n, _filter);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _escapeList(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):T_context {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeList(_e, _c, _n);
    }
    static public function _escapeBranch(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode, _nodeName:String):T_context {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeBranch(_e, _c, _n, _nodeName);
    }
    static public function _escapeAction(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):T_context {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escapeAction(_e, _c, _n);
    }
    static public function _escape(_e:T_escaper, _c:T_context, _n:stdgo._internal.text.template.parse.Parse_Node.Node):T_context {
        return stdgo._internal.html.template.Template_T_escaper_static_extension.T_escaper_static_extension._escape(_e, _c, _n);
    }
}
class Template_static_extension {
    static public function parseFS(_t:Template_, _fs:stdgo._internal.io.fs.Fs_FS.FS, _patterns:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.parseFS(_t, _fs, ...[for (i in _patterns) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseGlob(_t:Template_, _pattern:String):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.parseGlob(_t, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseFiles(_t:Template_, _filenames:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.parseFiles(_t, ...[for (i in _filenames) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookup(_t:Template_, _name:String):Template_ {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.lookup(_t, _name);
    }
    static public function delims(_t:Template_, _left:String, _right:String):Template_ {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.delims(_t, _left, _right);
    }
    static public function funcs(_t:Template_, _funcMap:stdgo._internal.text.template.Template_FuncMap.FuncMap):Template_ {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.funcs(_t, _funcMap);
    }
    static public function name(_t:Template_):String {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.name(_t);
    }
    static public function _new(_t:Template_, _name:String):Template_ {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension._new(_t, _name);
    }
    static public function new_(_t:Template_, _name:String):Template_ {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.new_(_t, _name);
    }
    static public function clone(_t:Template_):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.clone(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function addParseTree(_t:Template_, _name:String, _tree:stdgo._internal.text.template.parse.Parse_Tree.Tree):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.addParseTree(_t, _name, _tree);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parse(_t:Template_, _text:String):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.parse(_t, _text);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function definedTemplates(_t:Template_):String {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.definedTemplates(_t);
    }
    static public function _lookupAndEscapeTemplate(_t:Template_, _name:String):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension._lookupAndEscapeTemplate(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function executeTemplate(_t:Template_, _wr:stdgo._internal.io.Io_Writer.Writer, _name:String, _data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.executeTemplate(_t, _wr, _name, _data);
    }
    static public function execute(_t:Template_, _wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.execute(_t, _wr, _data);
    }
    static public function _escape(_t:Template_):stdgo.Error {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension._escape(_t);
    }
    static public function _checkCanParse(_t:Template_):stdgo.Error {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension._checkCanParse(_t);
    }
    static public function option(_t:Template_, _opt:haxe.Rest<String>):Template_ {
        return stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.option(_t, ...[for (i in _opt) i]);
    }
    static public function templates(_t:Template_):Array<Template_> {
        return [for (i in stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension.templates(_t)) i];
    }
}
class T_state_static_extension {
    static public function string(_i:T_state):String {
        return stdgo._internal.html.template.Template_T_state_static_extension.T_state_static_extension.string(_i);
    }
}
class T_delim_static_extension {
    static public function string(_i:T_delim):String {
        return stdgo._internal.html.template.Template_T_delim_static_extension.T_delim_static_extension.string(_i);
    }
}
class T_urlPart_static_extension {
    static public function string(_i:T_urlPart):String {
        return stdgo._internal.html.template.Template_T_urlPart_static_extension.T_urlPart_static_extension.string(_i);
    }
}
class T_jsCtx_static_extension {
    static public function string(_i:T_jsCtx):String {
        return stdgo._internal.html.template.Template_T_jsCtx_static_extension.T_jsCtx_static_extension.string(_i);
    }
}
class T_element_static_extension {
    static public function string(_i:T_element):String {
        return stdgo._internal.html.template.Template_T_element_static_extension.T_element_static_extension.string(_i);
    }
}
class T_attr_static_extension {
    static public function string(_i:T_attr):String {
        return stdgo._internal.html.template.Template_T_attr_static_extension.T_attr_static_extension.string(_i);
    }
}
/**
    /|*
    Package template (html/template) implements data-driven templates for
    generating HTML output safe against code injection. It provides the
    same interface as [text/template] and should be used instead of
    [text/template] whenever the output is HTML.
    
    The documentation here focuses on the security features of the package.
    For information about how to program the templates themselves, see the
    documentation for [text/template].
    
    # Introduction
    
    This package wraps [text/template] so you can share its template API
    to parse and execute HTML templates safely.
    
    	tmpl, err := template.New("name").Parse(...)
    	// Error checking elided
    	err = tmpl.Execute(out, data)
    
    If successful, tmpl will now be injection-safe. Otherwise, err is an error
    defined in the docs for ErrorCode.
    
    HTML templates treat data values as plain text which should be encoded so they
    can be safely embedded in an HTML document. The escaping is contextual, so
    actions can appear within JavaScript, CSS, and URI contexts.
    
    The security model used by this package assumes that template authors are
    trusted, while Execute's data parameter is not. More details are
    provided below.
    
    Example
    
    	import "text/template"
    	...
    	t, err := template.New("foo").Parse(`{{define "T"}}Hello, {{.}}!{{end}}`)
    	err = t.ExecuteTemplate(out, "T", "<script>alert('you have been pwned')</script>")
    
    produces
    
    	Hello, <script>alert('you have been pwned')</script>!
    
    but the contextual autoescaping in html/template
    
    	import "html/template"
    	...
    	t, err := template.New("foo").Parse(`{{define "T"}}Hello, {{.}}!{{end}}`)
    	err = t.ExecuteTemplate(out, "T", "<script>alert('you have been pwned')</script>")
    
    produces safe, escaped HTML output
    
    	Hello, &lt;script&gt;alert(&#39;you have been pwned&#39;)&lt;/script&gt;!
    
    # Contexts
    
    This package understands HTML, CSS, JavaScript, and URIs. It adds sanitizing
    functions to each simple action pipeline, so given the excerpt
    
    	<a href="/search?q={{.}}">{{.}}</a>
    
    At parse time each {{.}} is overwritten to add escaping functions as necessary.
    In this case it becomes
    
    	<a href="/search?q={{. | urlescaper | attrescaper}}">{{. | htmlescaper}}</a>
    
    where urlescaper, attrescaper, and htmlescaper are aliases for internal escaping
    functions.
    
    For these internal escaping functions, if an action pipeline evaluates to
    a nil interface value, it is treated as though it were an empty string.
    
    # Namespaced and data- attributes
    
    Attributes with a namespace are treated as if they had no namespace.
    Given the excerpt
    
    	<a my:href="{{.}}"></a>
    
    At parse time the attribute will be treated as if it were just "href".
    So at parse time the template becomes:
    
    	<a my:href="{{. | urlescaper | attrescaper}}"></a>
    
    Similarly to attributes with namespaces, attributes with a "data-" prefix are
    treated as if they had no "data-" prefix. So given
    
    	<a data-href="{{.}}"></a>
    
    At parse time this becomes
    
    	<a data-href="{{. | urlescaper | attrescaper}}"></a>
    
    If an attribute has both a namespace and a "data-" prefix, only the namespace
    will be removed when determining the context. For example
    
    	<a my:data-href="{{.}}"></a>
    
    This is handled as if "my:data-href" was just "data-href" and not "href" as
    it would be if the "data-" prefix were to be ignored too. Thus at parse
    time this becomes just
    
    	<a my:data-href="{{. | attrescaper}}"></a>
    
    As a special case, attributes with the namespace "xmlns" are always treated
    as containing URLs. Given the excerpts
    
    	<a xmlns:title="{{.}}"></a>
    	<a xmlns:href="{{.}}"></a>
    	<a xmlns:onclick="{{.}}"></a>
    
    At parse time they become:
    
    	<a xmlns:title="{{. | urlescaper | attrescaper}}"></a>
    	<a xmlns:href="{{. | urlescaper | attrescaper}}"></a>
    	<a xmlns:onclick="{{. | urlescaper | attrescaper}}"></a>
    
    # Errors
    
    See the documentation of ErrorCode for details.
    
    # A fuller picture
    
    The rest of this package comment may be skipped on first reading; it includes
    details necessary to understand escaping contexts and error messages. Most users
    will not need to understand these details.
    
    # Contexts
    
    Assuming {{.}} is `O'Reilly: How are <i>you</i>?`, the table below shows
    how {{.}} appears when used in the context to the left.
    
    	Context                          {{.}} After
    	{{.}}                            O'Reilly: How are &lt;i&gt;you&lt;/i&gt;?
    	<a title='{{.}}'>                O&#39;Reilly: How are you?
    	<a href="/{{.}}">                O&#39;Reilly: How are %3ci%3eyou%3c/i%3e?
    	<a href="?q={{.}}">              O&#39;Reilly%3a%20How%20are%3ci%3e...%3f
    	<a onx='f("{{.}}")'>             O\x27Reilly: How are \x3ci\x3eyou...?
    	<a onx='f({{.}})'>               "O\x27Reilly: How are \x3ci\x3eyou...?"
    	<a onx='pattern = /{{.}}/;'>     O\x27Reilly: How are \x3ci\x3eyou...\x3f
    
    If used in an unsafe context, then the value might be filtered out:
    
    	Context                          {{.}} After
    	<a href="{{.}}">                 #ZgotmplZ
    
    since "O'Reilly:" is not an allowed protocol like "http:".
    
    If {{.}} is the innocuous word, `left`, then it can appear more widely,
    
    	Context                              {{.}} After
    	{{.}}                                left
    	<a title='{{.}}'>                    left
    	<a href='{{.}}'>                     left
    	<a href='/{{.}}'>                    left
    	<a href='?dir={{.}}'>                left
    	<a style="border-{{.}}: 4px">        left
    	<a style="align: {{.}}">             left
    	<a style="background: '{{.}}'>       left
    	<a style="background: url('{{.}}')>  left
    	<style>p.{{.}} {color:red}</style>   left
    
    Non-string values can be used in JavaScript contexts.
    If {{.}} is
    
    	struct{A,B string}{ "foo", "bar" }
    
    in the escaped template
    
    	<script>var pair = {{.}};</script>
    
    then the template output is
    
    	<script>var pair = {"A": "foo", "B": "bar"};</script>
    
    See package json to understand how non-string content is marshaled for
    embedding in JavaScript contexts.
    
    # Typed Strings
    
    By default, this package assumes that all pipelines produce a plain text string.
    It adds escaping pipeline stages necessary to correctly and safely embed that
    plain text string in the appropriate context.
    
    When a data value is not plain text, you can make sure it is not over-escaped
    by marking it with its type.
    
    Types HTML, JS, URL, and others from content.go can carry safe content that is
    exempted from escaping.
    
    The template
    
    	Hello, {{.}}!
    
    can be invoked with
    
    	tmpl.Execute(out, template.HTML(`<b>World</b>`))
    
    to produce
    
    	Hello, <b>World</b>!
    
    instead of the
    
    	Hello, &lt;b&gt;World&lt;b&gt;!
    
    that would have been produced if {{.}} was a regular string.
    
    # Security Model
    
    https://rawgit.com/mikesamuel/sanitized-jquery-templates/trunk/safetemplate.html#problem_definition defines "safe" as used by this package.
    
    This package assumes that template authors are trusted, that Execute's data
    parameter is not, and seeks to preserve the properties below in the face
    of untrusted data:
    
    Structure Preservation Property:
    "... when a template author writes an HTML tag in a safe templating language,
    the browser will interpret the corresponding portion of the output as a tag
    regardless of the values of untrusted data, and similarly for other structures
    such as attribute boundaries and JS and CSS string boundaries."
    
    Code Effect Property:
    "... only code specified by the template author should run as a result of
    injecting the template output into a page and all code specified by the
    template author should run as a result of the same."
    
    Least Surprise Property:
    "A developer (or code reviewer) familiar with HTML, CSS, and JavaScript, who
    knows that contextual autoescaping happens should be able to look at a {{.}}
    and correctly infer what sanitization happens."
    
    As a consequence of the Least Surprise Property, template actions within an
    ECMAScript 6 template literal are disabled by default.
    Handling string interpolation within these literals is rather complex resulting
    in no clear safe way to support it.
    To re-enable template actions within ECMAScript 6 template literals, use the
    GODEBUG=jstmpllitinterp=1 environment variable.
    *|/
**/
class Template {
    /**
        HTMLEscape writes to w the escaped HTML equivalent of the plain text data b.
    **/
    static public function htmlescape(_w:stdgo._internal.io.Io_Writer.Writer, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.html.template.Template_htmlescape.htmlescape(_w, _b);
    }
    /**
        HTMLEscapeString returns the escaped HTML equivalent of the plain text data s.
    **/
    static public function htmlescapeString(_s:String):String {
        return stdgo._internal.html.template.Template_htmlescapeString.htmlescapeString(_s);
    }
    /**
        HTMLEscaper returns the escaped HTML equivalent of the textual
        representation of its arguments.
    **/
    static public function htmlescaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.html.template.Template_htmlescaper.htmlescaper(...[for (i in _args) i]);
    }
    /**
        JSEscape writes to w the escaped JavaScript equivalent of the plain text data b.
    **/
    static public function jsescape(_w:stdgo._internal.io.Io_Writer.Writer, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.html.template.Template_jsescape.jsescape(_w, _b);
    }
    /**
        JSEscapeString returns the escaped JavaScript equivalent of the plain text data s.
    **/
    static public function jsescapeString(_s:String):String {
        return stdgo._internal.html.template.Template_jsescapeString.jsescapeString(_s);
    }
    /**
        JSEscaper returns the escaped JavaScript equivalent of the textual
        representation of its arguments.
    **/
    static public function jsescaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.html.template.Template_jsescaper.jsescaper(...[for (i in _args) i]);
    }
    /**
        URLQueryEscaper returns the escaped value of the textual representation of
        its arguments in a form suitable for embedding in a URL query.
    **/
    static public function urlqueryEscaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.html.template.Template_urlqueryEscaper.urlqueryEscaper(...[for (i in _args) i]);
    }
    /**
        New allocates a new HTML template with the given name.
    **/
    static public function new_(_name:String):Template_ {
        return stdgo._internal.html.template.Template_new_.new_(_name);
    }
    /**
        Must is a helper that wraps a call to a function returning (*Template, error)
        and panics if the error is non-nil. It is intended for use in variable initializations
        such as
        
        	var t = template.Must(template.New("name").Parse("html"))
    **/
    static public function must(_t:Template_, _err:stdgo.Error):Template_ {
        return stdgo._internal.html.template.Template_must.must(_t, _err);
    }
    /**
        ParseFiles creates a new Template and parses the template definitions from
        the named files. The returned template's name will have the (base) name and
        (parsed) contents of the first file. There must be at least one file.
        If an error occurs, parsing stops and the returned *Template is nil.
        
        When parsing multiple files with the same name in different directories,
        the last one mentioned will be the one that results.
        For instance, ParseFiles("a/foo", "b/foo") stores "b/foo" as the template
        named "foo", while "a/foo" is unavailable.
    **/
    static public function parseFiles(_filenames:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_parseFiles.parseFiles(...[for (i in _filenames) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseGlob creates a new Template and parses the template definitions from
        the files identified by the pattern. The files are matched according to the
        semantics of filepath.Match, and the pattern must match at least one file.
        The returned template will have the (base) name and (parsed) contents of the
        first file matched by the pattern. ParseGlob is equivalent to calling
        ParseFiles with the list of files matched by the pattern.
        
        When parsing multiple files with the same name in different directories,
        the last one mentioned will be the one that results.
    **/
    static public function parseGlob(_pattern:String):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_parseGlob.parseGlob(_pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IsTrue reports whether the value is 'true', in the sense of not the zero of its type,
        and whether the value has a meaningful truth value. This is the definition of
        truth used by if and other such actions.
    **/
    static public function isTrue(_val:stdgo.AnyInterface):stdgo.Tuple<Bool, Bool> {
        return {
            final obj = stdgo._internal.html.template.Template_isTrue.isTrue(_val);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseFS is like ParseFiles or ParseGlob but reads from the file system fs
        instead of the host operating system's file system.
        It accepts a list of glob patterns.
        (Note that most file names serve as glob patterns matching only themselves.)
    **/
    static public function parseFS(_fs:stdgo._internal.io.fs.Fs_FS.FS, _patterns:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.html.template.Template_parseFS.parseFS(_fs, ...[for (i in _patterns) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}