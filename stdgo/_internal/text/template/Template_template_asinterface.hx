package stdgo._internal.text.template;
class Template_asInterface {
    @:keep
    @:tdfield
    public dynamic function _associate(_new_:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):Bool return @:_0 __self__.value._associate(_new_, _tree);
    @:keep
    @:tdfield
    public dynamic function parse(_text:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.parse(_text);
    @:keep
    @:tdfield
    public dynamic function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> return @:_0 __self__.value.lookup(_name);
    @:keep
    @:tdfield
    public dynamic function funcs(_funcMap:stdgo._internal.text.template.Template_funcmap.FuncMap):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> return @:_0 __self__.value.funcs(_funcMap);
    @:keep
    @:tdfield
    public dynamic function delims(_left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> return @:_0 __self__.value.delims(_left, _right);
    @:keep
    @:tdfield
    public dynamic function templates():stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>> return @:_0 __self__.value.templates();
    @:keep
    @:tdfield
    public dynamic function addParseTree(_name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.addParseTree(_name, _tree);
    @:keep
    @:tdfield
    public dynamic function _copy(_c:stdgo.Ref<stdgo._internal.text.template.Template_t_common.T_common>):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> return @:_0 __self__.value._copy(_c);
    @:keep
    @:tdfield
    public dynamic function clone():{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.clone();
    @:keep
    @:tdfield
    public dynamic function _init():Void @:_0 __self__.value._init();
    @:keep
    @:tdfield
    public dynamic function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> return @:_0 __self__.value.new_(_name);
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function _setOption(_opt:stdgo.GoString):Void @:_0 __self__.value._setOption(_opt);
    @:keep
    @:tdfield
    public dynamic function option(_opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> return @:_0 __self__.value.option(..._opt);
    @:keep
    @:tdfield
    public dynamic function parseFS(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.parseFS(_fsys, ..._patterns);
    @:keep
    @:tdfield
    public dynamic function parseGlob(_pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.parseGlob(_pattern);
    @:keep
    @:tdfield
    public dynamic function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } return @:_0 __self__.value.parseFiles(..._filenames);
    @:keep
    @:tdfield
    public dynamic function definedTemplates():stdgo.GoString return @:_0 __self__.value.definedTemplates();
    @:keep
    @:tdfield
    public dynamic function _execute(_wr:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value._execute(_wr, _data);
    @:keep
    @:tdfield
    public dynamic function execute(_wr:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.execute(_wr, _data);
    @:keep
    @:tdfield
    public dynamic function executeTemplate(_wr:stdgo._internal.io.Io_writer.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.executeTemplate(_wr, _name, _data);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _withControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._withControl();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _useVar(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._useVar(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _unexpected(_0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:stdgo.GoString):Void @:_0 __self__.value._unexpected(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _textOrAction():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._textOrAction();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _term():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._term();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _templateControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._templateControl();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _stopParse():Void @:_0 __self__.value._stopParse();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _startParse(_0:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _1:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _2:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>):Void @:_0 __self__.value._startParse(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _recover(_0:stdgo.Ref<stdgo.Error>):Void @:_0 __self__.value._recover(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rangeControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._rangeControl();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _popVars(_0:stdgo.GoInt):Void @:_0 __self__.value._popVars(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pipeline(_0:stdgo.GoString, _1:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> return @:_0 __self__.value._pipeline(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _peekNonSpace():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._peekNonSpace();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _peek():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._peek();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _parseTemplateName(_0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:stdgo.GoString):stdgo.GoString return @:_0 __self__.value._parseTemplateName(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _parseDefinition():Void @:_0 __self__.value._parseDefinition();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _parseControl(_0:Bool, _1:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse_pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; } return @:_0 __self__.value._parseControl(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _parse():Void @:_0 __self__.value._parse();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _operand():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._operand();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _nextNonSpace():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._nextNonSpace();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _next():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._next();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newWith(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _3:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _4:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> return @:_0 __self__.value._newWith(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newVariable(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> return @:_0 __self__.value._newVariable(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newText(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> return @:_0 __self__.value._newText(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newTemplate(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.GoString, _3:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> return @:_0 __self__.value._newTemplate(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newString(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString, _2:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> return @:_0 __self__.value._newString(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newRange(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _3:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _4:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> return @:_0 __self__.value._newRange(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newPipeline(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> return @:_0 __self__.value._newPipeline(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newNumber(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString, _2:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>; var _1 : stdgo.Error; } return @:_0 __self__.value._newNumber(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newNil(_0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> return @:_0 __self__.value._newNil(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newList(_0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> return @:_0 __self__.value._newList(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newIf(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _3:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _4:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> return @:_0 __self__.value._newIf(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newField(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> return @:_0 __self__.value._newField(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newEnd(_0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode> return @:_0 __self__.value._newEnd(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newElse(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> return @:_0 __self__.value._newElse(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newDot(_0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> return @:_0 __self__.value._newDot(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newContinue(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> return @:_0 __self__.value._newContinue(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newComment(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> return @:_0 __self__.value._newComment(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newCommand(_0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> return @:_0 __self__.value._newCommand(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newChain(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo._internal.text.template.parse.Parse_node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> return @:_0 __self__.value._newChain(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newBreak(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> return @:_0 __self__.value._newBreak(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newBool(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> return @:_0 __self__.value._newBool(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newAction(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> return @:_0 __self__.value._newAction(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _itemList():{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_node.Node; } return @:_0 __self__.value._itemList();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _ifControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._ifControl();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _hasFunction(_0:stdgo.GoString):Bool return @:_0 __self__.value._hasFunction(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _expectOneOf(_0:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _1:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _2:stdgo.GoString):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._expectOneOf(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _expect(_0:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _1:stdgo.GoString):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._expect(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _errorf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _error(_0:stdgo.Error):Void @:_0 __self__.value._error(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _endControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._endControl();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _elseControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._elseControl();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _continueControl(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._continueControl(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _command():stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> return @:_0 __self__.value._command();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _clearActionLine():Void @:_0 __self__.value._clearActionLine();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _checkPipeline(_0:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _1:stdgo.GoString):Void @:_0 __self__.value._checkPipeline(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _breakControl(_0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._breakControl(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _blockControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._blockControl();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _backup3(_0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void @:_0 __self__.value._backup3(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _backup2(_0:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void @:_0 __self__.value._backup2(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _backup():Void @:_0 __self__.value._backup();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _add():Void @:_0 __self__.value._add();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _action():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._action();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function errorContext(_0:stdgo._internal.text.template.parse.Parse_node.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:_0 __self__.value.errorContext(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function copy():stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> return @:_0 __self__.value.copy();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.Template_templatepointer.TemplatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
