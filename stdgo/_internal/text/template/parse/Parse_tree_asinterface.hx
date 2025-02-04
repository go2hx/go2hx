package stdgo._internal.text.template.parse;
class Tree_asInterface {
    @:keep
    @:tdfield
    public dynamic function _useVar(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _name:stdgo.GoString):stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._useVar(_pos, _name);
    @:keep
    @:tdfield
    public dynamic function _popVars(_n:stdgo.GoInt):Void @:_0 __self__.value._popVars(_n);
    @:keep
    @:tdfield
    public dynamic function _hasFunction(_name:stdgo.GoString):Bool return @:_0 __self__.value._hasFunction(_name);
    @:keep
    @:tdfield
    public dynamic function _term():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._term();
    @:keep
    @:tdfield
    public dynamic function _operand():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._operand();
    @:keep
    @:tdfield
    public dynamic function _command():stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> return @:_0 __self__.value._command();
    @:keep
    @:tdfield
    public dynamic function _parseTemplateName(_token:stdgo._internal.text.template.parse.Parse_t_item.T_item, _context:stdgo.GoString):stdgo.GoString return @:_0 __self__.value._parseTemplateName(_token, _context);
    @:keep
    @:tdfield
    public dynamic function _templateControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._templateControl();
    @:keep
    @:tdfield
    public dynamic function _blockControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._blockControl();
    @:keep
    @:tdfield
    public dynamic function _elseControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._elseControl();
    @:keep
    @:tdfield
    public dynamic function _endControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._endControl();
    @:keep
    @:tdfield
    public dynamic function _withControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._withControl();
    @:keep
    @:tdfield
    public dynamic function _rangeControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._rangeControl();
    @:keep
    @:tdfield
    public dynamic function _ifControl():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._ifControl();
    @:keep
    @:tdfield
    public dynamic function _parseControl(_allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse_pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; } return @:_0 __self__.value._parseControl(_allowElseIf, _context);
    @:keep
    @:tdfield
    public dynamic function _checkPipeline(_pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _context:stdgo.GoString):Void @:_0 __self__.value._checkPipeline(_pipe, _context);
    @:keep
    @:tdfield
    public dynamic function _pipeline(_context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> return @:_0 __self__.value._pipeline(_context, _end);
    @:keep
    @:tdfield
    public dynamic function _continueControl(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._continueControl(_pos, _line);
    @:keep
    @:tdfield
    public dynamic function _breakControl(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._breakControl(_pos, _line);
    @:keep
    @:tdfield
    public dynamic function _action():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._action();
    @:keep
    @:tdfield
    public dynamic function _clearActionLine():Void @:_0 __self__.value._clearActionLine();
    @:keep
    @:tdfield
    public dynamic function _textOrAction():stdgo._internal.text.template.parse.Parse_node.Node return @:_0 __self__.value._textOrAction();
    @:keep
    @:tdfield
    public dynamic function _itemList():{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_node.Node; } return @:_0 __self__.value._itemList();
    @:keep
    @:tdfield
    public dynamic function _parseDefinition():Void @:_0 __self__.value._parseDefinition();
    @:keep
    @:tdfield
    public dynamic function _parse():Void @:_0 __self__.value._parse();
    @:keep
    @:tdfield
    public dynamic function _add():Void @:_0 __self__.value._add();
    @:keep
    @:tdfield
    public dynamic function parse(_text:stdgo.GoString, _leftDelim:stdgo.GoString, _rightDelim:stdgo.GoString, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>; var _1 : stdgo.Error; } return @:_0 __self__.value.parse(_text, _leftDelim, _rightDelim, _treeSet, ..._funcs);
    @:keep
    @:tdfield
    public dynamic function _stopParse():Void @:_0 __self__.value._stopParse();
    @:keep
    @:tdfield
    public dynamic function _startParse(_funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>):Void @:_0 __self__.value._startParse(_funcs, _lex, _treeSet);
    @:keep
    @:tdfield
    public dynamic function _recover(_errp:stdgo.Ref<stdgo.Error>):Void @:_0 __self__.value._recover(_errp);
    @:keep
    @:tdfield
    public dynamic function _unexpected(_token:stdgo._internal.text.template.parse.Parse_t_item.T_item, _context:stdgo.GoString):Void @:_0 __self__.value._unexpected(_token, _context);
    @:keep
    @:tdfield
    public dynamic function _expectOneOf(_expected1:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._expectOneOf(_expected1, _expected2, _context);
    @:keep
    @:tdfield
    public dynamic function _expect(_expected:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._expect(_expected, _context);
    @:keep
    @:tdfield
    public dynamic function _error(_err:stdgo.Error):Void @:_0 __self__.value._error(_err);
    @:keep
    @:tdfield
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function errorContext(_n:stdgo._internal.text.template.parse.Parse_node.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:_0 __self__.value.errorContext(_n);
    @:keep
    @:tdfield
    public dynamic function _peekNonSpace():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._peekNonSpace();
    @:keep
    @:tdfield
    public dynamic function _nextNonSpace():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._nextNonSpace();
    @:keep
    @:tdfield
    public dynamic function _peek():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._peek();
    @:keep
    @:tdfield
    public dynamic function _backup3(_t2:stdgo._internal.text.template.parse.Parse_t_item.T_item, _t1:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void @:_0 __self__.value._backup3(_t2, _t1);
    @:keep
    @:tdfield
    public dynamic function _backup2(_t1:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void @:_0 __self__.value._backup2(_t1);
    @:keep
    @:tdfield
    public dynamic function _backup():Void @:_0 __self__.value._backup();
    @:keep
    @:tdfield
    public dynamic function _next():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._next();
    @:keep
    @:tdfield
    public dynamic function copy():stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> return @:_0 __self__.value.copy();
    @:keep
    @:tdfield
    public dynamic function _newTemplate(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> return @:_0 __self__.value._newTemplate(_pos, _line, _name, _pipe);
    @:keep
    @:tdfield
    public dynamic function _newWith(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> return @:_0 __self__.value._newWith(_pos, _line, _pipe, _list, _elseList);
    @:keep
    @:tdfield
    public dynamic function _newRange(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> return @:_0 __self__.value._newRange(_pos, _line, _pipe, _list, _elseList);
    @:keep
    @:tdfield
    public dynamic function _newContinue(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> return @:_0 __self__.value._newContinue(_pos, _line);
    @:keep
    @:tdfield
    public dynamic function _newBreak(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> return @:_0 __self__.value._newBreak(_pos, _line);
    @:keep
    @:tdfield
    public dynamic function _newIf(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> return @:_0 __self__.value._newIf(_pos, _line, _pipe, _list, _elseList);
    @:keep
    @:tdfield
    public dynamic function _newElse(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> return @:_0 __self__.value._newElse(_pos, _line);
    @:keep
    @:tdfield
    public dynamic function _newEnd(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode> return @:_0 __self__.value._newEnd(_pos);
    @:keep
    @:tdfield
    public dynamic function _newString(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> return @:_0 __self__.value._newString(_pos, _orig, _text);
    @:keep
    @:tdfield
    public dynamic function _newNumber(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>; var _1 : stdgo.Error; } return @:_0 __self__.value._newNumber(_pos, _text, _typ);
    @:keep
    @:tdfield
    public dynamic function _newBool(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, __true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> return @:_0 __self__.value._newBool(_pos, __true);
    @:keep
    @:tdfield
    public dynamic function _newChain(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _node:stdgo._internal.text.template.parse.Parse_node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> return @:_0 __self__.value._newChain(_pos, _node);
    @:keep
    @:tdfield
    public dynamic function _newField(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> return @:_0 __self__.value._newField(_pos, _ident);
    @:keep
    @:tdfield
    public dynamic function _newNil(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> return @:_0 __self__.value._newNil(_pos);
    @:keep
    @:tdfield
    public dynamic function _newDot(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> return @:_0 __self__.value._newDot(_pos);
    @:keep
    @:tdfield
    public dynamic function _newVariable(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> return @:_0 __self__.value._newVariable(_pos, _ident);
    @:keep
    @:tdfield
    public dynamic function _newCommand(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> return @:_0 __self__.value._newCommand(_pos);
    @:keep
    @:tdfield
    public dynamic function _newAction(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> return @:_0 __self__.value._newAction(_pos, _line, _pipe);
    @:keep
    @:tdfield
    public dynamic function _newPipeline(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> return @:_0 __self__.value._newPipeline(_pos, _line, _vars);
    @:keep
    @:tdfield
    public dynamic function _newComment(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> return @:_0 __self__.value._newComment(_pos, _text);
    @:keep
    @:tdfield
    public dynamic function _newText(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> return @:_0 __self__.value._newText(_pos, _text);
    @:keep
    @:tdfield
    public dynamic function _newList(_pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> return @:_0 __self__.value._newList(_pos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.parse.Parse_treepointer.TreePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
