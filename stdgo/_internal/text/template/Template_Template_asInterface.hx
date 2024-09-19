package stdgo._internal.text.template;
class Template_asInterface {
    @:keep
    public dynamic function _associate(_new:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):Bool return __self__.value._associate(_new, _tree);
    @:keep
    public dynamic function parse(_text:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } return __self__.value.parse(_text);
    @:keep
    public dynamic function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> return __self__.value.lookup(_name);
    @:keep
    public dynamic function funcs(_funcMap:stdgo._internal.text.template.Template_FuncMap.FuncMap):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> return __self__.value.funcs(_funcMap);
    @:keep
    public dynamic function delims(_left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> return __self__.value.delims(_left, _right);
    @:keep
    public dynamic function templates():stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> return __self__.value.templates();
    @:keep
    public dynamic function addParseTree(_name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } return __self__.value.addParseTree(_name, _tree);
    @:keep
    public dynamic function _copy(_c:stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> return __self__.value._copy(_c);
    @:keep
    public dynamic function clone():{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } return __self__.value.clone();
    @:keep
    public dynamic function _init():Void __self__.value._init();
    @:keep
    public dynamic function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> return __self__.value.new_(_name);
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function _setOption(_opt:stdgo.GoString):Void __self__.value._setOption(_opt);
    @:keep
    public dynamic function option(_opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> return __self__.value.option(..._opt);
    @:keep
    public dynamic function parseFS(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } return __self__.value.parseFS(_fsys, ..._patterns);
    @:keep
    public dynamic function parseGlob(_pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } return __self__.value.parseGlob(_pattern);
    @:keep
    public dynamic function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } return __self__.value.parseFiles(..._filenames);
    @:keep
    public dynamic function definedTemplates():stdgo.GoString return __self__.value.definedTemplates();
    @:keep
    public dynamic function _execute(_wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error return __self__.value._execute(_wr, _data);
    @:keep
    public dynamic function execute(_wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error return __self__.value.execute(_wr, _data);
    @:keep
    public dynamic function executeTemplate(_wr:stdgo._internal.io.Io_Writer.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error return __self__.value.executeTemplate(_wr, _name, _data);
    @:embedded
    public dynamic function _withControl():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._withControl();
    @:embedded
    public dynamic function _useVar(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._useVar(_pos, _text);
    @:embedded
    public dynamic function _unexpected(_token:stdgo._internal.text.template.parse.Parse_T_item.T_item, _context:stdgo.GoString):Void __self__.value._unexpected(_token, _context);
    @:embedded
    public dynamic function _textOrAction():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._textOrAction();
    @:embedded
    public dynamic function _term():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._term();
    @:embedded
    public dynamic function _templateControl():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._templateControl();
    @:embedded
    public dynamic function _stopParse():Void __self__.value._stopParse();
    @:embedded
    public dynamic function _startParse(_funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>):Void __self__.value._startParse(_funcs, _lex, _treeSet);
    @:embedded
    public dynamic function _recover(_errp:stdgo.Ref<stdgo.Error>):Void __self__.value._recover(_errp);
    @:embedded
    public dynamic function _rangeControl():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._rangeControl();
    @:embedded
    public dynamic function _popVars(__0:stdgo.GoInt):Void __self__.value._popVars(__0);
    @:embedded
    public dynamic function _pipeline(_context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> return __self__.value._pipeline(_context, _end);
    @:embedded
    public dynamic function _peekNonSpace():stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__.value._peekNonSpace();
    @:embedded
    public dynamic function _peek():stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__.value._peek();
    @:embedded
    public dynamic function _parseTemplateName(_token:stdgo._internal.text.template.parse.Parse_T_item.T_item, _context:stdgo.GoString):stdgo.GoString return __self__.value._parseTemplateName(_token, _context);
    @:embedded
    public dynamic function _parseDefinition():Void __self__.value._parseDefinition();
    @:embedded
    public dynamic function _parseControl(_allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; } return __self__.value._parseControl(_allowElseIf, _context);
    @:embedded
    public dynamic function _parse():Void __self__.value._parse();
    @:embedded
    public dynamic function _operand():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._operand();
    @:embedded
    public dynamic function _nextNonSpace():stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__.value._nextNonSpace();
    @:embedded
    public dynamic function _next():stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__.value._next();
    @:embedded
    public dynamic function _newWith(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> return __self__.value._newWith(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public dynamic function _newVariable(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> return __self__.value._newVariable(_pos, _text);
    @:embedded
    public dynamic function _newText(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> return __self__.value._newText(_pos, _text);
    @:embedded
    public dynamic function _newTemplate(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> return __self__.value._newTemplate(_pos, _line, _name, _pipe);
    @:embedded
    public dynamic function _newString(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> return __self__.value._newString(_pos, _orig, _text);
    @:embedded
    public dynamic function _newRange(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> return __self__.value._newRange(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public dynamic function _newPipeline(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> return __self__.value._newPipeline(_pos, _line, _vars);
    @:embedded
    public dynamic function _newNumber(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>; var _1 : stdgo.Error; } return __self__.value._newNumber(_pos, _text, _typ);
    @:embedded
    public dynamic function _newNil(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> return __self__.value._newNil(__0);
    @:embedded
    public dynamic function _newList(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> return __self__.value._newList(__0);
    @:embedded
    public dynamic function _newIf(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> return __self__.value._newIf(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public dynamic function _newField(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> return __self__.value._newField(_pos, _text);
    @:embedded
    public dynamic function _newEnd(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> return __self__.value._newEnd(__0);
    @:embedded
    public dynamic function _newElse(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> return __self__.value._newElse(_pos, _line);
    @:embedded
    public dynamic function _newDot(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> return __self__.value._newDot(__0);
    @:embedded
    public dynamic function _newContinue(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> return __self__.value._newContinue(_pos, _line);
    @:embedded
    public dynamic function _newComment(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> return __self__.value._newComment(_pos, _text);
    @:embedded
    public dynamic function _newCommand(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> return __self__.value._newCommand(__0);
    @:embedded
    public dynamic function _newChain(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _node:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> return __self__.value._newChain(_pos, _node);
    @:embedded
    public dynamic function _newBreak(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> return __self__.value._newBreak(_pos, _line);
    @:embedded
    public dynamic function _newBool(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, __true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> return __self__.value._newBool(_pos, __true);
    @:embedded
    public dynamic function _newAction(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> return __self__.value._newAction(_pos, _line, _pipe);
    @:embedded
    public dynamic function _itemList():{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_Node.Node; } return __self__.value._itemList();
    @:embedded
    public dynamic function _ifControl():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._ifControl();
    @:embedded
    public dynamic function _hasFunction(__0:stdgo.GoString):Bool return __self__.value._hasFunction(__0);
    @:embedded
    public dynamic function _expectOneOf(_expected1:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__.value._expectOneOf(_expected1, _expected2, _context);
    @:embedded
    public dynamic function _expect(_expected:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__.value._expect(_expected, _context);
    @:embedded
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    @:embedded
    public dynamic function _error(__0:stdgo.Error):Void __self__.value._error(__0);
    @:embedded
    public dynamic function _endControl():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._endControl();
    @:embedded
    public dynamic function _elseControl():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._elseControl();
    @:embedded
    public dynamic function _continueControl(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._continueControl(_pos, _line);
    @:embedded
    public dynamic function _command():stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> return __self__.value._command();
    @:embedded
    public dynamic function _clearActionLine():Void __self__.value._clearActionLine();
    @:embedded
    public dynamic function _checkPipeline(_pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _context:stdgo.GoString):Void __self__.value._checkPipeline(_pipe, _context);
    @:embedded
    public dynamic function _breakControl(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._breakControl(_pos, _line);
    @:embedded
    public dynamic function _blockControl():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._blockControl();
    @:embedded
    public dynamic function _backup3(_t2:stdgo._internal.text.template.parse.Parse_T_item.T_item, _t1:stdgo._internal.text.template.parse.Parse_T_item.T_item):Void __self__.value._backup3(_t2, _t1);
    @:embedded
    public dynamic function _backup2(_t1:stdgo._internal.text.template.parse.Parse_T_item.T_item):Void __self__.value._backup2(_t1);
    @:embedded
    public dynamic function _backup():Void __self__.value._backup();
    @:embedded
    public dynamic function _add():Void __self__.value._add();
    @:embedded
    public dynamic function _action():stdgo._internal.text.template.parse.Parse_Node.Node return __self__.value._action();
    @:embedded
    public dynamic function errorContext(_node:stdgo._internal.text.template.parse.Parse_Node.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.value.errorContext(_node);
    @:embedded
    public dynamic function copy():stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return __self__.value.copy();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.text.template.Template_Template.Template>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
