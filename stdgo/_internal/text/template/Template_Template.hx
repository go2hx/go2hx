package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_Template_static_extension.Template_static_extension) class Template {
    public var _name : stdgo.GoString = "";
    @:embedded
    public var tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    @:embedded
    public var _common : stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common> = (null : stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>);
    public var _leftDelim : stdgo.GoString = "";
    public var _rightDelim : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?_common:stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>, ?_leftDelim:stdgo.GoString, ?_rightDelim:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (tree != null) this.tree = tree;
        if (_common != null) this._common = _common;
        if (_leftDelim != null) this._leftDelim = _leftDelim;
        if (_rightDelim != null) this._rightDelim = _rightDelim;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function copy():stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return this.tree.copy();
    @:embedded
    public function errorContext(_node:stdgo._internal.text.template.parse.Parse_Node.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return this.tree.errorContext(_node);
    @:embedded
    public function _action():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._action();
    @:embedded
    public function _add() this.tree._add();
    @:embedded
    public function _backup() this.tree._backup();
    @:embedded
    public function _backup2(_t1:stdgo._internal.text.template.parse.Parse_T_item.T_item) this.tree._backup2(_t1);
    @:embedded
    public function _backup3(_t2:stdgo._internal.text.template.parse.Parse_T_item.T_item, _t1:stdgo._internal.text.template.parse.Parse_T_item.T_item) this.tree._backup3(_t2, _t1);
    @:embedded
    public function _blockControl():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._blockControl();
    @:embedded
    public function _breakControl(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._breakControl(_pos, _line);
    @:embedded
    public function _checkPipeline(_pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _context:stdgo.GoString) this.tree._checkPipeline(_pipe, _context);
    @:embedded
    public function _clearActionLine() this.tree._clearActionLine();
    @:embedded
    public function _command():stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> return this.tree._command();
    @:embedded
    public function _continueControl(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._continueControl(_pos, _line);
    @:embedded
    public function _elseControl():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._elseControl();
    @:embedded
    public function _endControl():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._endControl();
    @:embedded
    public function _error(__0:stdgo.Error) this.tree._error(__0);
    @:embedded
    public function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) this.tree._errorf(_format, ..._args);
    @:embedded
    public function _expect(_expected:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_T_item.T_item return this.tree._expect(_expected, _context);
    @:embedded
    public function _expectOneOf(_expected1:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_T_item.T_item return this.tree._expectOneOf(_expected1, _expected2, _context);
    @:embedded
    public function _hasFunction(__0:stdgo.GoString):Bool return this.tree._hasFunction(__0);
    @:embedded
    public function _ifControl():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._ifControl();
    @:embedded
    public function _itemList():{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_Node.Node; } return this.tree._itemList();
    @:embedded
    public function _newAction(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> return this.tree._newAction(_pos, _line, _pipe);
    @:embedded
    public function _newBool(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, __true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> return this.tree._newBool(_pos, __true);
    @:embedded
    public function _newBreak(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> return this.tree._newBreak(_pos, _line);
    @:embedded
    public function _newChain(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _node:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> return this.tree._newChain(_pos, _node);
    @:embedded
    public function _newCommand(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> return this.tree._newCommand(__0);
    @:embedded
    public function _newComment(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> return this.tree._newComment(_pos, _text);
    @:embedded
    public function _newContinue(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> return this.tree._newContinue(_pos, _line);
    @:embedded
    public function _newDot(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> return this.tree._newDot(__0);
    @:embedded
    public function _newElse(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> return this.tree._newElse(_pos, _line);
    @:embedded
    public function _newEnd(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> return this.tree._newEnd(__0);
    @:embedded
    public function _newField(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> return this.tree._newField(_pos, _text);
    @:embedded
    public function _newIf(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> return this.tree._newIf(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public function _newList(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> return this.tree._newList(__0);
    @:embedded
    public function _newNil(__0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> return this.tree._newNil(__0);
    @:embedded
    public function _newNumber(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>; var _1 : stdgo.Error; } return this.tree._newNumber(_pos, _text, _typ);
    @:embedded
    public function _newPipeline(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> return this.tree._newPipeline(_pos, _line, _vars);
    @:embedded
    public function _newRange(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> return this.tree._newRange(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public function _newString(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> return this.tree._newString(_pos, _orig, _text);
    @:embedded
    public function _newTemplate(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> return this.tree._newTemplate(_pos, _line, _name, _pipe);
    @:embedded
    public function _newText(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> return this.tree._newText(_pos, _text);
    @:embedded
    public function _newVariable(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> return this.tree._newVariable(_pos, _text);
    @:embedded
    public function _newWith(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> return this.tree._newWith(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public function _next():stdgo._internal.text.template.parse.Parse_T_item.T_item return this.tree._next();
    @:embedded
    public function _nextNonSpace():stdgo._internal.text.template.parse.Parse_T_item.T_item return this.tree._nextNonSpace();
    @:embedded
    public function _operand():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._operand();
    @:embedded
    public function _parse() this.tree._parse();
    @:embedded
    public function _parseControl(_allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; } return this.tree._parseControl(_allowElseIf, _context);
    @:embedded
    public function _parseDefinition() this.tree._parseDefinition();
    @:embedded
    public function _parseTemplateName(_token:stdgo._internal.text.template.parse.Parse_T_item.T_item, _context:stdgo.GoString):stdgo.GoString return this.tree._parseTemplateName(_token, _context);
    @:embedded
    public function _peek():stdgo._internal.text.template.parse.Parse_T_item.T_item return this.tree._peek();
    @:embedded
    public function _peekNonSpace():stdgo._internal.text.template.parse.Parse_T_item.T_item return this.tree._peekNonSpace();
    @:embedded
    public function _pipeline(_context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> return this.tree._pipeline(_context, _end);
    @:embedded
    public function _popVars(__0:stdgo.GoInt) this.tree._popVars(__0);
    @:embedded
    public function _rangeControl():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._rangeControl();
    @:embedded
    public function _recover(_errp:stdgo.Ref<stdgo.Error>) this.tree._recover(_errp);
    @:embedded
    public function _startParse(_funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>) this.tree._startParse(_funcs, _lex, _treeSet);
    @:embedded
    public function _stopParse() this.tree._stopParse();
    @:embedded
    public function _templateControl():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._templateControl();
    @:embedded
    public function _term():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._term();
    @:embedded
    public function _textOrAction():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._textOrAction();
    @:embedded
    public function _unexpected(_token:stdgo._internal.text.template.parse.Parse_T_item.T_item, _context:stdgo.GoString) this.tree._unexpected(_token, _context);
    @:embedded
    public function _useVar(_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._useVar(_pos, _text);
    @:embedded
    public function _withControl():stdgo._internal.text.template.parse.Parse_Node.Node return this.tree._withControl();
    public function __copy__() {
        return new Template(_name, tree, _common, _leftDelim, _rightDelim);
    }
}
