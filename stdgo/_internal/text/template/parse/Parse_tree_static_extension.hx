package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.Tree_asInterface) class Tree_static_extension {
    @:keep
    @:tdfield
    static public function _useVar( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _name:stdgo.GoString):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _v = @:check2r _t._newVariable(_pos, _name?.__copy__());
        for (__0 => _varName in (@:checkr _t ?? throw "null pointer dereference")._vars) {
            if (_varName == ((@:checkr _v ?? throw "null pointer dereference").ident[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                return stdgo.Go.asInterface(_v);
            };
        };
        @:check2r _t._errorf(("undefined variable %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _v ?? throw "null pointer dereference").ident[(0 : stdgo.GoInt)]));
        return (null : stdgo._internal.text.template.parse.Parse_node.Node);
    }
    @:keep
    @:tdfield
    static public function _popVars( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _n:stdgo.GoInt):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._vars = ((@:checkr _t ?? throw "null pointer dereference")._vars.__slice__(0, _n) : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function _hasFunction( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _name:stdgo.GoString):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        for (__0 => _funcMap in (@:checkr _t ?? throw "null pointer dereference")._funcs) {
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
    @:tdfield
    static public function _term( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        {
            var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
            {
                final __value__ = _token._typ;
                if (__value__ == ((10 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    var _checkFunc = (((@:checkr _t ?? throw "null pointer dereference").mode & (2u32 : stdgo._internal.text.template.parse.Parse_mode.Mode) : stdgo._internal.text.template.parse.Parse_mode.Mode) == ((0u32 : stdgo._internal.text.template.parse.Parse_mode.Mode)) : Bool);
                    if ((_checkFunc && !@:check2r _t._hasFunction(_token._val?.__copy__()) : Bool)) {
                        @:check2r _t._errorf(("function %q not defined" : stdgo.GoString), stdgo.Go.toInterface(_token._val));
                    };
                    return stdgo.Go.asInterface(@:check2r @:check2r stdgo._internal.text.template.parse.Parse_newidentifier.newIdentifier(_token._val?.__copy__()).setTree(_t).setPos(_token._pos));
                } else if (__value__ == ((26 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return stdgo.Go.asInterface(@:check2r _t._newDot(_token._pos));
                } else if (__value__ == ((31 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return stdgo.Go.asInterface(@:check2r _t._newNil(_token._pos));
                } else if (__value__ == ((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return @:check2r _t._useVar(_token._pos, _token._val?.__copy__());
                } else if (__value__ == ((9 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return stdgo.Go.asInterface(@:check2r _t._newField(_token._pos, _token._val?.__copy__()));
                } else if (__value__ == ((1 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return stdgo.Go.asInterface(@:check2r _t._newBool(_token._pos, _token._val == (("true" : stdgo.GoString))));
                } else if (__value__ == ((3 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((5 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((13 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    var __tmp__ = @:check2r _t._newNumber(_token._pos, _token._val?.__copy__(), _token._typ), _number:stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _t._error(_err);
                    };
                    return stdgo.Go.asInterface(_number);
                } else if (__value__ == ((12 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return stdgo.Go.asInterface(@:check2r _t._pipeline(("parenthesized pipeline" : stdgo.GoString), (17 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)));
                } else if (__value__ == ((19 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((15 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_token._val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _t._error(_err);
                    };
                    return stdgo.Go.asInterface(@:check2r _t._newString(_token._pos, _token._val?.__copy__(), _s?.__copy__()));
                };
            };
        };
        @:check2r _t._backup();
        return (null : stdgo._internal.text.template.parse.Parse_node.Node);
    }
    @:keep
    @:tdfield
    static public function _operand( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _node = (@:check2r _t._term() : stdgo._internal.text.template.parse.Parse_node.Node);
        if (_node == null) {
            return (null : stdgo._internal.text.template.parse.Parse_node.Node);
        };
        if (@:check2r _t._peek()._typ == ((9 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
            var _chain = @:check2r _t._newChain(@:check2r _t._peek()._pos, _node);
            while (@:check2r _t._peek()._typ == ((9 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                @:check2r _chain.add(@:check2r _t._next()._val?.__copy__());
            };
            {
                final __value__ = _node.type();
                if (__value__ == ((8 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                    _node = stdgo.Go.asInterface(@:check2r _t._newField((@:checkr _chain ?? throw "null pointer dereference").position(), (@:check2r _chain.string() : stdgo.GoString)?.__copy__()));
                } else if (__value__ == ((18 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                    _node = stdgo.Go.asInterface(@:check2r _t._newVariable((@:checkr _chain ?? throw "null pointer dereference").position(), (@:check2r _chain.string() : stdgo.GoString)?.__copy__()));
                } else if (__value__ == ((2 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((16 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((13 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((12 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((5 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                    @:check2r _t._errorf(("unexpected . after term %q" : stdgo.GoString), stdgo.Go.toInterface((_node.string() : stdgo.GoString)));
                } else {
                    _node = stdgo.Go.asInterface(_chain);
                };
            };
        };
        return _node;
    }
    @:keep
    @:tdfield
    static public function _command( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _cmd = @:check2r _t._newCommand(@:check2r _t._peekNonSpace()._pos);
        while (true) {
            @:check2r _t._peekNonSpace();
            var _operand = (@:check2r _t._operand() : stdgo._internal.text.template.parse.Parse_node.Node);
            if (_operand != null) {
                @:check2r _cmd._append(_operand);
            };
            {
                var _token = (@:check2r _t._next()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
                {
                    final __value__ = _token._typ;
                    if (__value__ == ((18 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                        continue;
                    } else if (__value__ == ((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((17 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                        @:check2r _t._backup();
                    } else if (__value__ == ((14 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {} else {
                        @:check2r _t._unexpected(_token?.__copy__(), ("operand" : stdgo.GoString));
                    };
                };
            };
            break;
        };
        if (((@:checkr _cmd ?? throw "null pointer dereference").args.length) == ((0 : stdgo.GoInt))) {
            @:check2r _t._errorf(("empty command" : stdgo.GoString));
        };
        return _cmd;
    }
    @:keep
    @:tdfield
    static public function _parseTemplateName( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _token:stdgo._internal.text.template.parse.Parse_t_item.T_item, _context:stdgo.GoString):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _name = ("" : stdgo.GoString);
        {
            final __value__ = _token._typ;
            if (__value__ == ((19 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((15 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_token._val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t._error(_err);
                };
                _name = _s?.__copy__();
            } else {
                @:check2r _t._unexpected(_token?.__copy__(), _context?.__copy__());
            };
        };
        return _name;
    }
    @:keep
    @:tdfield
    static public function _templateControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        {};
        var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _name = (@:check2r _t._parseTemplateName(_token?.__copy__(), ("template clause" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        if (@:check2r _t._nextNonSpace()._typ != ((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
            @:check2r _t._backup();
            _pipe = @:check2r _t._pipeline(("template clause" : stdgo.GoString), (16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
        };
        return stdgo.Go.asInterface(@:check2r _t._newTemplate(_token._pos, _token._line, _name?.__copy__(), _pipe));
    }
    @:keep
    @:tdfield
    static public function _blockControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        {};
        var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _name = (@:check2r _t._parseTemplateName(_token?.__copy__(), ("block clause" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _pipe = @:check2r _t._pipeline(("block clause" : stdgo.GoString), (16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
        var _block = stdgo._internal.text.template.parse.Parse_new_.new_(_name?.__copy__());
        (@:checkr _block ?? throw "null pointer dereference")._text = (@:checkr _t ?? throw "null pointer dereference")._text?.__copy__();
        (@:checkr _block ?? throw "null pointer dereference").mode = (@:checkr _t ?? throw "null pointer dereference").mode;
        (@:checkr _block ?? throw "null pointer dereference").parseName = (@:checkr _t ?? throw "null pointer dereference").parseName?.__copy__();
        @:check2r _block._startParse((@:checkr _t ?? throw "null pointer dereference")._funcs, (@:checkr _t ?? throw "null pointer dereference")._lex, (@:checkr _t ?? throw "null pointer dereference")._treeSet);
        var _end:stdgo._internal.text.template.parse.Parse_node.Node = (null : stdgo._internal.text.template.parse.Parse_node.Node);
        {
            var __tmp__ = @:check2r _block._itemList();
            (@:checkr _block ?? throw "null pointer dereference").root = @:tmpset0 __tmp__._0;
            _end = @:tmpset0 __tmp__._1;
        };
        if (_end.type() != ((7 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
            @:check2r _t._errorf(("unexpected %s in %s" : stdgo.GoString), stdgo.Go.toInterface(_end), stdgo.Go.toInterface(("block clause" : stdgo.GoString)));
        };
        @:check2r _block._add();
        @:check2r _block._stopParse();
        return stdgo.Go.asInterface(@:check2r _t._newTemplate(_token._pos, _token._line, _name?.__copy__(), _pipe));
    }
    @:keep
    @:tdfield
    static public function _elseControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _peek = (@:check2r _t._peekNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        if (_peek._typ == ((30 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
            return stdgo.Go.asInterface(@:check2r _t._newElse(_peek._pos, _peek._line));
        };
        var _token = (@:check2r _t._expect((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType), ("else" : stdgo.GoString))?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        return stdgo.Go.asInterface(@:check2r _t._newElse(_token._pos, _token._line));
    }
    @:keep
    @:tdfield
    static public function _endControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return stdgo.Go.asInterface(@:check2r _t._newEnd(@:check2r _t._expect((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType), ("end" : stdgo.GoString))._pos));
    }
    @:keep
    @:tdfield
    static public function _withControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return stdgo.Go.asInterface(({
            var __f__ = @:check2r _t._newWith;
            var __tmp__ = @:check2r _t._parseControl(false, ("with" : stdgo.GoString));
            __f__((__tmp__._0 : stdgo._internal.text.template.parse.Parse_pos.Pos), (__tmp__._1 : stdgo.GoInt), (__tmp__._2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), (__tmp__._3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>), (__tmp__._4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>));
        }));
    }
    @:keep
    @:tdfield
    static public function _rangeControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _r = ({
            var __f__ = @:check2r _t._newRange;
            var __tmp__ = @:check2r _t._parseControl(false, ("range" : stdgo.GoString));
            __f__((__tmp__._0 : stdgo._internal.text.template.parse.Parse_pos.Pos), (__tmp__._1 : stdgo.GoInt), (__tmp__._2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), (__tmp__._3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>), (__tmp__._4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>));
        });
        return stdgo.Go.asInterface(_r);
    }
    @:keep
    @:tdfield
    static public function _ifControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return stdgo.Go.asInterface(({
            var __f__ = @:check2r _t._newIf;
            var __tmp__ = @:check2r _t._parseControl(true, ("if" : stdgo.GoString));
            __f__((__tmp__._0 : stdgo._internal.text.template.parse.Parse_pos.Pos), (__tmp__._1 : stdgo.GoInt), (__tmp__._2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), (__tmp__._3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>), (__tmp__._4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>));
        }));
    }
    @:keep
    @:tdfield
    static public function _parseControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse_pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos), _line = (0 : stdgo.GoInt), _pipe = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>), _list = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>), _elseList = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
        try {
            {
                var _a0 = ((@:checkr _t ?? throw "null pointer dereference")._vars.length);
                final __f__ = @:check2r _t._popVars;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            _pipe = @:check2r _t._pipeline(_context?.__copy__(), (16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
            if (_context == (("range" : stdgo.GoString))) {
                (@:checkr _t ?? throw "null pointer dereference")._rangeDepth++;
            };
            var _next:stdgo._internal.text.template.parse.Parse_node.Node = (null : stdgo._internal.text.template.parse.Parse_node.Node);
            {
                var __tmp__ = @:check2r _t._itemList();
                _list = @:tmpset0 __tmp__._0;
                _next = @:tmpset0 __tmp__._1;
            };
            if (_context == (("range" : stdgo.GoString))) {
                (@:checkr _t ?? throw "null pointer dereference")._rangeDepth--;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _next.type();
                        if (__value__ == ((7 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                            break;
                        } else if (__value__ == ((6 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                            if (_allowElseIf) {
                                if (@:check2r _t._peek()._typ == ((30 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                                    @:check2r _t._next();
                                    _elseList = @:check2r _t._newList(_next.position());
                                    @:check2r _elseList._append(@:check2r _t._ifControl());
                                    break;
                                };
                            };
                            {
                                var __tmp__ = @:check2r _t._itemList();
                                _elseList = @:tmpset0 __tmp__._0;
                                _next = @:tmpset0 __tmp__._1;
                            };
                            if (_next.type() != ((7 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                                @:check2r _t._errorf(("expected end; found %s" : stdgo.GoString), stdgo.Go.toInterface(_next));
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.text.template.parse.Parse_pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; } = {
                    final __tmp__:{ var _0 : stdgo._internal.text.template.parse.Parse_pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; } = { _0 : (@:checkr _pipe ?? throw "null pointer dereference").position(), _1 : (@:checkr _pipe ?? throw "null pointer dereference").line, _2 : _pipe, _3 : _list, _4 : _elseList };
                    _pos = __tmp__._0;
                    _line = __tmp__._1;
                    _pipe = __tmp__._2;
                    _list = __tmp__._3;
                    _elseList = __tmp__._4;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _pos, _1 : _line, _2 : _pipe, _3 : _list, _4 : _elseList };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _pos, _1 : _line, _2 : _pipe, _3 : _list, _4 : _elseList };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _checkPipeline( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _context:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        if (((@:checkr _pipe ?? throw "null pointer dereference").cmds.length) == ((0 : stdgo.GoInt))) {
            @:check2r _t._errorf(("missing value for %s" : stdgo.GoString), stdgo.Go.toInterface(_context));
        };
        for (_i => _c in ((@:checkr _pipe ?? throw "null pointer dereference").cmds.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>)) {
            {
                final __value__ = (@:checkr _c ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)].type();
                if (__value__ == ((2 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((5 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((12 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((13 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((16 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                    @:check2r _t._errorf(("non executable command in pipeline stage %d" : stdgo.GoString), stdgo.Go.toInterface((_i + (2 : stdgo.GoInt) : stdgo.GoInt)));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _pipeline( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _pipe = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
        var _token_6:stdgo._internal.text.template.parse.Parse_t_item.T_item = ({} : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _next_5:stdgo._internal.text.template.parse.Parse_t_item.T_item = ({} : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _tokenAfterVariable_4:stdgo._internal.text.template.parse.Parse_t_item.T_item = ({} : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _v_3:stdgo._internal.text.template.parse.Parse_t_item.T_item = ({} : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _token_2:stdgo._internal.text.template.parse.Parse_t_item.T_item = ({} : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _token_2 = @:check2r _t._peekNonSpace()?.__copy__();
                    _pipe = @:check2r _t._newPipeline(_token_2._pos, _token_2._line, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>));
                    _gotoNext = 3618043i32;
                } else if (__value__ == (3618043i32)) {
                    {
                        _v_3 = @:check2r _t._peekNonSpace()?.__copy__();
                        if (_v_3._typ == ((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                            _gotoNext = 3618099i32;
                        } else {
                            _gotoNext = 3619316i32;
                        };
                    };
                } else if (__value__ == (3618099i32)) {
                    @:check2r _t._next();
                    _tokenAfterVariable_4 = @:check2r _t._peek()?.__copy__();
                    _next_5 = @:check2r _t._peekNonSpace()?.__copy__();
                    _gotoNext = 3618475i32;
                } else if (__value__ == (3618475i32)) {
                    if (_next_5._typ == ((6 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || _next_5._typ == ((7 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                        _gotoNext = 3618486i32;
                    } else if (((_next_5._typ == (2 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) && (_next_5._val == ("," : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3618700i32;
                    } else if (_tokenAfterVariable_4._typ == ((18 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                        _gotoNext = 3619203i32;
                    } else {
                        _gotoNext = 3619283i32;
                    };
                } else if (__value__ == (3618486i32)) {
                    (@:checkr _pipe ?? throw "null pointer dereference").isAssign = _next_5._typ == ((6 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    @:check2r _t._nextNonSpace();
                    (@:checkr _pipe ?? throw "null pointer dereference").decl = ((@:checkr _pipe ?? throw "null pointer dereference").decl.__append__(@:check2r _t._newVariable(_v_3._pos, _v_3._val?.__copy__())));
                    (@:checkr _t ?? throw "null pointer dereference")._vars = ((@:checkr _t ?? throw "null pointer dereference")._vars.__append__(_v_3._val?.__copy__()));
                    _gotoNext = 3619316i32;
                } else if (__value__ == (3618700i32)) {
                    @:check2r _t._nextNonSpace();
                    (@:checkr _pipe ?? throw "null pointer dereference").decl = ((@:checkr _pipe ?? throw "null pointer dereference").decl.__append__(@:check2r _t._newVariable(_v_3._pos, _v_3._val?.__copy__())));
                    (@:checkr _t ?? throw "null pointer dereference")._vars = ((@:checkr _t ?? throw "null pointer dereference")._vars.__append__(_v_3._val?.__copy__()));
                    if (((_context == ("range" : stdgo.GoString)) && (((@:checkr _pipe ?? throw "null pointer dereference").decl.length) < (2 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3618909i32;
                    } else {
                        _gotoNext = 3619152i32;
                    };
                } else if (__value__ == (3618909i32)) {
                    _gotoNext = 3618915i32;
                } else if (__value__ == (3618915i32)) {
                    {
                        final __value__ = @:check2r _t._peekNonSpace()._typ;
                        if (__value__ == ((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((17 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                            _gotoNext = 3618949i32;
                        } else {
                            _gotoNext = 3619076i32;
                        };
                    };
                } else if (__value__ == (3618949i32)) {
                    _gotoNext = 3618043i32;
                } else if (__value__ == (3619076i32)) {
                    @:check2r _t._errorf(("range can only initialize variables" : stdgo.GoString));
                    _gotoNext = 3619152i32;
                } else if (__value__ == (3619152i32)) {
                    @:check2r _t._errorf(("too many declarations in %s" : stdgo.GoString), stdgo.Go.toInterface(_context));
                    _gotoNext = 3619316i32;
                } else if (__value__ == (3619203i32)) {
                    @:check2r _t._backup3(_v_3?.__copy__(), _tokenAfterVariable_4?.__copy__());
                    _gotoNext = 3619316i32;
                } else if (__value__ == (3619283i32)) {
                    @:check2r _t._backup2(_v_3?.__copy__());
                    _gotoNext = 3619316i32;
                } else if (__value__ == (3619316i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3619316i32;
                    if (true) {
                        _gotoNext = 3619320i32;
                    } else {
                        _gotoNext = 3619728i32;
                    };
                } else if (__value__ == (3619320i32)) {
                    _gotoNext = 3619324i32;
                } else if (__value__ == (3619324i32)) {
                    {
                        _token_6 = @:check2r _t._nextNonSpace()?.__copy__();
                        {
                            final __value__ = _token_6._typ;
                            if (__value__ == (_end)) {
                                _gotoNext = 3619372i32;
                            } else if (__value__ == ((1 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((3 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((5 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((26 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((9 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((10 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((13 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((31 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((15 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((19 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) || __value__ == ((12 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                                _gotoNext = 3619474i32;
                            } else {
                                _gotoNext = 3619680i32;
                            };
                        };
                    };
                } else if (__value__ == (3619372i32)) {
                    @:check2r _t._checkPipeline(_pipe, _context?.__copy__());
                    return _pipe;
                    _gotoNext = 3619316i32;
                } else if (__value__ == (3619474i32)) {
                    @:check2r _t._backup();
                    @:check2r _pipe._append(@:check2r _t._command());
                    _gotoNext = 3619316i32;
                } else if (__value__ == (3619680i32)) {
                    @:check2r _t._unexpected(_token_6?.__copy__(), _context?.__copy__());
                    _gotoNext = 3619316i32;
                } else if (__value__ == (3619728i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _continueControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        {
            var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
            if (_token._typ != ((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                @:check2r _t._unexpected(_token?.__copy__(), ("{{continue}}" : stdgo.GoString));
            };
        };
        if ((@:checkr _t ?? throw "null pointer dereference")._rangeDepth == ((0 : stdgo.GoInt))) {
            @:check2r _t._errorf(("{{continue}} outside {{range}}" : stdgo.GoString));
        };
        return stdgo.Go.asInterface(@:check2r _t._newContinue(_pos, _line));
    }
    @:keep
    @:tdfield
    static public function _breakControl( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        {
            var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
            if (_token._typ != ((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                @:check2r _t._unexpected(_token?.__copy__(), ("{{break}}" : stdgo.GoString));
            };
        };
        if ((@:checkr _t ?? throw "null pointer dereference")._rangeDepth == ((0 : stdgo.GoInt))) {
            @:check2r _t._errorf(("{{break}} outside {{range}}" : stdgo.GoString));
        };
        return stdgo.Go.asInterface(@:check2r _t._newBreak(_pos, _line));
    }
    @:keep
    @:tdfield
    static public function _action( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _n = (null : stdgo._internal.text.template.parse.Parse_node.Node);
        {
            var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
            {
                final __value__ = _token._typ;
                if (__value__ == ((23 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._blockControl();
                } else if (__value__ == ((24 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._breakControl(_token._pos, _token._line);
                } else if (__value__ == ((25 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._continueControl(_token._pos, _token._line);
                } else if (__value__ == ((28 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._elseControl();
                } else if (__value__ == ((29 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._endControl();
                } else if (__value__ == ((30 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._ifControl();
                } else if (__value__ == ((32 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._rangeControl();
                } else if (__value__ == ((33 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._templateControl();
                } else if (__value__ == ((34 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    return _n = @:check2r _t._withControl();
                };
            };
        };
        @:check2r _t._backup();
        var _token = (@:check2r _t._peek()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        return _n = stdgo.Go.asInterface(@:check2r _t._newAction(_token._pos, _token._line, @:check2r _t._pipeline(("command" : stdgo.GoString), (16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))));
    }
    @:keep
    @:tdfield
    static public function _clearActionLine( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._actionLine = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _textOrAction( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
                {
                    final __value__ = _token._typ;
                    if (__value__ == ((20 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                        return stdgo.Go.asInterface(@:check2r _t._newText(_token._pos, _token._val?.__copy__()));
                    } else if (__value__ == ((11 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                        (@:checkr _t ?? throw "null pointer dereference")._actionLine = _token._line;
                        {
                            final __f__ = @:check2r _t._clearActionLine;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        {
                            final __ret__:stdgo._internal.text.template.parse.Parse_node.Node = @:check2r _t._action();
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((4 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                        {
                            final __ret__:stdgo._internal.text.template.parse.Parse_node.Node = stdgo.Go.asInterface(@:check2r _t._newComment(_token._pos, _token._val?.__copy__()));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else {
                        @:check2r _t._unexpected(_token?.__copy__(), ("input" : stdgo.GoString));
                    };
                };
            };
            {
                final __ret__:stdgo._internal.text.template.parse.Parse_node.Node = (null : stdgo._internal.text.template.parse.Parse_node.Node);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.text.template.parse.Parse_node.Node);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.text.template.parse.Parse_node.Node);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _itemList( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_node.Node; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _list = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>), _next = (null : stdgo._internal.text.template.parse.Parse_node.Node);
        _list = @:check2r _t._newList(@:check2r _t._peekNonSpace()._pos);
        while (@:check2r _t._peekNonSpace()._typ != ((8 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
            var _n = (@:check2r _t._textOrAction() : stdgo._internal.text.template.parse.Parse_node.Node);
            {
                final __value__ = _n.type();
                if (__value__ == ((7 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((6 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_node.Node; } = { _0 : _list, _1 : _n };
                        _list = __tmp__._0;
                        _next = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            @:check2r _list._append(_n);
        };
        @:check2r _t._errorf(("unexpected EOF" : stdgo.GoString));
        return { _0 : _list, _1 : _next };
    }
    @:keep
    @:tdfield
    static public function _parseDefinition( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        {};
        var _name = (@:check2r _t._expectOneOf((19 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType), (15 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType), ("define clause" : stdgo.GoString))?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_name._val?.__copy__());
            (@:checkr _t ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t._error(_err);
        };
        @:check2r _t._expect((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType), ("define clause" : stdgo.GoString));
        var _end:stdgo._internal.text.template.parse.Parse_node.Node = (null : stdgo._internal.text.template.parse.Parse_node.Node);
        {
            var __tmp__ = @:check2r _t._itemList();
            (@:checkr _t ?? throw "null pointer dereference").root = @:tmpset0 __tmp__._0;
            _end = @:tmpset0 __tmp__._1;
        };
        if (_end.type() != ((7 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
            @:check2r _t._errorf(("unexpected %s in %s" : stdgo.GoString), stdgo.Go.toInterface(_end), stdgo.Go.toInterface(("define clause" : stdgo.GoString)));
        };
        @:check2r _t._add();
        @:check2r _t._stopParse();
    }
    @:keep
    @:tdfield
    static public function _parse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference").root = @:check2r _t._newList(@:check2r _t._peek()._pos);
        while (@:check2r _t._peek()._typ != ((8 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
            if (@:check2r _t._peek()._typ == ((11 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                var _delim = (@:check2r _t._next()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
                if (@:check2r _t._nextNonSpace()._typ == ((27 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                    var _newT = stdgo._internal.text.template.parse.Parse_new_.new_(("definition" : stdgo.GoString));
                    (@:checkr _newT ?? throw "null pointer dereference")._text = (@:checkr _t ?? throw "null pointer dereference")._text?.__copy__();
                    (@:checkr _newT ?? throw "null pointer dereference").mode = (@:checkr _t ?? throw "null pointer dereference").mode;
                    (@:checkr _newT ?? throw "null pointer dereference").parseName = (@:checkr _t ?? throw "null pointer dereference").parseName?.__copy__();
                    @:check2r _newT._startParse((@:checkr _t ?? throw "null pointer dereference")._funcs, (@:checkr _t ?? throw "null pointer dereference")._lex, (@:checkr _t ?? throw "null pointer dereference")._treeSet);
                    @:check2r _newT._parseDefinition();
                    continue;
                };
                @:check2r _t._backup2(_delim?.__copy__());
            };
            {
                var _n = (@:check2r _t._textOrAction() : stdgo._internal.text.template.parse.Parse_node.Node);
                {
                    final __value__ = _n.type();
                    if (__value__ == ((7 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType)) || __value__ == ((6 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType))) {
                        @:check2r _t._errorf(("unexpected %s" : stdgo.GoString), stdgo.Go.toInterface(_n));
                    } else {
                        @:check2r (@:checkr _t ?? throw "null pointer dereference").root._append(_n);
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _add( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _tree = ((@:checkr _t ?? throw "null pointer dereference")._treeSet[(@:checkr _t ?? throw "null pointer dereference").name] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>));
        if (((_tree == null || (_tree : Dynamic).__nil__) || stdgo._internal.text.template.parse.Parse_isemptytree.isEmptyTree(stdgo.Go.asInterface((@:checkr _tree ?? throw "null pointer dereference").root)) : Bool)) {
            (@:checkr _t ?? throw "null pointer dereference")._treeSet[(@:checkr _t ?? throw "null pointer dereference").name] = _t;
            return;
        };
        if (!stdgo._internal.text.template.parse.Parse_isemptytree.isEmptyTree(stdgo.Go.asInterface((@:checkr _t ?? throw "null pointer dereference").root))) {
            @:check2r _t._errorf(("template: multiple definition of template %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").name));
        };
    }
    @:keep
    @:tdfield
    static public function parse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _text:stdgo.GoString, _leftDelim:stdgo.GoString, _rightDelim:stdgo.GoString, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>; var _1 : stdgo.Error; } {
        var _funcs = new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>(_funcs.length, 0, ..._funcs);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _tree = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                final __f__ = @:check2r _t._recover;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            (@:checkr _t ?? throw "null pointer dereference").parseName = (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
            var _lexer = stdgo._internal.text.template.parse.Parse__lex._lex((@:checkr _t ?? throw "null pointer dereference").name?.__copy__(), _text?.__copy__(), _leftDelim?.__copy__(), _rightDelim?.__copy__());
            @:check2r _t._startParse(_funcs, _lexer, _treeSet);
            (@:checkr _t ?? throw "null pointer dereference")._text = _text?.__copy__();
            @:check2r _t._parse();
            @:check2r _t._add();
            @:check2r _t._stopParse();
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>; var _1 : stdgo.Error; } = { _0 : _t, _1 : (null : stdgo.Error) };
                    _tree = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _tree, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _tree, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _stopParse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._lex = null;
        (@:checkr _t ?? throw "null pointer dereference")._vars = (null : stdgo.Slice<stdgo.GoString>);
        (@:checkr _t ?? throw "null pointer dereference")._funcs = (null : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        (@:checkr _t ?? throw "null pointer dereference")._treeSet = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>);
    }
    @:keep
    @:tdfield
    static public function _startParse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference").root = null;
        (@:checkr _t ?? throw "null pointer dereference")._lex = _lex;
        (@:checkr _t ?? throw "null pointer dereference")._vars = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("$" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        (@:checkr _t ?? throw "null pointer dereference")._funcs = _funcs;
        (@:checkr _t ?? throw "null pointer dereference")._treeSet = _treeSet;
        (@:checkr _lex ?? throw "null pointer dereference")._options = ({ _emitComment : ((@:checkr _t ?? throw "null pointer dereference").mode & (1u32 : stdgo._internal.text.template.parse.Parse_mode.Mode) : stdgo._internal.text.template.parse.Parse_mode.Mode) != ((0u32 : stdgo._internal.text.template.parse.Parse_mode.Mode)), _breakOK : !@:check2r _t._hasFunction(("break" : stdgo.GoString)), _continueOK : !@:check2r _t._hasFunction(("continue" : stdgo.GoString)) } : stdgo._internal.text.template.parse.Parse_t_lexoptions.T_lexOptions);
    }
    @:keep
    @:tdfield
    static public function _recover( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _errp:stdgo.Ref<stdgo.Error>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _e = ({
            final r = stdgo.Go.recover_exception;
            stdgo.Go.recover_exception = null;
            r;
        } : stdgo.AnyInterface);
        if (_e != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.runtime.Runtime_error.Error)) : stdgo._internal.runtime.Runtime_error.Error), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.runtime.Runtime_error.Error), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    throw stdgo.Go.toInterface(_e);
                };
            };
            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                @:check2r _t._stopParse();
            };
            {
                var __tmp__ = (stdgo.Go.typeAssert((_e : stdgo.Error)) : stdgo.Error);
                var x = (_errp : stdgo.Error);
                x.error = __tmp__.error;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _unexpected( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _token:stdgo._internal.text.template.parse.Parse_t_item.T_item, _context:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        if (_token._typ == ((0 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
            var _extra = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if ((((@:checkr _t ?? throw "null pointer dereference")._actionLine != (0 : stdgo.GoInt)) && ((@:checkr _t ?? throw "null pointer dereference")._actionLine != _token._line) : Bool)) {
                _extra = stdgo._internal.fmt.Fmt_sprintf.sprintf((" in action started at %s:%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").parseName), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._actionLine))?.__copy__();
                if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_token._val?.__copy__(), (" action" : stdgo.GoString))) {
                    _extra = (_extra.__slice__((((" in action" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
                };
            };
            @:check2r _t._errorf(("%s%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_token)), stdgo.Go.toInterface(_extra));
        };
        @:check2r _t._errorf(("unexpected %s in %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_token)), stdgo.Go.toInterface(_context));
    }
    @:keep
    @:tdfield
    static public function _expectOneOf( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _expected1:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        if (((_token._typ != _expected1) && (_token._typ != _expected2) : Bool)) {
            @:check2r _t._unexpected(_token?.__copy__(), _context?.__copy__());
        };
        return _token?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _expect( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _expected:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        if (_token._typ != (_expected)) {
            @:check2r _t._unexpected(_token?.__copy__(), _context?.__copy__());
        };
        return _token?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _error( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _err:stdgo.Error):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        @:check2r _t._errorf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_err));
    }
    @:keep
    @:tdfield
    static public function _errorf( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference").root = null;
        _format = stdgo._internal.fmt.Fmt_sprintf.sprintf(("template: %s:%d: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").parseName), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._token[(0 : stdgo.GoInt)]._line), stdgo.Go.toInterface(_format))?.__copy__();
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)));
    }
    @:keep
    @:tdfield
    static public function errorContext( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _n:stdgo._internal.text.template.parse.Parse_node.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _location = ("" : stdgo.GoString), _context = ("" : stdgo.GoString);
        var _pos = (_n.position() : stdgo.GoInt);
        var _tree = _n._tree();
        if ((_tree == null || (_tree : Dynamic).__nil__)) {
            _tree = _t;
        };
        var _text = (((@:checkr _tree ?? throw "null pointer dereference")._text.__slice__(0, _pos) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _byteNum = (stdgo._internal.strings.Strings_lastindex.lastIndex(_text?.__copy__(), ("\n" : stdgo.GoString)) : stdgo.GoInt);
        if (_byteNum == ((-1 : stdgo.GoInt))) {
            _byteNum = _pos;
        } else {
            _byteNum++;
            _byteNum = (_pos - _byteNum : stdgo.GoInt);
        };
        var _lineNum = ((1 : stdgo.GoInt) + stdgo._internal.strings.Strings_count.count(_text?.__copy__(), ("\n" : stdgo.GoString)) : stdgo.GoInt);
        _context = (_n.string() : stdgo.GoString)?.__copy__();
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d:%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tree ?? throw "null pointer dereference").parseName), stdgo.Go.toInterface(_lineNum), stdgo.Go.toInterface(_byteNum))?.__copy__(), _1 : _context?.__copy__() };
            _location = __tmp__._0;
            _context = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _peekNonSpace( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _token = (@:check2r _t._nextNonSpace()?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        @:check2r _t._backup();
        return _token?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _nextNonSpace( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _token = ({} : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        while (true) {
            _token = @:check2r _t._next()?.__copy__();
            if (_token._typ != ((18 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                break;
            };
        };
        return _token = _token?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _peek( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        if (((@:checkr _t ?? throw "null pointer dereference")._peekCount > (0 : stdgo.GoInt) : Bool)) {
            return (@:checkr _t ?? throw "null pointer dereference")._token[((@:checkr _t ?? throw "null pointer dereference")._peekCount - (1 : stdgo.GoInt) : stdgo.GoInt)];
        };
        (@:checkr _t ?? throw "null pointer dereference")._peekCount = (1 : stdgo.GoInt);
        (@:checkr _t ?? throw "null pointer dereference")._token[(0 : stdgo.GoInt)] = @:check2r (@:checkr _t ?? throw "null pointer dereference")._lex._nextItem()?.__copy__();
        return (@:checkr _t ?? throw "null pointer dereference")._token[(0 : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _backup3( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _t2:stdgo._internal.text.template.parse.Parse_t_item.T_item, _t1:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._token[(1 : stdgo.GoInt)] = _t1?.__copy__();
        (@:checkr _t ?? throw "null pointer dereference")._token[(2 : stdgo.GoInt)] = _t2?.__copy__();
        (@:checkr _t ?? throw "null pointer dereference")._peekCount = (3 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _backup2( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _t1:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._token[(1 : stdgo.GoInt)] = _t1?.__copy__();
        (@:checkr _t ?? throw "null pointer dereference")._peekCount = (2 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _backup( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._peekCount++;
    }
    @:keep
    @:tdfield
    static public function _next( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        if (((@:checkr _t ?? throw "null pointer dereference")._peekCount > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _t ?? throw "null pointer dereference")._peekCount--;
        } else {
            (@:checkr _t ?? throw "null pointer dereference")._token[(0 : stdgo.GoInt)] = @:check2r (@:checkr _t ?? throw "null pointer dereference")._lex._nextItem()?.__copy__();
        };
        return (@:checkr _t ?? throw "null pointer dereference")._token[((@:checkr _t ?? throw "null pointer dereference")._peekCount : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        if ((_t == null || (_t : Dynamic).__nil__)) {
            return null;
        };
        return (stdgo.Go.setRef(({ name : (@:checkr _t ?? throw "null pointer dereference").name?.__copy__(), parseName : (@:checkr _t ?? throw "null pointer dereference").parseName?.__copy__(), root : @:check2r (@:checkr _t ?? throw "null pointer dereference").root.copyList(), _text : (@:checkr _t ?? throw "null pointer dereference")._text?.__copy__() } : stdgo._internal.text.template.parse.Parse_tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
    }
    @:keep
    @:tdfield
    static public function _newTemplate( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (17 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line, name : _name?.__copy__(), pipe : _pipe } : stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>);
    }
    @:keep
    @:tdfield
    static public function _newWith( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef((new stdgo._internal.text.template.parse.Parse_withnode.WithNode(({ _tr : _t, nodeType : (19 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line, pipe : _pipe, list : _list, elseList : _elseList } : stdgo._internal.text.template.parse.Parse_branchnode.BranchNode)) : stdgo._internal.text.template.parse.Parse_withnode.WithNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>);
    }
    @:keep
    @:tdfield
    static public function _newRange( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef((new stdgo._internal.text.template.parse.Parse_rangenode.RangeNode(({ _tr : _t, nodeType : (15 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line, pipe : _pipe, list : _list, elseList : _elseList } : stdgo._internal.text.template.parse.Parse_branchnode.BranchNode)) : stdgo._internal.text.template.parse.Parse_rangenode.RangeNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>);
    }
    @:keep
    @:tdfield
    static public function _newContinue( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (22 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line } : stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>);
    }
    @:keep
    @:tdfield
    static public function _newBreak( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (21 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line } : stdgo._internal.text.template.parse.Parse_breaknode.BreakNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>);
    }
    @:keep
    @:tdfield
    static public function _newIf( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef((new stdgo._internal.text.template.parse.Parse_ifnode.IfNode(({ _tr : _t, nodeType : (10 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line, pipe : _pipe, list : _list, elseList : _elseList } : stdgo._internal.text.template.parse.Parse_branchnode.BranchNode)) : stdgo._internal.text.template.parse.Parse_ifnode.IfNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>);
    }
    @:keep
    @:tdfield
    static public function _newElse( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (6 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line } : stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode>);
    }
    @:keep
    @:tdfield
    static public function _newEnd( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (7 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode>);
    }
    @:keep
    @:tdfield
    static public function _newString( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (16 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, quoted : _orig?.__copy__(), text : _text?.__copy__() } : stdgo._internal.text.template.parse.Parse_stringnode.StringNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode>);
    }
    @:keep
    @:tdfield
    static public function _newNumber( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        var _n = (stdgo.Go.setRef(({ _tr : _t, nodeType : (13 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, text : _text?.__copy__() } : stdgo._internal.text.template.parse.Parse_numbernode.NumberNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>);
        {
            final __value__ = _typ;
            if (__value__ == ((3 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_unquotechar.unquoteChar((_text.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _text[(0 : stdgo.GoInt)]), _rune:stdgo.GoInt32 = __tmp__._0, __0:Bool = __tmp__._1, _tail:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                if (_tail != (("\'" : stdgo.GoString))) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed character constant: %s" : stdgo.GoString), stdgo.Go.toInterface(_text)) };
                };
                (@:checkr _n ?? throw "null pointer dereference").int64 = (_rune : stdgo.GoInt64);
                (@:checkr _n ?? throw "null pointer dereference").isInt = true;
                (@:checkr _n ?? throw "null pointer dereference").uint64 = (_rune : stdgo.GoUInt64);
                (@:checkr _n ?? throw "null pointer dereference").isUint = true;
                (@:checkr _n ?? throw "null pointer dereference").float64 = (_rune : stdgo.GoFloat64);
                (@:checkr _n ?? throw "null pointer dereference").isFloat = true;
                return { _0 : _n, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((5 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(_text?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference").complex128))), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                (@:checkr _n ?? throw "null pointer dereference").isComplex = true;
                @:check2r _n._simplifyComplex();
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
        };
        if ((((_text.length) > (0 : stdgo.GoInt) : Bool) && (_text[((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (105 : stdgo.GoUInt8)) : Bool)) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat((_text.__slice__(0, ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                (@:checkr _n ?? throw "null pointer dereference").isComplex = true;
                (@:checkr _n ?? throw "null pointer dereference").complex128 = new stdgo.GoComplex128((0 : stdgo.GoFloat64), _f);
                @:check2r _n._simplifyComplex();
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_text?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _u:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            (@:checkr _n ?? throw "null pointer dereference").isUint = true;
            (@:checkr _n ?? throw "null pointer dereference").uint64 = _u;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_text?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            (@:checkr _n ?? throw "null pointer dereference").isInt = true;
            (@:checkr _n ?? throw "null pointer dereference").int64 = _i;
            if (_i == ((0i64 : stdgo.GoInt64))) {
                (@:checkr _n ?? throw "null pointer dereference").isUint = true;
                (@:checkr _n ?? throw "null pointer dereference").uint64 = _u;
            };
        };
        if ((@:checkr _n ?? throw "null pointer dereference").isInt) {
            (@:checkr _n ?? throw "null pointer dereference").isFloat = true;
            (@:checkr _n ?? throw "null pointer dereference").float64 = ((@:checkr _n ?? throw "null pointer dereference").int64 : stdgo.GoFloat64);
        } else if ((@:checkr _n ?? throw "null pointer dereference").isUint) {
            (@:checkr _n ?? throw "null pointer dereference").isFloat = true;
            (@:checkr _n ?? throw "null pointer dereference").float64 = ((@:checkr _n ?? throw "null pointer dereference").uint64 : stdgo.GoFloat64);
        } else {
            var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_text?.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                if (!stdgo._internal.strings.Strings_containsany.containsAny(_text?.__copy__(), (".eEpP" : stdgo.GoString))) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer overflow: %q" : stdgo.GoString), stdgo.Go.toInterface(_text)) };
                };
                (@:checkr _n ?? throw "null pointer dereference").isFloat = true;
                (@:checkr _n ?? throw "null pointer dereference").float64 = _f;
                if ((!(@:checkr _n ?? throw "null pointer dereference").isInt && (((_f : stdgo.GoInt64) : stdgo.GoFloat64) == _f) : Bool)) {
                    (@:checkr _n ?? throw "null pointer dereference").isInt = true;
                    (@:checkr _n ?? throw "null pointer dereference").int64 = (_f : stdgo.GoInt64);
                };
                if ((!(@:checkr _n ?? throw "null pointer dereference").isUint && (((_f : stdgo.GoUInt64) : stdgo.GoFloat64) == _f) : Bool)) {
                    (@:checkr _n ?? throw "null pointer dereference").isUint = true;
                    (@:checkr _n ?? throw "null pointer dereference").uint64 = (_f : stdgo.GoUInt64);
                };
            };
        };
        if (((!(@:checkr _n ?? throw "null pointer dereference").isInt && !(@:checkr _n ?? throw "null pointer dereference").isUint : Bool) && !(@:checkr _n ?? throw "null pointer dereference").isFloat : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("illegal number syntax: %q" : stdgo.GoString), stdgo.Go.toInterface(_text)) };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _newBool( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, __true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (2 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, __True : true } : stdgo._internal.text.template.parse.Parse_boolnode.BoolNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode>);
    }
    @:keep
    @:tdfield
    static public function _newChain( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _node:stdgo._internal.text.template.parse.Parse_node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (3 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, node : _node } : stdgo._internal.text.template.parse.Parse_chainnode.ChainNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode>);
    }
    @:keep
    @:tdfield
    static public function _newField( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (8 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, ident : stdgo._internal.strings.Strings_split.split((_ident.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) } : stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode>);
    }
    @:keep
    @:tdfield
    static public function _newNil( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (12 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_nilnode.NilNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode>);
    }
    @:keep
    @:tdfield
    static public function _newDot( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (5 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_dotnode.DotNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode>);
    }
    @:keep
    @:tdfield
    static public function _newVariable( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _ident:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (18 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, ident : stdgo._internal.strings.Strings_split.split(_ident?.__copy__(), ("." : stdgo.GoString)) } : stdgo._internal.text.template.parse.Parse_variablenode.VariableNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>);
    }
    @:keep
    @:tdfield
    static public function _newCommand( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (4 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_commandnode.CommandNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>);
    }
    @:keep
    @:tdfield
    static public function _newAction( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (1 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line, pipe : _pipe } : stdgo._internal.text.template.parse.Parse_actionnode.ActionNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>);
    }
    @:keep
    @:tdfield
    static public function _newPipeline( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (14 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, line : _line, decl : _vars } : stdgo._internal.text.template.parse.Parse_pipenode.PipeNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>);
    }
    @:keep
    @:tdfield
    static public function _newComment( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (20 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, text : _text?.__copy__() } : stdgo._internal.text.template.parse.Parse_commentnode.CommentNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>);
    }
    @:keep
    @:tdfield
    static public function _newText( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (0 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos, text : (_text : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.text.template.parse.Parse_textnode.TextNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>);
    }
    @:keep
    @:tdfield
    static public function _newList( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, _pos:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = _t;
        return (stdgo.Go.setRef(({ _tr : _t, nodeType : (11 : stdgo._internal.text.template.parse.Parse_nodetype.NodeType), pos : _pos } : stdgo._internal.text.template.parse.Parse_listnode.ListNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>);
    }
}
