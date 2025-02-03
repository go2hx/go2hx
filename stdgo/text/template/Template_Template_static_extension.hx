package stdgo.text.template;
class Template_static_extension {
    static public function _associate(_t:Template_, _new:Template_, _tree:Tree):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _new = (_new : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _tree = (_tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._associate(_t, _new, _tree);
    }
    static public function parse(_t:Template_, _text:String):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _text = (_text : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.parse(_t, _text);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookup(_t:Template_, _name:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.lookup(_t, _name);
    }
    static public function funcs(_t:Template_, _funcMap:FuncMap):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.funcs(_t, _funcMap);
    }
    static public function delims(_t:Template_, _left:String, _right:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _left = (_left : stdgo.GoString);
        final _right = (_right : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.delims(_t, _left, _right);
    }
    static public function templates(_t:Template_):Array<Template_> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return [for (i in stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.templates(_t)) i];
    }
    static public function addParseTree(_t:Template_, _name:String, _tree:Tree):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        final _tree = (_tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.addParseTree(_t, _name, _tree);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _copy(_t:Template_, _c:T_common):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._copy(_t, _c);
    }
    static public function clone(_t:Template_):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.clone(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _init(_t:Template_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._init(_t);
    }
    static public function new_(_t:Template_, _name:String):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.new_(_t, _name);
    }
    static public function name(_t:Template_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.name(_t);
    }
    static public function _setOption(_t:Template_, _opt:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _opt = (_opt : stdgo.GoString);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._setOption(_t, _opt);
    }
    static public function option(_t:Template_, _opt:haxe.Rest<String>):Template_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.option(_t, ...[for (i in _opt) i]);
    }
    static public function parseFS(_t:Template_, _fsys:stdgo._internal.io.fs.Fs_FS.FS, _patterns:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.parseFS(_t, _fsys, ...[for (i in _patterns) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseGlob(_t:Template_, _pattern:String):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.parseGlob(_t, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseFiles(_t:Template_, _filenames:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.parseFiles(_t, ...[for (i in _filenames) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function definedTemplates(_t:Template_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.definedTemplates(_t);
    }
    static public function _execute(_t:Template_, _wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._execute(_t, _wr, _data);
    }
    static public function execute(_t:Template_, _wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.execute(_t, _wr, _data);
    }
    static public function executeTemplate(_t:Template_, _wr:stdgo._internal.io.Io_Writer.Writer, _name:String, _data:stdgo.AnyInterface):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        final _name = (_name : stdgo.GoString);
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.executeTemplate(_t, _wr, _name, _data);
    }
    public static function _withControl(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._withControl(__self__);
    }
    public static function _useVar(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:String):Node {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._useVar(__self__, _0, _1);
    }
    public static function _unexpected(__self__:stdgo._internal.text.template.Template_Template.Template, _0:T_item, _1:String):Void {
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._unexpected(__self__, _0, _1);
    }
    public static function _textOrAction(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._textOrAction(__self__);
    }
    public static function _term(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._term(__self__);
    }
    public static function _templateControl(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._templateControl(__self__);
    }
    public static function _stopParse(__self__:stdgo._internal.text.template.Template_Template.Template):Void {
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._stopParse(__self__);
    }
    public static function _startParse(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _1:T_lexer, _2:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        final _2 = (_2 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._startParse(__self__, _0, _1, _2);
    }
    public static function _recover(__self__:stdgo._internal.text.template.Template_Template.Template, _0:stdgo.Error):Void {
        final _0 = (_0 : stdgo.Ref<stdgo.Error>);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._recover(__self__, _0);
    }
    public static function _rangeControl(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._rangeControl(__self__);
    }
    public static function _popVars(__self__:stdgo._internal.text.template.Template_Template.Template, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._popVars(__self__, _0);
    }
    public static function _pipeline(__self__:stdgo._internal.text.template.Template_Template.Template, _0:String, _1:T_itemType):PipeNode {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._pipeline(__self__, _0, _1);
    }
    public static function _peekNonSpace(__self__:stdgo._internal.text.template.Template_Template.Template):T_item {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._peekNonSpace(__self__);
    }
    public static function _peek(__self__:stdgo._internal.text.template.Template_Template.Template):T_item {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._peek(__self__);
    }
    public static function _parseTemplateName(__self__:stdgo._internal.text.template.Template_Template.Template, _0:T_item, _1:String):String {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._parseTemplateName(__self__, _0, _1);
    }
    public static function _parseDefinition(__self__:stdgo._internal.text.template.Template_Template.Template):Void {
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._parseDefinition(__self__);
    }
    public static function _parseControl(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Bool, _1:String):stdgo.Tuple.Tuple5<Pos, StdTypes.Int, PipeNode, ListNode, ListNode> {
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._parseControl(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    public static function _parse(__self__:stdgo._internal.text.template.Template_Template.Template):Void {
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._parse(__self__);
    }
    public static function _operand(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._operand(__self__);
    }
    public static function _nextNonSpace(__self__:stdgo._internal.text.template.Template_Template.Template):T_item {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._nextNonSpace(__self__);
    }
    public static function _next(__self__:stdgo._internal.text.template.Template_Template.Template):T_item {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._next(__self__);
    }
    public static function _newWith(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int, _2:PipeNode, _3:ListNode, _4:ListNode):WithNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _4 = (_4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newWith(__self__, _0, _1, _2, _3, _4);
    }
    public static function _newVariable(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:String):VariableNode {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newVariable(__self__, _0, _1);
    }
    public static function _newText(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:String):TextNode {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newText(__self__, _0, _1);
    }
    public static function _newTemplate(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int, _2:String, _3:PipeNode):TemplateNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.GoString);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newTemplate(__self__, _0, _1, _2, _3);
    }
    public static function _newString(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:String, _2:String):StringNode {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newString(__self__, _0, _1, _2);
    }
    public static function _newRange(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int, _2:PipeNode, _3:ListNode, _4:ListNode):RangeNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _4 = (_4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newRange(__self__, _0, _1, _2, _3, _4);
    }
    public static function _newPipeline(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int, _2:Array<VariableNode>):PipeNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = ([for (i in _2) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newPipeline(__self__, _0, _1, _2);
    }
    public static function _newNumber(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:String, _2:T_itemType):stdgo.Tuple<NumberNode, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newNumber(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _newNil(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos):NilNode {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newNil(__self__, _0);
    }
    public static function _newList(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos):ListNode {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newList(__self__, _0);
    }
    public static function _newIf(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int, _2:PipeNode, _3:ListNode, _4:ListNode):IfNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _4 = (_4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newIf(__self__, _0, _1, _2, _3, _4);
    }
    public static function _newField(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:String):FieldNode {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newField(__self__, _0, _1);
    }
    public static function _newEnd(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos):T_endNode {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newEnd(__self__, _0);
    }
    public static function _newElse(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int):T_elseNode {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newElse(__self__, _0, _1);
    }
    public static function _newDot(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos):DotNode {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newDot(__self__, _0);
    }
    public static function _newContinue(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int):ContinueNode {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newContinue(__self__, _0, _1);
    }
    public static function _newComment(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:String):CommentNode {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newComment(__self__, _0, _1);
    }
    public static function _newCommand(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos):CommandNode {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newCommand(__self__, _0);
    }
    public static function _newChain(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:Node):ChainNode {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newChain(__self__, _0, _1);
    }
    public static function _newBreak(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int):BreakNode {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newBreak(__self__, _0, _1);
    }
    public static function _newBool(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:Bool):BoolNode {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newBool(__self__, _0, _1);
    }
    public static function _newAction(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int, _2:PipeNode):ActionNode {
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._newAction(__self__, _0, _1, _2);
    }
    public static function _itemList(__self__:stdgo._internal.text.template.Template_Template.Template):stdgo.Tuple<ListNode, Node> {
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._itemList(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ifControl(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._ifControl(__self__);
    }
    public static function _hasFunction(__self__:stdgo._internal.text.template.Template_Template.Template, _0:String):Bool {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._hasFunction(__self__, _0);
    }
    public static function _expectOneOf(__self__:stdgo._internal.text.template.Template_Template.Template, _0:T_itemType, _1:T_itemType, _2:String):T_item {
        final _2 = (_2 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._expectOneOf(__self__, _0, _1, _2);
    }
    public static function _expect(__self__:stdgo._internal.text.template.Template_Template.Template, _0:T_itemType, _1:String):T_item {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._expect(__self__, _0, _1);
    }
    public static function _errorf(__self__:stdgo._internal.text.template.Template_Template.Template, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._errorf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function _error(__self__:stdgo._internal.text.template.Template_Template.Template, _0:stdgo.Error):Void {
        final _0 = (_0 : stdgo.Error);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._error(__self__, _0);
    }
    public static function _endControl(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._endControl(__self__);
    }
    public static function _elseControl(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._elseControl(__self__);
    }
    public static function _continueControl(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int):Node {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._continueControl(__self__, _0, _1);
    }
    public static function _command(__self__:stdgo._internal.text.template.Template_Template.Template):CommandNode {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._command(__self__);
    }
    public static function _clearActionLine(__self__:stdgo._internal.text.template.Template_Template.Template):Void {
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._clearActionLine(__self__);
    }
    public static function _checkPipeline(__self__:stdgo._internal.text.template.Template_Template.Template, _0:PipeNode, _1:String):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._checkPipeline(__self__, _0, _1);
    }
    public static function _breakControl(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Pos, _1:StdTypes.Int):Node {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._breakControl(__self__, _0, _1);
    }
    public static function _blockControl(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._blockControl(__self__);
    }
    public static function _backup3(__self__:stdgo._internal.text.template.Template_Template.Template, _0:T_item, _1:T_item):Void {
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._backup3(__self__, _0, _1);
    }
    public static function _backup2(__self__:stdgo._internal.text.template.Template_Template.Template, _0:T_item):Void {
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._backup2(__self__, _0);
    }
    public static function _backup(__self__:stdgo._internal.text.template.Template_Template.Template):Void {
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._backup(__self__);
    }
    public static function _add(__self__:stdgo._internal.text.template.Template_Template.Template):Void {
        stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._add(__self__);
    }
    public static function _action(__self__:stdgo._internal.text.template.Template_Template.Template):Node {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension._action(__self__);
    }
    public static function errorContext(__self__:stdgo._internal.text.template.Template_Template.Template, _0:Node):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.errorContext(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function copy(__self__:stdgo._internal.text.template.Template_Template.Template):Tree {
        return stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension.copy(__self__);
    }
}
