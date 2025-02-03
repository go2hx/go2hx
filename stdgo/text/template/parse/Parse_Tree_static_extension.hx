package stdgo.text.template.parse;
class Tree_static_extension {
    static public function _useVar(_t:Tree, _pos:Pos, _name:String):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._useVar(_t, _pos, _name);
    }
    static public function _popVars(_t:Tree, _n:StdTypes.Int):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._popVars(_t, _n);
    }
    static public function _hasFunction(_t:Tree, _name:String):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._hasFunction(_t, _name);
    }
    static public function _term(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._term(_t);
    }
    static public function _operand(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._operand(_t);
    }
    static public function _command(_t:Tree):CommandNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._command(_t);
    }
    static public function _parseTemplateName(_t:Tree, _token:T_item, _context:String):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._parseTemplateName(_t, _token, _context);
    }
    static public function _templateControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._templateControl(_t);
    }
    static public function _blockControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._blockControl(_t);
    }
    static public function _elseControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._elseControl(_t);
    }
    static public function _endControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._endControl(_t);
    }
    static public function _withControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._withControl(_t);
    }
    static public function _rangeControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._rangeControl(_t);
    }
    static public function _ifControl(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._ifControl(_t);
    }
    static public function _parseControl(_t:Tree, _allowElseIf:Bool, _context:String):stdgo.Tuple.Tuple5<Pos, StdTypes.Int, PipeNode, ListNode, ListNode> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._parseControl(_t, _allowElseIf, _context);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function _checkPipeline(_t:Tree, _pipe:PipeNode, _context:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _context = (_context : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._checkPipeline(_t, _pipe, _context);
    }
    static public function _pipeline(_t:Tree, _context:String, _end:T_itemType):PipeNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._pipeline(_t, _context, _end);
    }
    static public function _continueControl(_t:Tree, _pos:Pos, _line:StdTypes.Int):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._continueControl(_t, _pos, _line);
    }
    static public function _breakControl(_t:Tree, _pos:Pos, _line:StdTypes.Int):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._breakControl(_t, _pos, _line);
    }
    static public function _action(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._action(_t);
    }
    static public function _clearActionLine(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._clearActionLine(_t);
    }
    static public function _textOrAction(_t:Tree):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._textOrAction(_t);
    }
    static public function _itemList(_t:Tree):stdgo.Tuple<ListNode, Node> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._itemList(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseDefinition(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._parseDefinition(_t);
    }
    static public function _parse(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._parse(_t);
    }
    static public function _add(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._add(_t);
    }
    static public function parse(_t:Tree, _text:String, _leftDelim:String, _rightDelim:String, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Tuple<Tree, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _text = (_text : stdgo.GoString);
        final _leftDelim = (_leftDelim : stdgo.GoString);
        final _rightDelim = (_rightDelim : stdgo.GoString);
        final _treeSet = (_treeSet : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension.parse(_t, _text, _leftDelim, _rightDelim, _treeSet, ...[for (i in _funcs) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _stopParse(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._stopParse(_t);
    }
    static public function _startParse(_t:Tree, _funcs:Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:T_lexer, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _funcs = ([for (i in _funcs) (i : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        final _lex = (_lex : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        final _treeSet = (_treeSet : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._startParse(_t, _funcs, _lex, _treeSet);
    }
    static public function _recover(_t:Tree, _errp:stdgo.Error):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _errp = (_errp : stdgo.Ref<stdgo.Error>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._recover(_t, _errp);
    }
    static public function _unexpected(_t:Tree, _token:T_item, _context:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _context = (_context : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._unexpected(_t, _token, _context);
    }
    static public function _expectOneOf(_t:Tree, _expected1:T_itemType, _expected2:T_itemType, _context:String):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._expectOneOf(_t, _expected1, _expected2, _context);
    }
    static public function _expect(_t:Tree, _expected:T_itemType, _context:String):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._expect(_t, _expected, _context);
    }
    static public function _error(_t:Tree, _err:stdgo.Error):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._error(_t, _err);
    }
    static public function _errorf(_t:Tree, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._errorf(_t, _format, ...[for (i in _args) i]);
    }
    static public function errorContext(_t:Tree, _n:Node):stdgo.Tuple<String, String> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension.errorContext(_t, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _peekNonSpace(_t:Tree):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._peekNonSpace(_t);
    }
    static public function _nextNonSpace(_t:Tree):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._nextNonSpace(_t);
    }
    static public function _peek(_t:Tree):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._peek(_t);
    }
    static public function _backup3(_t:Tree, _t2:T_item, _t1:T_item):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._backup3(_t, _t2, _t1);
    }
    static public function _backup2(_t:Tree, _t1:T_item):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._backup2(_t, _t1);
    }
    static public function _backup(_t:Tree):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._backup(_t);
    }
    static public function _next(_t:Tree):T_item {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._next(_t);
    }
    static public function copy(_t:Tree):Tree {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension.copy(_t);
    }
    static public function _newTemplate(_t:Tree, _pos:Pos, _line:StdTypes.Int, _name:String, _pipe:PipeNode):TemplateNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _name = (_name : stdgo.GoString);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newTemplate(_t, _pos, _line, _name, _pipe);
    }
    static public function _newWith(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):WithNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _list = (_list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _elseList = (_elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newWith(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newRange(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):RangeNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _list = (_list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _elseList = (_elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newRange(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newContinue(_t:Tree, _pos:Pos, _line:StdTypes.Int):ContinueNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newContinue(_t, _pos, _line);
    }
    static public function _newBreak(_t:Tree, _pos:Pos, _line:StdTypes.Int):BreakNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newBreak(_t, _pos, _line);
    }
    static public function _newIf(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode, _list:ListNode, _elseList:ListNode):IfNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _list = (_list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _elseList = (_elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newIf(_t, _pos, _line, _pipe, _list, _elseList);
    }
    static public function _newElse(_t:Tree, _pos:Pos, _line:StdTypes.Int):T_elseNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newElse(_t, _pos, _line);
    }
    static public function _newEnd(_t:Tree, _pos:Pos):T_endNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newEnd(_t, _pos);
    }
    static public function _newString(_t:Tree, _pos:Pos, _orig:String, _text:String):StringNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _orig = (_orig : stdgo.GoString);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newString(_t, _pos, _orig, _text);
    }
    static public function _newNumber(_t:Tree, _pos:Pos, _text:String, _typ:T_itemType):stdgo.Tuple<NumberNode, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _text = (_text : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newNumber(_t, _pos, _text, _typ);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _newBool(_t:Tree, _pos:Pos, __true:Bool):BoolNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newBool(_t, _pos, __true);
    }
    static public function _newChain(_t:Tree, _pos:Pos, _node:Node):ChainNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newChain(_t, _pos, _node);
    }
    static public function _newField(_t:Tree, _pos:Pos, _ident:String):FieldNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _ident = (_ident : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newField(_t, _pos, _ident);
    }
    static public function _newNil(_t:Tree, _pos:Pos):NilNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newNil(_t, _pos);
    }
    static public function _newDot(_t:Tree, _pos:Pos):DotNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newDot(_t, _pos);
    }
    static public function _newVariable(_t:Tree, _pos:Pos, _ident:String):VariableNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _ident = (_ident : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newVariable(_t, _pos, _ident);
    }
    static public function _newCommand(_t:Tree, _pos:Pos):CommandNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newCommand(_t, _pos);
    }
    static public function _newAction(_t:Tree, _pos:Pos, _line:StdTypes.Int, _pipe:PipeNode):ActionNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _pipe = (_pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newAction(_t, _pos, _line, _pipe);
    }
    static public function _newPipeline(_t:Tree, _pos:Pos, _line:StdTypes.Int, _vars:Array<VariableNode>):PipeNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _line = (_line : stdgo.GoInt);
        final _vars = ([for (i in _vars) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newPipeline(_t, _pos, _line, _vars);
    }
    static public function _newComment(_t:Tree, _pos:Pos, _text:String):CommentNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newComment(_t, _pos, _text);
    }
    static public function _newText(_t:Tree, _pos:Pos, _text:String):TextNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newText(_t, _pos, _text);
    }
    static public function _newList(_t:Tree, _pos:Pos):ListNode {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return stdgo._internal.text.template.parse.Parse_Tree_static_extension.Tree_static_extension._newList(_t, _pos);
    }
}
