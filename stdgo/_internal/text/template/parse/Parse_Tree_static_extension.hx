package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.Tree_asInterface) class Tree_static_extension {
    @:keep
    static public function _useVar( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _name:stdgo.GoString):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _v = _t._newVariable(_pos, _name?.__copy__());
        for (__0 => _varName in _t._vars) {
            if (_varName == (_v.ident[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                return stdgo.Go.asInterface(_v);
            };
        };
        _t._errorf(("undefined variable %q" : stdgo.GoString), stdgo.Go.toInterface(_v.ident[(0 : stdgo.GoInt)]));
        return (null : stdgo._internal.text.template.parse.Parse_Node.Node);
    }
    @:keep
    static public function _popVars( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _n:stdgo.GoInt):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t._vars = (_t._vars.__slice__(0, _n) : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    static public function _hasFunction( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _name:stdgo.GoString):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        for (__0 => _funcMap in _t._funcs) {
            if (_funcMap == null) {
                continue;
            };
            if ((_funcMap[_name] ?? (null : stdgo.AnyInterface)) != null) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _term( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        {
            var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
            {
                final __value__ = _token._typ;
                if (__value__ == ((10 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    var _checkFunc = ((_t.mode & (2u32 : stdgo._internal.text.template.parse.Parse_Mode.Mode) : stdgo._internal.text.template.parse.Parse_Mode.Mode) == ((0u32 : stdgo._internal.text.template.parse.Parse_Mode.Mode)) : Bool);
                    if ((_checkFunc && !_t._hasFunction(_token._val?.__copy__()) : Bool)) {
                        _t._errorf(("function %q not defined" : stdgo.GoString), stdgo.Go.toInterface(_token._val));
                    };
                    return stdgo.Go.asInterface(stdgo._internal.text.template.parse.Parse_newIdentifier.newIdentifier(_token._val?.__copy__()).setTree(_t).setPos(_token._pos));
                } else if (__value__ == ((26 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return stdgo.Go.asInterface(_t._newDot(_token._pos));
                } else if (__value__ == ((31 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return stdgo.Go.asInterface(_t._newNil(_token._pos));
                } else if (__value__ == ((21 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._useVar(_token._pos, _token._val?.__copy__());
                } else if (__value__ == ((9 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return stdgo.Go.asInterface(_t._newField(_token._pos, _token._val?.__copy__()));
                } else if (__value__ == ((1 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return stdgo.Go.asInterface(_t._newBool(_token._pos, _token._val == (("true" : stdgo.GoString))));
                } else if (__value__ == ((3 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((5 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((13 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    var __tmp__ = _t._newNumber(_token._pos, _token._val?.__copy__(), _token._typ), _number:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t._error(_err);
                    };
                    return stdgo.Go.asInterface(_number);
                } else if (__value__ == ((12 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return stdgo.Go.asInterface(_t._pipeline(("parenthesized pipeline" : stdgo.GoString), (17 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)));
                } else if (__value__ == ((19 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((15 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_token._val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t._error(_err);
                    };
                    return stdgo.Go.asInterface(_t._newString(_token._pos, _token._val?.__copy__(), _s?.__copy__()));
                };
            };
        };
        _t._backup();
        return (null : stdgo._internal.text.template.parse.Parse_Node.Node);
    }
    @:keep
    static public function _operand( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _node = (_t._term() : stdgo._internal.text.template.parse.Parse_Node.Node);
        if (_node == null) {
            return (null : stdgo._internal.text.template.parse.Parse_Node.Node);
        };
        if (_t._peek()._typ == ((9 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
            var _chain = _t._newChain(_t._peek()._pos, _node);
            while (_t._peek()._typ == ((9 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                _chain.add(_t._next()._val?.__copy__());
            };
            {
                final __value__ = _node.type();
                if (__value__ == ((8 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                    _node = stdgo.Go.asInterface(_t._newField(_chain.position(), (_chain.string() : stdgo.GoString)?.__copy__()));
                } else if (__value__ == ((18 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                    _node = stdgo.Go.asInterface(_t._newVariable(_chain.position(), (_chain.string() : stdgo.GoString)?.__copy__()));
                } else if (__value__ == ((2 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((16 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((13 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((12 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((5 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                    _t._errorf(("unexpected . after term %q" : stdgo.GoString), stdgo.Go.toInterface((_node.string() : stdgo.GoString)));
                } else {
                    _node = stdgo.Go.asInterface(_chain);
                };
            };
        };
        return _node;
    }
    @:keep
    static public function _command( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _cmd = _t._newCommand(_t._peekNonSpace()._pos);
        while (true) {
            _t._peekNonSpace();
            var _operand = (_t._operand() : stdgo._internal.text.template.parse.Parse_Node.Node);
            if (_operand != null) {
                _cmd._append(_operand);
            };
            {
                var _token = (_t._next()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                {
                    final __value__ = _token._typ;
                    if (__value__ == ((18 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                        continue;
                    } else if (__value__ == ((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((17 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                        _t._backup();
                    } else if (__value__ == ((14 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {} else {
                        _t._unexpected(_token?.__copy__(), ("operand" : stdgo.GoString));
                    };
                };
            };
            break;
        };
        if ((_cmd.args.length) == ((0 : stdgo.GoInt))) {
            _t._errorf(("empty command" : stdgo.GoString));
        };
        return _cmd;
    }
    @:keep
    static public function _parseTemplateName( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _token:stdgo._internal.text.template.parse.Parse_T_item.T_item, _context:stdgo.GoString):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _name = ("" : stdgo.GoString);
        {
            final __value__ = _token._typ;
            if (__value__ == ((19 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((15 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_token._val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t._error(_err);
                };
                _name = _s?.__copy__();
            } else {
                _t._unexpected(_token?.__copy__(), _context?.__copy__());
            };
        };
        return _name;
    }
    @:keep
    static public function _templateControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        {};
        var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        var _name = (_t._parseTemplateName(_token?.__copy__(), ("template clause" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        if (_t._nextNonSpace()._typ != ((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
            _t._backup();
            _pipe = _t._pipeline(("template clause" : stdgo.GoString), (16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
        };
        return stdgo.Go.asInterface(_t._newTemplate(_token._pos, _token._line, _name?.__copy__(), _pipe));
    }
    @:keep
    static public function _blockControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        {};
        var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        var _name = (_t._parseTemplateName(_token?.__copy__(), ("block clause" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _pipe = _t._pipeline(("block clause" : stdgo.GoString), (16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
        var _block = stdgo._internal.text.template.parse.Parse_new_.new_(_name?.__copy__());
        _block._text = _t._text?.__copy__();
        _block.mode = _t.mode;
        _block.parseName = _t.parseName?.__copy__();
        _block._startParse(_t._funcs, _t._lex, _t._treeSet);
        var _end:stdgo._internal.text.template.parse.Parse_Node.Node = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
        {
            var __tmp__ = _block._itemList();
            _block.root = __tmp__._0;
            _end = __tmp__._1;
        };
        if (_end.type() != ((7 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
            _t._errorf(("unexpected %s in %s" : stdgo.GoString), stdgo.Go.toInterface(_end), stdgo.Go.toInterface(("block clause" : stdgo.GoString)));
        };
        _block._add();
        _block._stopParse();
        return stdgo.Go.asInterface(_t._newTemplate(_token._pos, _token._line, _name?.__copy__(), _pipe));
    }
    @:keep
    static public function _elseControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _peek = (_t._peekNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        if (_peek._typ == ((30 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
            return stdgo.Go.asInterface(_t._newElse(_peek._pos, _peek._line));
        };
        var _token = (_t._expect((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType), ("else" : stdgo.GoString))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        return stdgo.Go.asInterface(_t._newElse(_token._pos, _token._line));
    }
    @:keep
    static public function _endControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return stdgo.Go.asInterface(_t._newEnd(_t._expect((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType), ("end" : stdgo.GoString))._pos));
    }
    @:keep
    static public function _withControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return stdgo.Go.asInterface(({
            var __tmp__ = _t._parseControl(false, ("with" : stdgo.GoString));
            _t._newWith((__tmp__._0 : stdgo._internal.text.template.parse.Parse_Pos.Pos), (__tmp__._1 : stdgo.GoInt), (__tmp__._2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), (__tmp__._3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>), (__tmp__._4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>));
        }));
    }
    @:keep
    static public function _rangeControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _r = ({
            var __tmp__ = _t._parseControl(false, ("range" : stdgo.GoString));
            _t._newRange((__tmp__._0 : stdgo._internal.text.template.parse.Parse_Pos.Pos), (__tmp__._1 : stdgo.GoInt), (__tmp__._2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), (__tmp__._3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>), (__tmp__._4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>));
        });
        return stdgo.Go.asInterface(_r);
    }
    @:keep
    static public function _ifControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return stdgo.Go.asInterface(({
            var __tmp__ = _t._parseControl(true, ("if" : stdgo.GoString));
            _t._newIf((__tmp__._0 : stdgo._internal.text.template.parse.Parse_Pos.Pos), (__tmp__._1 : stdgo.GoInt), (__tmp__._2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), (__tmp__._3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>), (__tmp__._4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>));
        }));
    }
    @:keep
    static public function _parseControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos), _line = (0 : stdgo.GoInt), _pipe = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), _list = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>), _elseList = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        try {
            {
                var _a0 = (_t._vars.length);
                __deferstack__.unshift(() -> _t._popVars(_a0));
            };
            _pipe = _t._pipeline(_context?.__copy__(), (16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
            if (_context == (("range" : stdgo.GoString))) {
                _t._rangeDepth++;
            };
            var _next:stdgo._internal.text.template.parse.Parse_Node.Node = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
            {
                var __tmp__ = _t._itemList();
                _list = __tmp__._0;
                _next = __tmp__._1;
            };
            if (_context == (("range" : stdgo.GoString))) {
                _t._rangeDepth--;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _next.type();
                        if (__value__ == ((7 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                            break;
                        } else if (__value__ == ((6 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                            if (_allowElseIf) {
                                if (_t._peek()._typ == ((30 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                                    _t._next();
                                    _elseList = _t._newList(_next.position());
                                    _elseList._append(_t._ifControl());
                                    break;
                                };
                            };
                            {
                                var __tmp__ = _t._itemList();
                                _elseList = __tmp__._0;
                                _next = __tmp__._1;
                            };
                            if (_next.type() != ((7 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                                _t._errorf(("expected end; found %s" : stdgo.GoString), stdgo.Go.toInterface(_next));
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; } = { _0 : _pipe.position(), _1 : _pipe.line, _2 : _pipe, _3 : _list, _4 : _elseList };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; } = { _0 : _pos, _1 : _line, _2 : _pipe, _3 : _list, _4 : _elseList };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; } = { _0 : _pos, _1 : _line, _2 : _pipe, _3 : _list, _4 : _elseList };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _checkPipeline( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _context:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        if ((_pipe.cmds.length) == ((0 : stdgo.GoInt))) {
            _t._errorf(("missing value for %s" : stdgo.GoString), stdgo.Go.toInterface(_context));
        };
        for (_i => _c in (_pipe.cmds.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>)) {
            {
                final __value__ = _c.args[(0 : stdgo.GoInt)].type();
                if (__value__ == ((2 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((5 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((12 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((13 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((16 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                    _t._errorf(("non executable command in pipeline stage %d" : stdgo.GoString), stdgo.Go.toInterface((_i + (2 : stdgo.GoInt) : stdgo.GoInt)));
                };
            };
        };
    }
    @:keep
    static public function _pipeline( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        stdgo._internal.internal.Macro.controlFlow({
            var _pipe = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
            var _token = (_t._peekNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
            _pipe = _t._newPipeline(_token._pos, _token._line, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>));
            @:label("decls") {
                var _v = (_t._peekNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                if (_v._typ == ((21 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    _t._next();
                    var _tokenAfterVariable = (_t._peek()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                    var _next = (_t._peekNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                    if (_next._typ == ((6 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || _next._typ == ((7 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                        _pipe.isAssign = _next._typ == ((6 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                        _t._nextNonSpace();
                        _pipe.decl = (_pipe.decl.__append__(_t._newVariable(_v._pos, _v._val?.__copy__())));
                        _t._vars = (_t._vars.__append__(_v._val?.__copy__()));
                    } else if (((_next._typ == (2 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) && (_next._val == ("," : stdgo.GoString)) : Bool)) {
                        _t._nextNonSpace();
                        _pipe.decl = (_pipe.decl.__append__(_t._newVariable(_v._pos, _v._val?.__copy__())));
                        _t._vars = (_t._vars.__append__(_v._val?.__copy__()));
                        if (((_context == ("range" : stdgo.GoString)) && ((_pipe.decl.length) < (2 : stdgo.GoInt) : Bool) : Bool)) {
                            {
                                final __value__ = _t._peekNonSpace()._typ;
                                if (__value__ == ((21 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((17 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                                    @:goto "decls";
                                } else {
                                    _t._errorf(("range can only initialize variables" : stdgo.GoString));
                                };
                            };
                        };
                        _t._errorf(("too many declarations in %s" : stdgo.GoString), stdgo.Go.toInterface(_context));
                    } else if (_tokenAfterVariable._typ == ((18 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                        _t._backup3(_v?.__copy__(), _tokenAfterVariable?.__copy__());
                    } else {
                        _t._backup2(_v?.__copy__());
                    };
                };
            };
            while (true) {
                {
                    var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                    {
                        final __value__ = _token._typ;
                        if (__value__ == (_end)) {
                            _t._checkPipeline(_pipe, _context?.__copy__());
                            return _pipe;
                        } else if (__value__ == ((1 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((3 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((5 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((26 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((9 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((10 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((13 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((31 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((15 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((19 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((21 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) || __value__ == ((12 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                            _t._backup();
                            _pipe._append(_t._command());
                        } else {
                            _t._unexpected(_token?.__copy__(), _context?.__copy__());
                        };
                    };
                };
            };
        });
    }
    @:keep
    static public function _continueControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        {
            var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
            if (_token._typ != ((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                _t._unexpected(_token?.__copy__(), ("{{continue}}" : stdgo.GoString));
            };
        };
        if (_t._rangeDepth == ((0 : stdgo.GoInt))) {
            _t._errorf(("{{continue}} outside {{range}}" : stdgo.GoString));
        };
        return stdgo.Go.asInterface(_t._newContinue(_pos, _line));
    }
    @:keep
    static public function _breakControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        {
            var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
            if (_token._typ != ((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                _t._unexpected(_token?.__copy__(), ("{{break}}" : stdgo.GoString));
            };
        };
        if (_t._rangeDepth == ((0 : stdgo.GoInt))) {
            _t._errorf(("{{break}} outside {{range}}" : stdgo.GoString));
        };
        return stdgo.Go.asInterface(_t._newBreak(_pos, _line));
    }
    @:keep
    static public function _action( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _n = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
        {
            var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
            {
                final __value__ = _token._typ;
                if (__value__ == ((23 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._blockControl();
                } else if (__value__ == ((24 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._breakControl(_token._pos, _token._line);
                } else if (__value__ == ((25 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._continueControl(_token._pos, _token._line);
                } else if (__value__ == ((28 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._elseControl();
                } else if (__value__ == ((29 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._endControl();
                } else if (__value__ == ((30 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._ifControl();
                } else if (__value__ == ((32 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._rangeControl();
                } else if (__value__ == ((33 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._templateControl();
                } else if (__value__ == ((34 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    return _t._withControl();
                };
            };
        };
        _t._backup();
        var _token = (_t._peek()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        return stdgo.Go.asInterface(_t._newAction(_token._pos, _token._line, _t._pipeline(("command" : stdgo.GoString), (16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))));
    }
    @:keep
    static public function _clearActionLine( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t._actionLine = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _textOrAction( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                {
                    final __value__ = _token._typ;
                    if (__value__ == ((20 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                        return stdgo.Go.asInterface(_t._newText(_token._pos, _token._val?.__copy__()));
                    } else if (__value__ == ((11 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                        _t._actionLine = _token._line;
                        __deferstack__.unshift(() -> _t._clearActionLine());
                        {
                            final __ret__:stdgo._internal.text.template.parse.Parse_Node.Node = _t._action();
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((4 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                        {
                            final __ret__:stdgo._internal.text.template.parse.Parse_Node.Node = stdgo.Go.asInterface(_t._newComment(_token._pos, _token._val?.__copy__()));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    } else {
                        _t._unexpected(_token?.__copy__(), ("input" : stdgo.GoString));
                    };
                };
            };
            {
                final __ret__:stdgo._internal.text.template.parse.Parse_Node.Node = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo._internal.text.template.parse.Parse_Node.Node = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo._internal.text.template.parse.Parse_Node.Node = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _itemList( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_Node.Node; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _list = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>), _next = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
        _list = _t._newList(_t._peekNonSpace()._pos);
        while (_t._peekNonSpace()._typ != ((8 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
            var _n = (_t._textOrAction() : stdgo._internal.text.template.parse.Parse_Node.Node);
            {
                final __value__ = _n.type();
                if (__value__ == ((7 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((6 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                    return { _0 : _list, _1 : _n };
                };
            };
            _list._append(_n);
        };
        _t._errorf(("unexpected EOF" : stdgo.GoString));
        return { _0 : _list, _1 : _next };
    }
    @:keep
    static public function _parseDefinition( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        {};
        var _name = (_t._expectOneOf((19 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType), (15 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType), ("define clause" : stdgo.GoString))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_name._val?.__copy__());
            _t.name = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t._error(_err);
        };
        _t._expect((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType), ("define clause" : stdgo.GoString));
        var _end:stdgo._internal.text.template.parse.Parse_Node.Node = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
        {
            var __tmp__ = _t._itemList();
            _t.root = __tmp__._0;
            _end = __tmp__._1;
        };
        if (_end.type() != ((7 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
            _t._errorf(("unexpected %s in %s" : stdgo.GoString), stdgo.Go.toInterface(_end), stdgo.Go.toInterface(("define clause" : stdgo.GoString)));
        };
        _t._add();
        _t._stopParse();
    }
    @:keep
    static public function _parse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t.root = _t._newList(_t._peek()._pos);
        while (_t._peek()._typ != ((8 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
            if (_t._peek()._typ == ((11 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                var _delim = (_t._next()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                if (_t._nextNonSpace()._typ == ((27 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                    var _newT = stdgo._internal.text.template.parse.Parse_new_.new_(("definition" : stdgo.GoString));
                    _newT._text = _t._text?.__copy__();
                    _newT.mode = _t.mode;
                    _newT.parseName = _t.parseName?.__copy__();
                    _newT._startParse(_t._funcs, _t._lex, _t._treeSet);
                    _newT._parseDefinition();
                    continue;
                };
                _t._backup2(_delim?.__copy__());
            };
            {
                var _n = (_t._textOrAction() : stdgo._internal.text.template.parse.Parse_Node.Node);
                {
                    final __value__ = _n.type();
                    if (__value__ == ((7 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType)) || __value__ == ((6 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                        _t._errorf(("unexpected %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
                    } else {
                        _t.root._append(_n);
                    };
                };
            };
        };
    }
    @:keep
    static public function _add( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _tree = (_t._treeSet[_t.name] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>));
        if ((((_tree == null) || (_tree : Dynamic).__nil__) || stdgo._internal.text.template.parse.Parse_isEmptyTree.isEmptyTree(stdgo.Go.asInterface(_tree.root)) : Bool)) {
            _t._treeSet[_t.name] = _t;
            return;
        };
        if (!stdgo._internal.text.template.parse.Parse_isEmptyTree.isEmptyTree(stdgo.Go.asInterface(_t.root))) {
            _t._errorf(("template: multiple definition of template %q" : stdgo.GoString), stdgo.Go.toInterface(_t.name));
        };
    }
    @:keep
    static public function parse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _text:stdgo.GoString, _leftDelim:stdgo.GoString, _rightDelim:stdgo.GoString, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>; var _1 : stdgo.Error; } {
        var _funcs = new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>(_funcs.length, 0, ..._funcs);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _tree = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> _t._recover(_a0));
            };
            _t.parseName = _t.name?.__copy__();
            var _lexer = stdgo._internal.text.template.parse.Parse__lex._lex(_t.name?.__copy__(), _text?.__copy__(), _leftDelim?.__copy__(), _rightDelim?.__copy__());
            _t._startParse(_funcs, _lexer, _treeSet);
            _t._text = _text?.__copy__();
            _t._parse();
            _t._add();
            _t._stopParse();
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>; var _1 : stdgo.Error; } = { _0 : _t, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>; var _1 : stdgo.Error; } = { _0 : _tree, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>; var _1 : stdgo.Error; } = { _0 : _tree, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _stopParse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t._lex = null;
        _t._vars = (null : stdgo.Slice<stdgo.GoString>);
        _t._funcs = (null : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        _t._treeSet = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>);
    }
    @:keep
    static public function _startParse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t.root = null;
        _t._lex = _lex;
        _t._vars = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("$" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _t._funcs = _funcs;
        _t._treeSet = _treeSet;
        _lex._options = ({ _emitComment : (_t.mode & (1u32 : stdgo._internal.text.template.parse.Parse_Mode.Mode) : stdgo._internal.text.template.parse.Parse_Mode.Mode) != ((0u32 : stdgo._internal.text.template.parse.Parse_Mode.Mode)), _breakOK : !_t._hasFunction(("break" : stdgo.GoString)), _continueOK : !_t._hasFunction(("continue" : stdgo.GoString)) } : stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions);
    }
    @:keep
    static public function _recover( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _errp:stdgo.Ref<stdgo.Error>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _e = ({
            final r = stdgo.Go.recover_exception;
            stdgo.Go.recover_exception = null;
            r;
        } : stdgo.AnyInterface);
        if (_e != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.runtime.Runtime_Error.Error)) : stdgo._internal.runtime.Runtime_Error.Error), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.runtime.Runtime_Error.Error), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    throw stdgo.Go.toInterface(_e);
                };
            };
            if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                _t._stopParse();
            };
            {
                var __tmp__ = (stdgo.Go.typeAssert((_e : stdgo.Error)) : stdgo.Error);
                (_errp : stdgo.Error).error = __tmp__.error;
            };
        };
    }
    @:keep
    static public function _unexpected( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _token:stdgo._internal.text.template.parse.Parse_T_item.T_item, _context:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        if (_token._typ == ((0 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
            var _extra = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            if (((_t._actionLine != (0 : stdgo.GoInt)) && (_t._actionLine != _token._line) : Bool)) {
                _extra = stdgo._internal.fmt.Fmt_sprintf.sprintf((" in action started at %s:%d" : stdgo.GoString), stdgo.Go.toInterface(_t.parseName), stdgo.Go.toInterface(_t._actionLine))?.__copy__();
                if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_token._val?.__copy__(), (" action" : stdgo.GoString))) {
                    _extra = (_extra.__slice__(((" in action" : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
                };
            };
            _t._errorf(("%s%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_token)), stdgo.Go.toInterface(_extra));
        };
        _t._errorf(("unexpected %s in %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_token)), stdgo.Go.toInterface(_context));
    }
    @:keep
    static public function _expectOneOf( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _expected1:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_T_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        if (((_token._typ != _expected1) && (_token._typ != _expected2) : Bool)) {
            _t._unexpected(_token?.__copy__(), _context?.__copy__());
        };
        return _token?.__copy__();
    }
    @:keep
    static public function _expect( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _expected:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_T_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        if (_token._typ != (_expected)) {
            _t._unexpected(_token?.__copy__(), _context?.__copy__());
        };
        return _token?.__copy__();
    }
    @:keep
    static public function _error( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _err:stdgo.Error):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t._errorf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_err));
    }
    @:keep
    static public function _errorf( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t.root = null;
        _format = stdgo._internal.fmt.Fmt_sprintf.sprintf(("template: %s:%d: %s" : stdgo.GoString), stdgo.Go.toInterface(_t.parseName), stdgo.Go.toInterface(_t._token[(0 : stdgo.GoInt)]._line), stdgo.Go.toInterface(_format))?.__copy__();
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)));
    }
    @:keep
    static public function errorContext( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _n:stdgo._internal.text.template.parse.Parse_Node.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _location = ("" : stdgo.GoString), _context = ("" : stdgo.GoString);
        var _pos = (_n.position() : stdgo.GoInt);
        var _tree = _n._tree();
        if (_tree == null || (_tree : Dynamic).__nil__) {
            _tree = _t;
        };
        var _text = ((_tree._text.__slice__(0, _pos) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _byteNum = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_text?.__copy__(), ("\n" : stdgo.GoString)) : stdgo.GoInt);
        if (_byteNum == ((-1 : stdgo.GoInt))) {
            _byteNum = _pos;
        } else {
            _byteNum++;
            _byteNum = (_pos - _byteNum : stdgo.GoInt);
        };
        var _lineNum = ((1 : stdgo.GoInt) + stdgo._internal.strings.Strings_count.count(_text?.__copy__(), ("\n" : stdgo.GoString)) : stdgo.GoInt);
        _context = (_n.string() : stdgo.GoString)?.__copy__();
        return { _0 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_tree.parseName), stdgo.Go.toInterface(_lineNum), stdgo.Go.toInterface(_byteNum))?.__copy__(), _1 : _context?.__copy__() };
    }
    @:keep
    static public function _peekNonSpace( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_T_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _token = (_t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        _t._backup();
        return _token?.__copy__();
    }
    @:keep
    static public function _nextNonSpace( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_T_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _token = ({} : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        while (true) {
            _token = _t._next()?.__copy__();
            if (_token._typ != ((18 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                break;
            };
        };
        return _token?.__copy__();
    }
    @:keep
    static public function _peek( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_T_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        if ((_t._peekCount > (0 : stdgo.GoInt) : Bool)) {
            return _t._token[(_t._peekCount - (1 : stdgo.GoInt) : stdgo.GoInt)];
        };
        _t._peekCount = (1 : stdgo.GoInt);
        _t._token[(0 : stdgo.GoInt)] = _t._lex._nextItem()?.__copy__();
        return _t._token[(0 : stdgo.GoInt)];
    }
    @:keep
    static public function _backup3( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _t2:stdgo._internal.text.template.parse.Parse_T_item.T_item, _t1:stdgo._internal.text.template.parse.Parse_T_item.T_item):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t._token[(1 : stdgo.GoInt)] = _t1?.__copy__();
        _t._token[(2 : stdgo.GoInt)] = _t2?.__copy__();
        _t._peekCount = (3 : stdgo.GoInt);
    }
    @:keep
    static public function _backup2( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _t1:stdgo._internal.text.template.parse.Parse_T_item.T_item):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t._token[(1 : stdgo.GoInt)] = _t1?.__copy__();
        _t._peekCount = (2 : stdgo.GoInt);
    }
    @:keep
    static public function _backup( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        _t._peekCount++;
    }
    @:keep
    static public function _next( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo._internal.text.template.parse.Parse_T_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        if ((_t._peekCount > (0 : stdgo.GoInt) : Bool)) {
            _t._peekCount--;
        } else {
            _t._token[(0 : stdgo.GoInt)] = _t._lex._nextItem()?.__copy__();
        };
        return _t._token[(_t._peekCount : stdgo.GoInt)];
    }
    @:keep
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        if (_t == null || (_t : Dynamic).__nil__) {
            return null;
        };
        return (stdgo.Go.setRef(({ name : _t.name?.__copy__(), parseName : _t.parseName?.__copy__(), root : _t.root.copyList(), _text : _t._text?.__copy__() } : stdgo._internal.text.template.parse.Parse_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    }
    @:keep
    static public function _newTemplate( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (17 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line, name : _name?.__copy__(), pipe : _pipe } : stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>);
    }
    @:keep
    static public function _newWith( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef((new stdgo._internal.text.template.parse.Parse_WithNode.WithNode(({ _tr : _t, nodeType : (19 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line, pipe : _pipe, list : _list, elseList : _elseList } : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode)) : stdgo._internal.text.template.parse.Parse_WithNode.WithNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>);
    }
    @:keep
    static public function _newRange( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef((new stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode(({ _tr : _t, nodeType : (15 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line, pipe : _pipe, list : _list, elseList : _elseList } : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode)) : stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>);
    }
    @:keep
    static public function _newContinue( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (22 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line } : stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>);
    }
    @:keep
    static public function _newBreak( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (21 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line } : stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>);
    }
    @:keep
    static public function _newIf( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef((new stdgo._internal.text.template.parse.Parse_IfNode.IfNode(({ _tr : _t, nodeType : (10 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line, pipe : _pipe, list : _list, elseList : _elseList } : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode)) : stdgo._internal.text.template.parse.Parse_IfNode.IfNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>);
    }
    @:keep
    static public function _newElse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (6 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line } : stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode>);
    }
    @:keep
    static public function _newEnd( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (7 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode>);
    }
    @:keep
    static public function _newString( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (16 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, quoted : _orig?.__copy__(), text : _text?.__copy__() } : stdgo._internal.text.template.parse.Parse_StringNode.StringNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>);
    }
    @:keep
    static public function _newNumber( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        var _n = (stdgo.Go.setRef(({ _tr : _t, nodeType : (13 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, text : _text?.__copy__() } : stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>);
        {
            final __value__ = _typ;
            if (__value__ == ((3 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_unquoteChar.unquoteChar((_text.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _text[(0 : stdgo.GoInt)]), _rune:stdgo.GoInt32 = __tmp__._0, __0:Bool = __tmp__._1, _tail:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                if (_tail != (("\'" : stdgo.GoString))) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed character constant: %s" : stdgo.GoString), stdgo.Go.toInterface(_text)) };
                };
                _n.int64 = (_rune : stdgo.GoInt64);
                _n.isInt = true;
                _n.uint64 = (_rune : stdgo.GoUInt64);
                _n.isUint = true;
                _n.float64 = (_rune : stdgo.GoFloat64);
                _n.isFloat = true;
                return { _0 : _n, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((5 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(_text?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_n.complex128))), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _n.isComplex = true;
                _n._simplifyComplex();
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
        };
        if ((((_text.length) > (0 : stdgo.GoInt) : Bool) && (_text[((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (105 : stdgo.GoUInt8)) : Bool)) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat((_text.__slice__(0, ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _n.isComplex = true;
                _n.complex128 = new stdgo.GoComplex128((0 : stdgo.GoFloat64), _f);
                _n._simplifyComplex();
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_text?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _u:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _n.isUint = true;
            _n.uint64 = _u;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_text?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _n.isInt = true;
            _n.int64 = _i;
            if (_i == ((0i64 : stdgo.GoInt64))) {
                _n.isUint = true;
                _n.uint64 = _u;
            };
        };
        if (_n.isInt) {
            _n.isFloat = true;
            _n.float64 = (_n.int64 : stdgo.GoFloat64);
        } else if (_n.isUint) {
            _n.isFloat = true;
            _n.float64 = (_n.uint64 : stdgo.GoFloat64);
        } else {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_text?.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                if (!stdgo._internal.strings.Strings_containsAny.containsAny(_text?.__copy__(), (".eEpP" : stdgo.GoString))) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer overflow: %q" : stdgo.GoString), stdgo.Go.toInterface(_text)) };
                };
                _n.isFloat = true;
                _n.float64 = _f;
                if ((!_n.isInt && (((_f : stdgo.GoInt64) : stdgo.GoFloat64) == _f) : Bool)) {
                    _n.isInt = true;
                    _n.int64 = (_f : stdgo.GoInt64);
                };
                if ((!_n.isUint && (((_f : stdgo.GoUInt64) : stdgo.GoFloat64) == _f) : Bool)) {
                    _n.isUint = true;
                    _n.uint64 = (_f : stdgo.GoUInt64);
                };
            };
        };
        if (((!_n.isInt && !_n.isUint : Bool) && !_n.isFloat : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("illegal number syntax: %q" : stdgo.GoString), stdgo.Go.toInterface(_text)) };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _newBool( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, __true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (2 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, __True : true } : stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>);
    }
    @:keep
    static public function _newChain( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _node:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (3 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, node : _node } : stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>);
    }
    @:keep
    static public function _newField( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (8 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, ident : stdgo._internal.strings.Strings_split.split((_ident.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) } : stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>);
    }
    @:keep
    static public function _newNil( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (12 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_NilNode.NilNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>);
    }
    @:keep
    static public function _newDot( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (5 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_DotNode.DotNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>);
    }
    @:keep
    static public function _newVariable( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (18 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, ident : stdgo._internal.strings.Strings_split.split(_ident?.__copy__(), ("." : stdgo.GoString)) } : stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>);
    }
    @:keep
    static public function _newCommand( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (4 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
    }
    @:keep
    static public function _newAction( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (1 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line, pipe : _pipe } : stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>);
    }
    @:keep
    static public function _newPipeline( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (14 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, line : _line, decl : _vars } : stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
    }
    @:keep
    static public function _newComment( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (20 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, text : _text?.__copy__() } : stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>);
    }
    @:keep
    static public function _newText( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (0 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos, text : (_text : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.text.template.parse.Parse_TextNode.TextNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>);
    }
    @:keep
    static public function _newList( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (11 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_ListNode.ListNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
    }
}