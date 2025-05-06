package stdgo._internal.go.printer;
@:keep @:allow(stdgo._internal.go.printer.Printer.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    @:tdfield
    static public function _free( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1355"
        if (((@:checkr _p ?? throw "null pointer dereference")._output.capacity > (65536 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1356"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1359"
        stdgo._internal.go.printer.Printer__printerpool._printerPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
    }
    @:keep
    @:tdfield
    static public function _printNode( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _node:stdgo.AnyInterface):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _ok_25:Bool = false;
        var _n_18:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        var _n_14:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
        var _n_12:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        var _n_3:stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node);
        var _ok_22:Bool = false;
        var _ok_13:Bool = false;
        var _i_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _com_8:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _doc_7:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _beg_5:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        var _iterator_5025688_23:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_21 = @:invalid_type null;
        var _end_6:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        var _ok_4:Bool = false;
        var _comments_0:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        var _s_24:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        var _n_19:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        var _j_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cnode_1:stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode> = (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>);
        var _n_20:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        var _n_16:stdgo._internal.go.ast.Ast_decl.Decl = (null : stdgo._internal.go.ast.Ast_decl.Decl);
        var _n_17:stdgo._internal.go.ast.Ast_spec.Spec = (null : stdgo._internal.go.ast.Ast_spec.Spec);
        var _n_15:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        var _ok_2:Bool = false;
        var _e_9:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1097"
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_node : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>)) : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>), _1 : false };
                            };
                            _cnode_1 = @:tmpset0 __tmp__._0;
                            _ok_2 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_2) {
                            _gotoNext = 5024067i64;
                        } else {
                            _gotoNext = 5024122i64;
                        };
                    };
                } else if (__value__ == (5024067i64)) {
                    _node = (@:checkr _cnode_1 ?? throw "null pointer dereference").node;
                    _comments_0 = (@:checkr _cnode_1 ?? throw "null pointer dereference").comments;
                    _gotoNext = 5024122i64;
                } else if (__value__ == (5024122i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1102"
                    if (_comments_0 != null) {
                        _gotoNext = 5024141i64;
                    } else {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_node : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : false };
                            };
                            _n_12 = @:tmpset0 __tmp__._0;
                            _ok_13 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_13) {
                            _gotoNext = 5024955i64;
                        } else {
                            _gotoNext = 5025071i64;
                        };
                    };
                } else if (__value__ == (5024141i64)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_node : stdgo._internal.go.ast.Ast_node.Node)) : stdgo._internal.go.ast.Ast_node.Node), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.go.ast.Ast_node.Node), _1 : false };
                        };
                        _n_3 = @:tmpset0 __tmp__._0;
                        _ok_4 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1105"
                    if (!_ok_4) {
                        _gotoNext = 5024241i64;
                    } else {
                        _gotoNext = 5024269i64;
                    };
                } else if (__value__ == (5024241i64)) {
                    _gotoNext = 5025912i64;
                } else if (__value__ == (5024269i64)) {
                    _beg_5 = _n_3.pos();
                    _end_6 = _n_3.end();
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1114"
                    {
                        _doc_7 = stdgo._internal.go.printer.Printer__getdoc._getDoc(_n_3);
                        if (({
                            final value = _doc_7;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _gotoNext = 5024523i64;
                        } else {
                            _gotoNext = 5024550i64;
                        };
                    };
                } else if (__value__ == (5024523i64)) {
                    _beg_5 = _doc_7.pos();
                    _gotoNext = 5024550i64;
                } else if (__value__ == (5024550i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1117"
                    {
                        _com_8 = stdgo._internal.go.printer.Printer__getlastcomment._getLastComment(_n_3);
                        if (({
                            final value = _com_8;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _gotoNext = 5024590i64;
                        } else {
                            _gotoNext = 5024723i64;
                        };
                    };
                } else if (__value__ == (5024590i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1118"
                    {
                        _e_9 = _com_8.end();
                        if ((_e_9 > _end_6 : Bool)) {
                            _gotoNext = 5024622i64;
                        } else {
                            _gotoNext = 5024723i64;
                        };
                    };
                } else if (__value__ == (5024622i64)) {
                    _end_6 = _e_9;
                    _gotoNext = 5024723i64;
                } else if (__value__ == (5024723i64)) {
                    _i_10 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 5024732i64;
                } else if (__value__ == (5024732i64)) {
                    //"file://#L0"
                    if (((_i_10 < (_comments_0.length) : Bool) && (_comments_0[(_i_10 : stdgo.GoInt)].end() < _beg_5 : Bool) : Bool)) {
                        _gotoNext = 5024781i64;
                    } else {
                        _gotoNext = 5024796i64;
                    };
                } else if (__value__ == (5024781i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1126"
                    _i_10++;
                    _gotoNext = 5024732i64;
                } else if (__value__ == (5024796i64)) {
                    _j_11 = _i_10;
                    0i64;
                    _gotoNext = 5024805i64;
                } else if (__value__ == (5024805i64)) {
                    //"file://#L0"
                    if (((_j_11 < (_comments_0.length) : Bool) && (_comments_0[(_j_11 : stdgo.GoInt)].pos() < _end_6 : Bool) : Bool)) {
                        _gotoNext = 5024854i64;
                    } else {
                        _gotoNext = 5024869i64;
                    };
                } else if (__value__ == (5024854i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1130"
                    _j_11++;
                    _gotoNext = 5024805i64;
                } else if (__value__ == (5024869i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1132"
                    if ((_i_10 < _j_11 : Bool)) {
                        _gotoNext = 5024878i64;
                    } else {
                        _gotoNext = 5025071i64;
                    };
                } else if (__value__ == (5024878i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._comments = (_comments_0.__slice__(_i_10, _j_11) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
                    _gotoNext = 5025071i64;
                } else if (__value__ == (5024955i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._comments = (@:checkr _n_12 ?? throw "null pointer dereference").comments;
                    _gotoNext = 5025071i64;
                } else if (__value__ == (5025071i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._useNodeComments = (@:checkr _p ?? throw "null pointer dereference")._comments == null;
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1144"
                    _p._nextComment();
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1146"
                    _p._print(stdgo.Go.toInterface((0 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)));
                    0i64;
                    _gotoNext = 5025196i64;
                } else if (__value__ == (5025196i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1149"
                    {
                        final __type__ = _node;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_expr.Expr))) {
                            var _n:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__.__underlying__().value;
                            _n_14 = _n;
                            _gotoNext = 5025223i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_stmt.Stmt))) {
                            var _n:stdgo._internal.go.ast.Ast_stmt.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : __type__.__underlying__().value;
                            _n_15 = _n;
                            _gotoNext = 5025251i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_decl.Decl))) {
                            var _n:stdgo._internal.go.ast.Ast_decl.Decl = __type__ == null ? (null : stdgo._internal.go.ast.Ast_decl.Decl) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_decl.Decl) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_decl.Decl) : __type__.__underlying__().value;
                            _n_16 = _n;
                            _gotoNext = 5025469i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_spec.Spec))) {
                            var _n:stdgo._internal.go.ast.Ast_spec.Spec = __type__ == null ? (null : stdgo._internal.go.ast.Ast_spec.Spec) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_spec.Spec) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_spec.Spec) : __type__.__underlying__().value;
                            _n_17 = _n;
                            _gotoNext = 5025497i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>))) {
                            var _n:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>) : __type__.__underlying__().value);
                            _n_18 = _n;
                            _gotoNext = 5025535i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>))) {
                            var _n:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) : __type__.__underlying__().value);
                            _n_19 = _n;
                            _gotoNext = 5025793i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>))) {
                            var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value);
                            _n_20 = _n;
                            _gotoNext = 5025827i64;
                        } else {
                            var _n:stdgo.AnyInterface = __type__?.__underlying__();
                            _n_21 = _n;
                            _gotoNext = 5025856i64;
                        };
                    };
                } else if (__value__ == (5025223i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1151"
                    _p._expr(_n_14);
                    _n_14;
                    _gotoNext = 5025889i64;
                } else if (__value__ == (5025251i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1155"
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n_15) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : false };
                            };
                            _ok_22 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_22) {
                            _gotoNext = 5025427i64;
                        } else {
                            _gotoNext = 5025451i64;
                        };
                    };
                } else if (__value__ == (5025427i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._indent = (1 : stdgo.GoInt);
                    _gotoNext = 5025451i64;
                } else if (__value__ == (5025451i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1158"
                    _p._stmt(_n_15, false);
                    _n_15;
                    _gotoNext = 5025889i64;
                } else if (__value__ == (5025469i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1160"
                    _p._decl(_n_16);
                    _n_16;
                    _gotoNext = 5025889i64;
                } else if (__value__ == (5025497i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1162"
                    _p._spec(_n_17, (1 : stdgo.GoInt), false);
                    _n_17;
                    _gotoNext = 5025889i64;
                } else if (__value__ == (5025535i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1166"
                    if ((0i64 : stdgo.GoInt) < (_n_18.length)) {
                        _gotoNext = 5025763i64;
                    } else {
                        _gotoNext = 5025768i64;
                    };
                } else if (__value__ == (5025680i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1166"
                    _iterator_5025688_23++;
                    _gotoNext = 5025764i64;
                } else if (__value__ == (5025696i64)) {
                    _s_24 = _n_18[(_iterator_5025688_23 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1167"
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s_24) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : false };
                            };
                            _ok_25 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_25) {
                            _gotoNext = 5025738i64;
                        } else {
                            _gotoNext = 5025680i64;
                        };
                    };
                } else if (__value__ == (5025738i64)) {
                    (@:checkr _p ?? throw "null pointer dereference")._indent = (1 : stdgo.GoInt);
                    _gotoNext = 5025680i64;
                } else if (__value__ == (5025763i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _n_18[(0i64 : stdgo.GoInt)];
                        _iterator_5025688_23 = @:binopAssign __tmp__0;
                        _s_24 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5025764i64;
                } else if (__value__ == (5025764i64)) {
                    //"file://#L0"
                    if (_iterator_5025688_23 < (_n_18.length)) {
                        _gotoNext = 5025696i64;
                    } else {
                        _gotoNext = 5025768i64;
                    };
                } else if (__value__ == (5025768i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1171"
                    _p._stmtList(_n_18, (0 : stdgo.GoInt), false);
                    _n_18;
                    _gotoNext = 5025889i64;
                } else if (__value__ == (5025793i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1173"
                    _p._declList(_n_19);
                    _n_19;
                    _gotoNext = 5025889i64;
                } else if (__value__ == (5025827i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1175"
                    _p._file(_n_20);
                    _n_20;
                    _gotoNext = 5025889i64;
                } else if (__value__ == (5025856i64)) {
                    _gotoNext = 5025912i64;
                } else if (__value__ == (5025889i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1180"
                    return (@:checkr _p ?? throw "null pointer dereference")._sourcePosErr;
                    _gotoNext = 5025912i64;
                } else if (__value__ == (5025912i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1183"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("go/printer: unsupported node type %T" : stdgo.GoString), _node);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _flush( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _next:stdgo._internal.go.token.Token_position.Position, _tok:stdgo._internal.go.token.Token_token.Token):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _wroteNewline = false, _droppedFF = false;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1041"
        if (_p._commentBefore(_next?.__copy__())) {
            {
                var __tmp__ = _p._intersperseComments(_next?.__copy__(), _tok);
                _wroteNewline = @:tmpset0 __tmp__._0;
                _droppedFF = @:tmpset0 __tmp__._1;
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1046"
            _p._writeWhitespace(((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1048"
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    @:tdfield
    static public function _print( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L905"
        for (__0 => _arg in _args) {
            var _data:stdgo.GoString = ("" : stdgo.GoString);
            var _isLit:Bool = false;
            var _impliedSemi:Bool = false;
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L912"
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._lastTok;
                if (__value__ == ((0 : stdgo._internal.go.token.Token_token.Token))) {} else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                    (@:checkr _p ?? throw "null pointer dereference")._prevOpen = (@:checkr _p ?? throw "null pointer dereference")._lastTok;
                } else {
                    (@:checkr _p ?? throw "null pointer dereference")._prevOpen = (0 : stdgo._internal.go.token.Token_token.Token);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L922"
            {
                final __type__ = _arg;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.printer.Printer_t_pmode.T_pmode))) {
                    var _x:stdgo._internal.go.printer.Printer_t_pmode.T_pmode = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : __type__.__underlying__().value);
                    (@:checkr _p ?? throw "null pointer dereference")._mode = ((@:checkr _p ?? throw "null pointer dereference")._mode ^ (_x) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L926"
                    continue;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                    var _x:stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace = __type__ == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L929"
                    if (_x == ((0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L933"
                        continue;
                    };
                    var _i = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L936"
                    if (_i == ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.capacity)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L940"
                        _p._writeWhitespace(_i);
                        _i = (0 : stdgo.GoInt);
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._wsbuf = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>);
                    (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = _x;
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L945"
                    if (((_x == (10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || (_x == (12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                        (@:checkr _p ?? throw "null pointer dereference")._impliedSemi = false;
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = (0 : stdgo._internal.go.token.Token_token.Token);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L953"
                    continue;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                    _data = (@:checkr _x ?? throw "null pointer dereference").name?.__copy__();
                    _impliedSemi = true;
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = (4 : stdgo._internal.go.token.Token_token.Token);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value);
                    _data = (@:checkr _x ?? throw "null pointer dereference").value?.__copy__();
                    _isLit = true;
                    _impliedSemi = true;
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = (@:checkr _x ?? throw "null pointer dereference").kind;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token_token.Token))) {
                    var _x:stdgo._internal.go.token.Token_token.Token = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token) : __type__.__underlying__().value);
                    var _s = ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L968"
                    if (stdgo._internal.go.printer.Printer__maycombine._mayCombine((@:checkr _p ?? throw "null pointer dereference")._lastTok, _s[(0 : stdgo.GoInt)])) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L975"
                        if (((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L976"
                            _p._internalError(stdgo.Go.toInterface(("whitespace buffer not empty" : stdgo.GoString)));
                        };
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>);
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(0 : stdgo.GoInt)] = (32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                    };
                    _data = _s?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L983"
                    {
                        final __value__ = _x;
                        if (__value__ == ((61 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((80 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((37 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((38 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((54 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((55 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((56 : stdgo._internal.go.token.Token_token.Token))) {
                            _impliedSemi = true;
                        };
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = _x;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _x:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                    _data = _x?.__copy__();
                    _isLit = true;
                    _impliedSemi = true;
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = (9 : stdgo._internal.go.token.Token_token.Token);
                } else {
                    var _x:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L998"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("print: unsupported argument %v (%T)\n" : stdgo.GoString), _arg, _arg);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L999"
                    throw stdgo.Go.toInterface(("go/printer type" : stdgo.GoString));
                };
            };
            var _next = ((@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var __tmp__ = _p._flush(_next?.__copy__(), (@:checkr _p ?? throw "null pointer dereference")._lastTok), _wroteNewline:Bool = __tmp__._0, _droppedFF:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1009"
            if (!(@:checkr _p ?? throw "null pointer dereference")._impliedSemi) {
                var _n = (stdgo._internal.go.printer.Printer__nlimit._nlimit((_next.line - (@:checkr _p ?? throw "null pointer dereference")._pos.line : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1012"
                if ((_wroteNewline && (_n == (2 : stdgo.GoInt)) : Bool)) {
                    _n = (1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1015"
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    var _ch = ((10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1017"
                    if (_droppedFF) {
                        _ch = (12 : stdgo.GoUInt8);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1020"
                    _p._writeByte(_ch, _n);
                    _impliedSemi = false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1026"
            if ((@:checkr _p ?? throw "null pointer dereference")._linePtr != null) {
                (@:checkr _p ?? throw "null pointer dereference")._linePtr.value = (@:checkr _p ?? throw "null pointer dereference")._out.line;
                (@:checkr _p ?? throw "null pointer dereference")._linePtr = (null : stdgo.Pointer<stdgo.GoInt>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1031"
            _p._writeString(_next?.__copy__(), _data?.__copy__(), _isLit);
            (@:checkr _p ?? throw "null pointer dereference")._impliedSemi = _impliedSemi;
        };
    }
    @:keep
    @:tdfield
    static public function _setPos( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L889"
        if (_pos.isValid()) {
            (@:checkr _p ?? throw "null pointer dereference")._pos = _p._posFor(_pos)?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function _writeWhitespace( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _n:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L819"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L820"
                {
                    var _ch = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _ch;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)))) {
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)))) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L824"
                                    (@:checkr _p ?? throw "null pointer dereference")._indent++;
                                    break;
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)))) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L826"
                                    (@:checkr _p ?? throw "null pointer dereference")._indent--;
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L827"
                                    if (((@:checkr _p ?? throw "null pointer dereference")._indent < (0 : stdgo.GoInt) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L828"
                                        _p._internalError(stdgo.Go.toInterface(("negative indentation:" : stdgo.GoString)), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._indent));
                                        (@:checkr _p ?? throw "null pointer dereference")._indent = (0 : stdgo.GoInt);
                                    };
                                    break;
                                    break;
                                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))))) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L838"
                                    if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < _n : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                                        {
                                            final __tmp__0 = (60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                                            final __tmp__1 = (12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                                            final __tmp__2 = (@:checkr _p ?? throw "null pointer dereference")._wsbuf;
                                            final __tmp__3 = (_i : stdgo.GoInt);
                                            final __tmp__4 = (@:checkr _p ?? throw "null pointer dereference")._wsbuf;
                                            final __tmp__5 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                                        };
                                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L845"
                                        _i--;
                                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L846"
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L848"
                                    @:fallthrough {
                                        __switchIndex__ = 4;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else {
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L850"
                                    _p._writeByte((_ch : stdgo.GoUInt8), (1 : stdgo.GoInt));
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) {
                            _i++;
                            continue;
                        };
                    };
                };
                _i++;
            };
        };
        var _l = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__copyTo__(((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__(_n) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>)) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._wsbuf = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__(0, _l) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>);
    }
    @:keep
    @:tdfield
    static public function _intersperseComments( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _next:stdgo._internal.go.token.Token_position.Position, _tok:stdgo._internal.go.token.Token_token.Token):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _wroteNewline = false, _droppedFF = false;
        var _last:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L739"
        while (_p._commentBefore(_next?.__copy__())) {
            var _list = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list;
            var _changed = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L742"
            if ((((@:checkr _p ?? throw "null pointer dereference")._lastTok != ((75 : stdgo._internal.go.token.Token_token.Token)) && _p._posFor((@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment.pos()).column == ((1 : stdgo.GoInt)) : Bool) && (stdgo.Go.toInterface(_p._posFor(((@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment.end() + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos))) == stdgo.Go.toInterface(_next)) : Bool)) {
                _list = stdgo._internal.go.printer.Printer__formatdoccomment._formatDocComment(_list);
                _changed = true;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L750"
                if (((((@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool) && (_list.length == (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L753"
                    _p._writeCommentPrefix(_p._posFor((@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment.pos())?.__copy__(), _next?.__copy__(), _last, _tok);
                    (@:checkr _p ?? throw "null pointer dereference")._pos = _next?.__copy__();
                    (@:checkr _p ?? throw "null pointer dereference")._last = _next?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L758"
                    _p._nextComment();
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L759"
                    return _p._writeCommentSuffix(false);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L762"
            for (__56 => _c in _list) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L763"
                _p._writeCommentPrefix(_p._posFor(_c.pos())?.__copy__(), _next?.__copy__(), _last, _tok);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L764"
                _p._writeComment(_c);
                _last = _c;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L769"
            if (((((@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool) && _changed : Bool)) {
                _last = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list[(((@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                (@:checkr _p ?? throw "null pointer dereference")._pos = _p._posFor(_last.end())?.__copy__();
                (@:checkr _p ?? throw "null pointer dereference")._last = (@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L774"
            _p._nextComment();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L777"
        if (({
            final value = _last;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _needsLinebreak = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L789"
            if ((((((((@:checkr _p ?? throw "null pointer dereference")._mode & (1 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) == ((0 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)) && (@:checkr _last ?? throw "null pointer dereference").text[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)) : Bool) && _p._lineFor(_last.pos()) == (_next.line) : Bool) && _tok != ((52 : stdgo._internal.go.token.Token_token.Token)) : Bool) && (((_tok != (54 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _p ?? throw "null pointer dereference")._prevOpen == (49 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool) && (((_tok != (55 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _p ?? throw "null pointer dereference")._prevOpen == (50 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L794"
                if (((_p._containsLinebreak() && ((@:checkr _p ?? throw "null pointer dereference")._mode & (2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) == ((0 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._level == (0 : stdgo.GoInt)) : Bool)) {
                    _needsLinebreak = true;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L797"
                    _p._writeByte((32 : stdgo.GoUInt8), (1 : stdgo.GoInt));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L802"
            if ((((@:checkr _last ?? throw "null pointer dereference").text[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) || _tok == ((1 : stdgo._internal.go.token.Token_token.Token)) : Bool) || (_tok == ((56 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._mode & (2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) == ((0 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)) : Bool) : Bool)) {
                _needsLinebreak = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L807"
            return _p._writeCommentSuffix(_needsLinebreak);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L812"
        _p._internalError(stdgo.Go.toInterface(("intersperseComments called without pending comments" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L813"
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    @:tdfield
    static public function _containsLinebreak( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L724"
        for (__8 => _ch in (@:checkr _p ?? throw "null pointer dereference")._wsbuf) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L725"
            if (((_ch == (10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || (_ch == (12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L726"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L729"
        return false;
    }
    @:keep
    @:tdfield
    static public function _writeCommentSuffix( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _needsLinebreak:Bool):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _wroteNewline = false, _droppedFF = false;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L690"
        for (_i => _ch in (@:checkr _p ?? throw "null pointer dereference")._wsbuf) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L691"
            {
                final __value__ = _ch;
                if (__value__ == ((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                    (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {} else if (__value__ == ((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L700"
                    if (_needsLinebreak) {
                        _needsLinebreak = false;
                        _wroteNewline = true;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L704"
                        if (_ch == ((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                            _droppedFF = true;
                        };
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L711"
        _p._writeWhitespace(((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L714"
        if (_needsLinebreak) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L715"
            _p._writeByte((10 : stdgo.GoUInt8), (1 : stdgo.GoInt));
            _wroteNewline = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L719"
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    @:tdfield
    static public function _writeComment( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _text = ((@:checkr _comment ?? throw "null pointer dereference").text?.__copy__() : stdgo.GoString);
            var _pos = (_p._posFor(_comment.pos())?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            {};
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L634"
            if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_text?.__copy__(), ("//line " : stdgo.GoString)) && ((!_pos.isValid() || (_pos.column == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                {
                    var _a0 = (@:checkr _p ?? throw "null pointer dereference")._indent;
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function(_indent:stdgo.GoInt):Void {
                            (@:checkr _p ?? throw "null pointer dereference")._indent = _indent;
                        };
                        a(_a0);
                    }) });
                };
                (@:checkr _p ?? throw "null pointer dereference")._indent = (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L642"
            if (_text[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L643"
                if (stdgo._internal.go.build.constraint.Constraint_isgobuild.isGoBuild(_text?.__copy__())) {
                    (@:checkr _p ?? throw "null pointer dereference")._goBuild = ((@:checkr _p ?? throw "null pointer dereference")._goBuild.__append__(((@:checkr _p ?? throw "null pointer dereference")._output.length)) : stdgo.Slice<stdgo.GoInt>);
                } else if (stdgo._internal.go.build.constraint.Constraint_isplusbuild.isPlusBuild(_text?.__copy__())) {
                    (@:checkr _p ?? throw "null pointer dereference")._plusBuild = ((@:checkr _p ?? throw "null pointer dereference")._plusBuild.__append__(((@:checkr _p ?? throw "null pointer dereference")._output.length)) : stdgo.Slice<stdgo.GoInt>);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L648"
                _p._writeString(_pos?.__copy__(), stdgo._internal.go.printer.Printer__trimright._trimRight(_text?.__copy__())?.__copy__(), true);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L649"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _lines = stdgo._internal.strings.Strings_split.split(_text?.__copy__(), ("\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L662"
            if (((_pos.isValid() && _pos.column == ((1 : stdgo.GoInt)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._indent > (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L663"
                for (_i => _line in (_lines.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    _lines[((1 : stdgo.GoInt) + _i : stdgo.GoInt)] = (("   " : stdgo.GoString) + _line?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L668"
            stdgo._internal.go.printer.Printer__stripcommonprefix._stripCommonPrefix(_lines);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L672"
            for (_i => _line in _lines) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L673"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L674"
                    _p._writeByte((12 : stdgo.GoUInt8), (1 : stdgo.GoInt));
                    _pos = (@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L677"
                if (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L678"
                    _p._writeString(_pos?.__copy__(), stdgo._internal.go.printer.Printer__trimright._trimRight(_line?.__copy__())?.__copy__(), true);
                };
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
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeCommentPrefix( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_position.Position, _next:stdgo._internal.go.token.Token_position.Position, _prev:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>, _tok:stdgo._internal.go.token.Token_token.Token):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L350"
        if (((@:checkr _p ?? throw "null pointer dereference")._output.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L352"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L355"
        if ((_pos.isValid() && (_pos.filename != (@:checkr _p ?? throw "null pointer dereference")._last.filename) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L357"
            _p._writeByte((12 : stdgo.GoUInt8), (2 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L358"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L361"
        if (((_pos.line == (@:checkr _p ?? throw "null pointer dereference")._last.line) && ((({
            final value = _prev;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _prev ?? throw "null pointer dereference").text[(1 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            var _hasSep = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L365"
            if (({
                final value = _prev;
                (value == null || (value : Dynamic).__nil__);
            })) {
                var _j = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L368"
                for (_i => _ch in (@:checkr _p ?? throw "null pointer dereference")._wsbuf) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L369"
                    {
                        final __value__ = _ch;
                        if (__value__ == ((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                            (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L373"
                            continue;
                        } else if (__value__ == ((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                            _hasSep = true;
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L378"
                            continue;
                        } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L381"
                            continue;
                        };
                    };
                    _j = _i;
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L384"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L386"
                _p._writeWhitespace(_j);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L389"
            if (!_hasSep) {
                var _sep = ((9 : stdgo.GoUInt8) : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L391"
                if (_pos.line == (_next.line)) {
                    _sep = (32 : stdgo.GoUInt8);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L397"
                _p._writeByte(_sep, (1 : stdgo.GoInt));
            };
        } else {
            var _droppedLinebreak = (false : Bool);
            var _j = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L405"
            for (_i => _ch in (@:checkr _p ?? throw "null pointer dereference")._wsbuf) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L406"
                {
                    final __value__ = _ch;
                    if (__value__ == ((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L410"
                        continue;
                    } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L413"
                        continue;
                    } else if (__value__ == ((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L419"
                        if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L420"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L428"
                        if (((_tok != (56 : stdgo._internal.go.token.Token_token.Token)) && (_pos.column == _next.column) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L429"
                            continue;
                        };
                    } else if (__value__ == ((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                        _droppedLinebreak = ({
                            final value = _prev;
                            (value == null || (value : Dynamic).__nil__);
                        });
                    };
                };
                _j = _i;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L436"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L438"
            _p._writeWhitespace(_j);
            var _n = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L442"
            if ((_pos.isValid() && (@:checkr _p ?? throw "null pointer dereference")._last.isValid() : Bool)) {
                _n = (_pos.line - (@:checkr _p ?? throw "null pointer dereference")._last.line : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L444"
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    _n = (0 : stdgo.GoInt);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L453"
            if ((((@:checkr _p ?? throw "null pointer dereference")._indent == (0 : stdgo.GoInt)) && _droppedLinebreak : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L454"
                _n++;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L459"
            if (((_n == ((0 : stdgo.GoInt)) && ({
                final value = _prev;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool) && ((@:checkr _prev ?? throw "null pointer dereference").text[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
                _n = (1 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L463"
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L467"
                _p._writeByte((12 : stdgo.GoUInt8), stdgo._internal.go.printer.Printer__nlimit._nlimit(_n));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeString( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_position.Position, _s:stdgo.GoString, _isLit:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L281"
        if ((@:checkr _p ?? throw "null pointer dereference")._out.column == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L282"
            if (((@:checkr _p ?? throw "null pointer dereference").config.mode & (8u32 : stdgo._internal.go.printer.Printer_mode.Mode) : stdgo._internal.go.printer.Printer_mode.Mode) != ((0u32 : stdgo._internal.go.printer.Printer_mode.Mode))) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L283"
                _p._writeLineDirective(_pos?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L285"
            _p._writeIndent();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L288"
        if (_pos.isValid()) {
            (@:checkr _p ?? throw "null pointer dereference")._pos = _pos?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L296"
        if (_isLit) {
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L304"
        if (false) {
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(stdgo._internal.fmt.Fmt_sprintf.sprintf(("/*%s*/" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos))) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nlines = (0 : stdgo.GoInt);
        var _li:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L312"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L314"
                {
                    var _ch = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L316"
                        _nlines++;
                        _li = _i;
                        (@:checkr _p ?? throw "null pointer dereference")._endAlignment = true;
                    };
                };
                _i++;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos.offset = ((@:checkr _p ?? throw "null pointer dereference")._pos.offset + ((_s.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L325"
        if ((_nlines > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._pos.line = ((@:checkr _p ?? throw "null pointer dereference")._pos.line + (_nlines) : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._out.line = ((@:checkr _p ?? throw "null pointer dereference")._out.line + (_nlines) : stdgo.GoInt);
            var _c = ((_s.length) - _li : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._pos.column = _c;
            (@:checkr _p ?? throw "null pointer dereference")._out.column = _c;
        } else {
            (@:checkr _p ?? throw "null pointer dereference")._pos.column = ((@:checkr _p ?? throw "null pointer dereference")._pos.column + ((_s.length)) : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._out.column = ((@:checkr _p ?? throw "null pointer dereference")._out.column + ((_s.length)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L336"
        if (_isLit) {
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _p ?? throw "null pointer dereference")._last = (@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _writeByte( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _ch:stdgo.GoUInt8, _n:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L234"
        if ((@:checkr _p ?? throw "null pointer dereference")._endAlignment) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L239"
            {
                final __value__ = _ch;
                if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((11 : stdgo.GoUInt8))) {
                    _ch = (32 : stdgo.GoUInt8);
                } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                    _ch = (12 : stdgo.GoUInt8);
                    (@:checkr _p ?? throw "null pointer dereference")._endAlignment = false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L248"
        if ((@:checkr _p ?? throw "null pointer dereference")._out.column == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L250"
            _p._writeIndent();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L253"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos.offset = ((@:checkr _p ?? throw "null pointer dereference")._pos.offset + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L259"
        if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._pos.line = ((@:checkr _p ?? throw "null pointer dereference")._pos.line + (_n) : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._out.line = ((@:checkr _p ?? throw "null pointer dereference")._out.line + (_n) : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._pos.column = (1 : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._out.column = (1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L264"
            return;
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos.column = ((@:checkr _p ?? throw "null pointer dereference")._pos.column + (_n) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._out.column = ((@:checkr _p ?? throw "null pointer dereference")._out.column + (_n) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeIndent( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _n = ((@:checkr _p ?? throw "null pointer dereference").config.indent + (@:checkr _p ?? throw "null pointer dereference")._indent : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L221"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((9 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos.offset = ((@:checkr _p ?? throw "null pointer dereference")._pos.offset + (_n) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._pos.column = ((@:checkr _p ?? throw "null pointer dereference")._pos.column + (_n) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._out.column = ((@:checkr _p ?? throw "null pointer dereference")._out.column + (_n) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeLineDirective( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_position.Position):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L199"
        if ((_pos.isValid() && ((((@:checkr _p ?? throw "null pointer dereference")._out.line != _pos.line) || ((@:checkr _p ?? throw "null pointer dereference")._out.filename != _pos.filename) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L200"
            if (stdgo._internal.strings.Strings_containsany.containsAny(_pos.filename?.__copy__(), ("\r\n" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L201"
                if ((@:checkr _p ?? throw "null pointer dereference")._sourcePosErr == null) {
                    (@:checkr _p ?? throw "null pointer dereference")._sourcePosErr = stdgo._internal.fmt.Fmt_errorf.errorf(("go/printer: source filename contains unexpected newline character: %q" : stdgo.GoString), stdgo.Go.toInterface(_pos.filename));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L204"
                return;
            };
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(stdgo._internal.fmt.Fmt_sprintf.sprintf(("//line %s:%d\n" : stdgo.GoString), stdgo.Go.toInterface(_pos.filename), stdgo.Go.toInterface(_pos.line)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _p ?? throw "null pointer dereference")._out.filename = _pos.filename?.__copy__();
            (@:checkr _p ?? throw "null pointer dereference")._out.line = _pos.line;
        };
    }
    @:keep
    @:tdfield
    static public function _lineFor( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L190"
        if (_pos != ((@:checkr _p ?? throw "null pointer dereference")._cachedPos)) {
            (@:checkr _p ?? throw "null pointer dereference")._cachedPos = _pos;
            (@:checkr _p ?? throw "null pointer dereference")._cachedLine = (@:checkr _p ?? throw "null pointer dereference")._fset.positionFor(_pos, false).line;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L194"
        return (@:checkr _p ?? throw "null pointer dereference")._cachedLine;
    }
    @:keep
    @:tdfield
    static public function _posFor( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L186"
        return (@:checkr _p ?? throw "null pointer dereference")._fset.positionFor(_pos, false)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _linesFrom( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _line:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L181"
        return ((@:checkr _p ?? throw "null pointer dereference")._out.line - _line : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _recordLine( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _linePtr:stdgo.Pointer<stdgo.GoInt>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._linePtr = _linePtr;
    }
    @:keep
    @:tdfield
    static public function _commentSizeBefore( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _next:stdgo._internal.go.token.Token_position.Position):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = (@:checkr _p ?? throw "null pointer dereference")._commentInfo;
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function(_info:stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo):Void {
                        (@:checkr _p ?? throw "null pointer dereference")._commentInfo = _info?.__copy__();
                    };
                    a(_a0?.__copy__());
                }) });
            };
            var _size = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L159"
            while (_p._commentBefore(_next?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L160"
                for (__24 => _c in (@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list) {
                    _size = (_size + (((@:checkr _c ?? throw "null pointer dereference").text.length)) : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L163"
                _p._nextComment();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L165"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _size;
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
                return (0 : stdgo.GoInt);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _commentBefore( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _next:stdgo._internal.go.token.Token_position.Position):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L147"
        return (((@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentOffset < _next.offset : Bool) && ((!(@:checkr _p ?? throw "null pointer dereference")._impliedSemi || !(@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentNewline : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _nextComment( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L127"
        while (((@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex < ((@:checkr _p ?? throw "null pointer dereference")._comments.length) : Bool)) {
            var _c = (@:checkr _p ?? throw "null pointer dereference")._comments[((@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L129"
            (@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex++;
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L130"
            {
                var _list = (@:checkr _c ?? throw "null pointer dereference").list;
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment = _c;
                    (@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentOffset = _p._posFor(_list[(0 : stdgo.GoInt)].pos()).offset;
                    (@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentNewline = _p._commentsHaveNewline(_list);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L134"
                    return;
                };
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentOffset = (1073741824 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _commentsHaveNewline( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _line = (_p._lineFor(_list[(0 : stdgo.GoInt)].pos()) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L113"
        for (_i => _c in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L114"
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_p._lineFor(_list[(_i : stdgo.GoInt)].pos()) != _line) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L116"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L118"
            {
                var _t = ((@:checkr _c ?? throw "null pointer dereference").text?.__copy__() : stdgo.GoString);
                if ((((_t.length) >= (2 : stdgo.GoInt) : Bool) && (((_t[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) || stdgo._internal.strings.Strings_contains.contains(_t?.__copy__(), ("\n" : stdgo.GoString)) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L119"
                    return true;
                };
            };
        };
        _line;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L123"
        return false;
    }
    @:keep
    @:tdfield
    static public function _internalError( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _msg:haxe.Rest<stdgo.AnyInterface>):Void {
        var _msg = new stdgo.Slice<stdgo.AnyInterface>(_msg.length, 0, ..._msg);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L100"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L101"
            stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface((((@:checkr _p ?? throw "null pointer dereference")._pos.string() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString)));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L102"
            stdgo._internal.fmt.Fmt_println.println(...(_msg : Array<stdgo.AnyInterface>));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L103"
            throw stdgo.Go.toInterface(("go/printer" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _file( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1995"
        _p._setComment((@:checkr _src ?? throw "null pointer dereference").doc);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1996"
        _p._setPos(_src.pos());
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1997"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((78 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1998"
        _p._expr(stdgo.Go.asInterface((@:checkr _src ?? throw "null pointer dereference").name));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1999"
        _p._declList((@:checkr _src ?? throw "null pointer dereference").decls);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L2000"
        _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
    }
    @:keep
    @:tdfield
    static public function _declList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _tok = (0 : stdgo._internal.go.token.Token_token.Token);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1969"
        for (__0 => _d in _list) {
            var _prev = (_tok : stdgo._internal.go.token.Token_token.Token);
            _tok = stdgo._internal.go.printer.Printer__decltoken._declToken(_d);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1979"
            if ((((@:checkr _p ?? throw "null pointer dereference")._output.length) > (0 : stdgo.GoInt) : Bool)) {
                var _min = (1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1983"
                if (((_prev != _tok) || ({
                    final value = stdgo._internal.go.printer.Printer__getdoc._getDoc(_d);
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool)) {
                    _min = (2 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1988"
                _p._linebreak(_p._lineFor(_d.pos()), _min, (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), ((_tok == (71 : stdgo._internal.go.token.Token_token.Token)) && (_p._numLines(_d) > (1 : stdgo.GoInt) : Bool) : Bool));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1990"
            _p._decl(_d);
        };
    }
    @:keep
    @:tdfield
    static public function _decl( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _decl:stdgo._internal.go.ast.Ast_decl.Decl):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1940"
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1942"
                _p._setPos(_d.pos());
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1943"
                _p._print(stdgo.Go.toInterface(("BadDecl" : stdgo.GoString)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1945"
                _p._genDecl(_d);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1947"
                _p._funcDecl(_d);
            } else {
                var _d:stdgo._internal.go.ast.Ast_decl.Decl = __type__ == null ? (null : stdgo._internal.go.ast.Ast_decl.Decl) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1949"
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _funcDecl( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1923"
        _p._setComment((@:checkr _d ?? throw "null pointer dereference").doc);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1924"
        _p._setPos(_d.pos());
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1925"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        var _startCol = ((@:checkr _p ?? throw "null pointer dereference")._out.column - ((("func " : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1930"
        if (({
            final value = (@:checkr _d ?? throw "null pointer dereference").recv;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1931"
            _p._parameters((@:checkr _d ?? throw "null pointer dereference").recv, (0 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1932"
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1934"
        _p._expr(stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference").name));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1935"
        _p._signature((@:checkr _d ?? throw "null pointer dereference").type);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1936"
        _p._funcBody(_p._distanceFrom(_d.pos(), _startCol), (11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (@:checkr _d ?? throw "null pointer dereference").body);
    }
    @:keep
    @:tdfield
    static public function _distanceFrom( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _startPos:stdgo._internal.go.token.Token_pos.Pos, _startOutCol:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1916"
        if (((_startPos.isValid() && (@:checkr _p ?? throw "null pointer dereference")._pos.isValid() : Bool) && (_p._posFor(_startPos).line == (@:checkr _p ?? throw "null pointer dereference")._pos.line) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1917"
            return ((@:checkr _p ?? throw "null pointer dereference")._out.column - _startOutCol : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1919"
        return (1073741824 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _funcBody( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _headerSize:stdgo.GoInt, _sep:stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace, _b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1875"
            if (({
                final value = _b;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1876"
                return;
            };
            {
                var _a0 = (@:checkr _p ?? throw "null pointer dereference")._level;
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function(_level:stdgo.GoInt):Void {
                        (@:checkr _p ?? throw "null pointer dereference")._level = _level;
                    };
                    a(_a0);
                }) });
            };
            (@:checkr _p ?? throw "null pointer dereference")._level = (0 : stdgo.GoInt);
            {};
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1886"
            if (((_headerSize + _p._bodySize(_b, (100 : stdgo.GoInt)) : stdgo.GoInt) <= (100 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1887"
                _p._print(stdgo.Go.toInterface(_sep));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1888"
                _p._setPos((@:checkr _b ?? throw "null pointer dereference").lbrace);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1889"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1890"
                if ((((@:checkr _b ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1891"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1892"
                    for (_i => _s in (@:checkr _b ?? throw "null pointer dereference").list) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1893"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1894"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1896"
                        _p._stmt(_s, _i == ((((@:checkr _b ?? throw "null pointer dereference").list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1898"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1900"
                _p._print(stdgo.Go.toInterface((2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1901"
                _p._setPos((@:checkr _b ?? throw "null pointer dereference").rbrace);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1902"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1903"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1906"
            if (_sep != ((0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1907"
                _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1909"
            _p._block(_b, (1 : stdgo.GoInt));
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
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _bodySize( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _maxSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _pos1 = (_b.pos() : stdgo._internal.go.token.Token_pos.Pos);
        var _pos2 = ((@:checkr _b ?? throw "null pointer dereference").rbrace : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1847"
        if (((_pos1.isValid() && _pos2.isValid() : Bool) && (_p._lineFor(_pos1) != _p._lineFor(_pos2)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1849"
            return (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1851"
        if ((((@:checkr _b ?? throw "null pointer dereference").list.length) > (5 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1853"
            return (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _bodySize = (_p._commentSizeBefore(_p._posFor(_pos2)?.__copy__()) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1857"
        for (_i => _s in (@:checkr _b ?? throw "null pointer dereference").list) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1858"
            if ((_bodySize > _maxSize : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1859"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1861"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _bodySize = (_bodySize + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
            _bodySize = (_bodySize + (_p._nodeSize(_s, _maxSize)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1866"
        return _bodySize;
    }
    @:keep
    @:tdfield
    static public function _numLines( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _n:stdgo._internal.go.ast.Ast_node.Node):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1835"
        {
            var _from = (_n.pos() : stdgo._internal.go.token.Token_pos.Pos);
            if (_from.isValid()) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1836"
                {
                    var _to = (_n.end() : stdgo._internal.go.token.Token_pos.Pos);
                    if (_to.isValid()) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1837"
                        return ((_p._lineFor(_to) - _p._lineFor(_from) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1840"
        return (1073741824 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _nodeSize( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _n:stdgo._internal.go.ast.Ast_node.Node, _maxSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _size = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1810"
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._nodeSizes != null && (@:checkr _p ?? throw "null pointer dereference")._nodeSizes.__exists__(_n) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._nodeSizes[_n], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _size:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1811"
                return _size;
            };
        };
        _size = (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._nodeSizes[_n] = _size;
        var _cfg = ({ mode : (1u32 : stdgo._internal.go.printer.Printer_mode.Mode) } : stdgo._internal.go.printer.Printer_config.Config);
        var _counter:stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter = ({} : stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1822"
        {
            var _err = (_cfg._fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter>)), (@:checkr _p ?? throw "null pointer dereference")._fset, stdgo.Go.toInterface(_n), (@:checkr _p ?? throw "null pointer dereference")._nodeSizes) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1823"
                return _size;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1825"
        if (((_counter._size <= _maxSize : Bool) && !_counter._hasNewline : Bool)) {
            _size = _counter._size;
            (@:checkr _p ?? throw "null pointer dereference")._nodeSizes[_n] = _size;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1830"
        return _size;
    }
    @:keep
    @:tdfield
    static public function _genDecl( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1738"
        _p._setComment((@:checkr _d ?? throw "null pointer dereference").doc);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1739"
        _p._setPos(_d.pos());
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1740"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference").tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1742"
        if (((@:checkr _d ?? throw "null pointer dereference").lparen.isValid() || (((@:checkr _d ?? throw "null pointer dereference").specs.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1744"
            _p._setPos((@:checkr _d ?? throw "null pointer dereference").lparen);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1745"
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1746"
            {
                var _n = ((@:checkr _d ?? throw "null pointer dereference").specs.length : stdgo.GoInt);
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1747"
                    _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1748"
                    if (((_n > (1 : stdgo.GoInt) : Bool) && ((((@:checkr _d ?? throw "null pointer dereference").tok == (64 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _d ?? throw "null pointer dereference").tok == (85 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool)) {
                        var _keepType = stdgo._internal.go.printer.Printer__keeptypecolumn._keepTypeColumn((@:checkr _d ?? throw "null pointer dereference").specs);
                        var _line:stdgo.GoInt = (0 : stdgo.GoInt), _line__pointer__ = stdgo.Go.pointer(_line);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1753"
                        for (_i => _s in (@:checkr _d ?? throw "null pointer dereference").specs) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1754"
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1755"
                                _p._linebreak(_p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1757"
                            _p._recordLine(_line__pointer__);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1758"
                            _p._valueSpec((stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _keepType[(_i : stdgo.GoInt)]);
                        };
                    } else {
                        var _line:stdgo.GoInt = (0 : stdgo.GoInt), _line__pointer__ = stdgo.Go.pointer(_line);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1762"
                        for (_i => _s in (@:checkr _d ?? throw "null pointer dereference").specs) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1763"
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1764"
                                _p._linebreak(_p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1766"
                            _p._recordLine(_line__pointer__);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1767"
                            _p._spec(_s, _n, false);
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1770"
                    _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1772"
            _p._setPos((@:checkr _d ?? throw "null pointer dereference").rparen);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1773"
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
        } else if ((((@:checkr _d ?? throw "null pointer dereference").specs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1777"
            _p._spec((@:checkr _d ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)], (1 : stdgo.GoInt), true);
        };
    }
    @:keep
    @:tdfield
    static public function _spec( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _spec:stdgo._internal.go.ast.Ast_spec.Spec, _n:stdgo.GoInt, _doIndent:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1688"
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1690"
                _p._setComment((@:checkr _s ?? throw "null pointer dereference").doc);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1691"
                if (({
                    final value = (@:checkr _s ?? throw "null pointer dereference").name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1692"
                    _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").name));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1693"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1695"
                _p._expr(stdgo.Go.asInterface(stdgo._internal.go.printer.Printer__sanitizeimportpath._sanitizeImportPath((@:checkr _s ?? throw "null pointer dereference").path)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1696"
                _p._setComment((@:checkr _s ?? throw "null pointer dereference").comment);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1697"
                _p._setPos((@:checkr _s ?? throw "null pointer dereference").endPos);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1700"
                if (_n != ((1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1701"
                    _p._internalError(stdgo.Go.toInterface(("expected n = 1; got" : stdgo.GoString)), stdgo.Go.toInterface(_n));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1703"
                _p._setComment((@:checkr _s ?? throw "null pointer dereference").doc);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1704"
                _p._identList((@:checkr _s ?? throw "null pointer dereference").names, _doIndent);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1705"
                if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1706"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1707"
                    _p._expr((@:checkr _s ?? throw "null pointer dereference").type);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1709"
                if ((@:checkr _s ?? throw "null pointer dereference").values != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1710"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1711"
                    _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _s ?? throw "null pointer dereference").values, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1713"
                _p._setComment((@:checkr _s ?? throw "null pointer dereference").comment);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1716"
                _p._setComment((@:checkr _s ?? throw "null pointer dereference").doc);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1717"
                _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").name));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1718"
                if (({
                    final value = (@:checkr _s ?? throw "null pointer dereference").typeParams;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1719"
                    _p._parameters((@:checkr _s ?? throw "null pointer dereference").typeParams, (2 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1721"
                if (_n == ((1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1722"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1724"
                    _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1726"
                if ((@:checkr _s ?? throw "null pointer dereference").assign.isValid()) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1727"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1729"
                _p._expr((@:checkr _s ?? throw "null pointer dereference").type);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1730"
                _p._setComment((@:checkr _s ?? throw "null pointer dereference").comment);
            } else {
                var _s:stdgo._internal.go.ast.Ast_spec.Spec = __type__ == null ? (null : stdgo._internal.go.ast.Ast_spec.Spec) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1733"
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _valueSpec( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>, _keepType:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1618"
        _p._setComment((@:checkr _s ?? throw "null pointer dereference").doc);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1619"
        _p._identList((@:checkr _s ?? throw "null pointer dereference").names, false);
        var _extraTabs = (3 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1621"
        if ((((@:checkr _s ?? throw "null pointer dereference").type != null) || _keepType : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1622"
            _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1623"
            _extraTabs--;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1625"
        if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1626"
            _p._expr((@:checkr _s ?? throw "null pointer dereference").type);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1628"
        if ((@:checkr _s ?? throw "null pointer dereference").values != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1629"
            _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1630"
            _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _s ?? throw "null pointer dereference").values, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1631"
            _extraTabs--;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1633"
        if (({
            final value = (@:checkr _s ?? throw "null pointer dereference").comment;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1634"
            while ((_extraTabs > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1635"
                _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                _extraTabs--;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1637"
            _p._setComment((@:checkr _s ?? throw "null pointer dereference").comment);
        };
    }
    @:keep
    @:tdfield
    static public function _stmt( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _stmt:stdgo._internal.go.ast.Ast_stmt.Stmt, _nextIsRBrace:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1350"
        _p._setPos(_stmt.pos());
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1352"
        {
            final __type__ = _stmt;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1354"
                        _p._print(stdgo.Go.toInterface(("BadStmt" : stdgo.GoString)));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1357"
                        _p._decl((@:checkr _s ?? throw "null pointer dereference").decl);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__().value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1366"
                        _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1367"
                        _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").label));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1368"
                        _p._setPos((@:checkr _s ?? throw "null pointer dereference").colon);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1369"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1370"
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").stmt) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : false };
                            }, _e = __tmp__._0, _isEmpty = __tmp__._1;
                            if (_isEmpty) {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1371"
                                if (!_nextIsRBrace) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1372"
                                    _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1373"
                                    _p._setPos(_e.pos());
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1374"
                                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))));
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1375"
                                    break;
                                };
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1378"
                                _p._linebreak(_p._lineFor((@:checkr _s ?? throw "null pointer dereference").stmt.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), true);
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1380"
                        _p._stmt((@:checkr _s ?? throw "null pointer dereference").stmt, _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__().value);
                        {};
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1384"
                        _p._expr0((@:checkr _s ?? throw "null pointer dereference").x, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__().value);
                        {};
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1388"
                        _p._expr0((@:checkr _s ?? throw "null pointer dereference").chan, (1 : stdgo.GoInt));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1389"
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1390"
                        _p._setPos((@:checkr _s ?? throw "null pointer dereference").arrow);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1391"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1392"
                        _p._expr0((@:checkr _s ?? throw "null pointer dereference").value, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__().value);
                        {};
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1396"
                        _p._expr0((@:checkr _s ?? throw "null pointer dereference").x, (2 : stdgo.GoInt));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1397"
                        _p._setPos((@:checkr _s ?? throw "null pointer dereference").tokPos);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1398"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").tok)));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value);
                        var _depth = (1 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1402"
                        if (((((@:checkr _s ?? throw "null pointer dereference").lhs.length) > (1 : stdgo.GoInt) : Bool) && (((@:checkr _s ?? throw "null pointer dereference").rhs.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1403"
                            _depth++;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1405"
                        _p._exprList(_s.pos(), (@:checkr _s ?? throw "null pointer dereference").lhs, _depth, (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _s ?? throw "null pointer dereference").tokPos, false);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1406"
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1407"
                        _p._setPos((@:checkr _s ?? throw "null pointer dereference").tokPos);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1408"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1409"
                        _p._exprList((@:checkr _s ?? throw "null pointer dereference").tokPos, (@:checkr _s ?? throw "null pointer dereference").rhs, _depth, (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1412"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((72 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1413"
                        _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").call));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1416"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((67 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1417"
                        _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").call));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1420"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((80 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1421"
                        if ((@:checkr _s ?? throw "null pointer dereference").results != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1422"
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1428"
                            if (_p._indentList((@:checkr _s ?? throw "null pointer dereference").results)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1429"
                                _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1432"
                                _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _s ?? throw "null pointer dereference").results, (1 : stdgo.GoInt), (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1433"
                                _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1435"
                                _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _s ?? throw "null pointer dereference").results, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1440"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").tok)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1441"
                        if (({
                            final value = (@:checkr _s ?? throw "null pointer dereference").label;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1442"
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1443"
                            _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").label));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1447"
                        _p._block(_s, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1450"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((74 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1451"
                        _p._controlClause(false, (@:checkr _s ?? throw "null pointer dereference").init, (@:checkr _s ?? throw "null pointer dereference").cond, (null : stdgo._internal.go.ast.Ast_stmt.Stmt));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1452"
                        _p._block((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1453"
                        if ((@:checkr _s ?? throw "null pointer dereference").else_ != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1454"
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((68 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1455"
                            {
                                final __type__ = (@:checkr _s ?? throw "null pointer dereference").else_;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1457"
                                    _p._stmt((@:checkr _s ?? throw "null pointer dereference").else_, _nextIsRBrace);
                                } else {
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1462"
                                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1463"
                                    _p._stmt((@:checkr _s ?? throw "null pointer dereference").else_, true);
                                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1464"
                                    _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
                                };
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1469"
                        if ((@:checkr _s ?? throw "null pointer dereference").list != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1470"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((62 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1471"
                            _p._exprList(_s.pos(), (@:checkr _s ?? throw "null pointer dereference").list, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _s ?? throw "null pointer dereference").colon, false);
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1473"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((66 : stdgo._internal.go.token.Token_token.Token))));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1475"
                        _p._setPos((@:checkr _s ?? throw "null pointer dereference").colon);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1476"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1477"
                        _p._stmtList((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt), _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1480"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((83 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1481"
                        _p._controlClause(false, (@:checkr _s ?? throw "null pointer dereference").init, (@:checkr _s ?? throw "null pointer dereference").tag, (null : stdgo._internal.go.ast.Ast_stmt.Stmt));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1482"
                        _p._block((@:checkr _s ?? throw "null pointer dereference").body, (0 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1485"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((83 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1486"
                        if ((@:checkr _s ?? throw "null pointer dereference").init != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1487"
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1488"
                            _p._stmt((@:checkr _s ?? throw "null pointer dereference").init, false);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1489"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1491"
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1492"
                        _p._stmt((@:checkr _s ?? throw "null pointer dereference").assign, false);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1493"
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1494"
                        _p._block((@:checkr _s ?? throw "null pointer dereference").body, (0 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1497"
                        if ((@:checkr _s ?? throw "null pointer dereference").comm != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1498"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((62 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1499"
                            _p._stmt((@:checkr _s ?? throw "null pointer dereference").comm, false);
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1501"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((66 : stdgo._internal.go.token.Token_token.Token))));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1503"
                        _p._setPos((@:checkr _s ?? throw "null pointer dereference").colon);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1504"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1505"
                        _p._stmtList((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt), _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1508"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((81 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        var _body = (@:checkr _s ?? throw "null pointer dereference").body;
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1510"
                        if ((((@:checkr _body ?? throw "null pointer dereference").list.length == (0 : stdgo.GoInt)) && !_p._commentBefore(_p._posFor((@:checkr _body ?? throw "null pointer dereference").rbrace)?.__copy__()) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1512"
                            _p._setPos((@:checkr _body ?? throw "null pointer dereference").lbrace);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1513"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1514"
                            _p._setPos((@:checkr _body ?? throw "null pointer dereference").rbrace);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1515"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1517"
                            _p._block(_body, (0 : stdgo.GoInt));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1521"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((70 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1522"
                        _p._controlClause(true, (@:checkr _s ?? throw "null pointer dereference").init, (@:checkr _s ?? throw "null pointer dereference").cond, (@:checkr _s ?? throw "null pointer dereference").post);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1523"
                        _p._block((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1526"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((70 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1527"
                        if ((@:checkr _s ?? throw "null pointer dereference").key != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1528"
                            _p._expr((@:checkr _s ?? throw "null pointer dereference").key);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1529"
                            if ((@:checkr _s ?? throw "null pointer dereference").value != null) {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1532"
                                _p._setPos((@:checkr _s ?? throw "null pointer dereference").value.pos());
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1533"
                                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1534"
                                _p._expr((@:checkr _s ?? throw "null pointer dereference").value);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1536"
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1537"
                            _p._setPos((@:checkr _s ?? throw "null pointer dereference").tokPos);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1538"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1540"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((79 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1541"
                        _p._expr(stdgo._internal.go.printer.Printer__stripparens._stripParens((@:checkr _s ?? throw "null pointer dereference").x));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1542"
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1543"
                        _p._block((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt));
                    } else {
                        var _s:stdgo._internal.go.ast.Ast_stmt.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : cast __type__;
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1546"
                        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    };
                    break;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _indentList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1322"
        if (((_list.length) >= (2 : stdgo.GoInt) : Bool)) {
            var _b = _p._lineFor(_list[(0 : stdgo.GoInt)].pos());
            var _e = _p._lineFor(_list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end());
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1325"
            if ((((0 : stdgo.GoInt) < _b : Bool) && (_b < _e : Bool) : Bool)) {
                var _n = (0 : stdgo.GoInt);
                var _line = (_b : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1329"
                for (__16 => _x in _list) {
                    var _xb = (_p._lineFor(_x.pos()) : stdgo.GoInt);
                    var _xe = (_p._lineFor(_x.end()) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1332"
                    if ((_line < _xb : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1335"
                        return true;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1337"
                    if ((_xb < _xe : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1339"
                        _n++;
                    };
                    _line = _xe;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1343"
                return (_n > (1 : stdgo.GoInt) : Bool);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1346"
        return false;
    }
    @:keep
    @:tdfield
    static public function _controlClause( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _isForStmt:Bool, _init:stdgo._internal.go.ast.Ast_stmt.Stmt, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _post:stdgo._internal.go.ast.Ast_stmt.Stmt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1282"
        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        var _needsBlank = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1284"
        if (((_init == null) && (_post == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1286"
            if (_expr != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1287"
                _p._expr(stdgo._internal.go.printer.Printer__stripparens._stripParens(_expr));
                _needsBlank = true;
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1293"
            if (_init != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1294"
                _p._stmt(_init, false);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1296"
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1297"
            if (_expr != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1298"
                _p._expr(stdgo._internal.go.printer.Printer__stripparens._stripParens(_expr));
                _needsBlank = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1301"
            if (_isForStmt) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1302"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                _needsBlank = false;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1304"
                if (_post != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1305"
                    _p._stmt(_post, false);
                    _needsBlank = true;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1310"
        if (_needsBlank) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1311"
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
    }
    @:keep
    @:tdfield
    static public function _block( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _nindent:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1230"
        _p._setPos((@:checkr _b ?? throw "null pointer dereference").lbrace);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1231"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1232"
        _p._stmtList((@:checkr _b ?? throw "null pointer dereference").list, _nindent, true);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1233"
        _p._linebreak(_p._lineFor((@:checkr _b ?? throw "null pointer dereference").rbrace), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), true);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1234"
        _p._setPos((@:checkr _b ?? throw "null pointer dereference").rbrace);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1235"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
    }
    @:keep
    @:tdfield
    static public function _stmtList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>, _nindent:stdgo.GoInt, _nextIsRBrace:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1192"
        if ((_nindent > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1193"
            _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        var _line:stdgo.GoInt = (0 : stdgo.GoInt), _line__pointer__ = stdgo.Go.pointer(_line);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1197"
        for (__0 => _s in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1199"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : false };
                }, __1 = __tmp__._0, _isEmpty = __tmp__._1;
                if (!_isEmpty) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1202"
                    if ((((@:checkr _p ?? throw "null pointer dereference")._output.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1205"
                        _p._linebreak(_p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), ((_i == ((0 : stdgo.GoInt)) || _nindent == ((0 : stdgo.GoInt)) : Bool) || (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool) : Bool));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1207"
                    _p._recordLine(_line__pointer__);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1208"
                    _p._stmt(_s, (_nextIsRBrace && (_i == ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1212"
                    {
                        var _t = (_s : stdgo._internal.go.ast.Ast_stmt.Stmt);
                        while (true) {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : false };
                            }, _lt = __tmp__._0, __26 = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1214"
                            if (({
                                final value = _lt;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1215"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1217"
                            _line++;
                            _t = (@:checkr _lt ?? throw "null pointer dereference").stmt;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1220"
                    _i++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1223"
        if ((_nindent > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1224"
            _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
    }
    @:keep
    @:tdfield
    static public function _expr( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _x:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1182"
        _p._expr1(_x, (0 : stdgo.GoInt), (1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _expr0( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _x:stdgo._internal.go.ast.Ast_expr.Expr, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1177"
        _p._expr1(_x, (0 : stdgo.GoInt), _depth);
    }
    @:keep
    @:tdfield
    static public function _selectorExpr( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, _depth:stdgo.GoInt, _isMethod:Bool):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1160"
        _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), _depth);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1161"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((53 : stdgo._internal.go.token.Token_token.Token))));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1162"
        {
            var _line = (_p._lineFor((@:checkr _x ?? throw "null pointer dereference").sel.pos()) : stdgo.GoInt);
            if (((@:checkr _p ?? throw "null pointer dereference")._pos.isValid() && ((@:checkr _p ?? throw "null pointer dereference")._pos.line < _line : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1163"
                _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1164"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").sel.pos());
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1165"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").sel)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1166"
                if (!_isMethod) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1167"
                    _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1169"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1171"
        _p._setPos((@:checkr _x ?? throw "null pointer dereference").sel.pos());
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1172"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").sel)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1173"
        return false;
    }
    @:keep
    @:tdfield
    static public function _possibleSelectorExpr( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1150"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1151"
                return _p._selectorExpr(_x, _depth, true);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1153"
        _p._expr1(_expr, _prec1, _depth);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1154"
        return false;
    }
    @:keep
    @:tdfield
    static public function _expr1( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L825"
        _p._setPos(_expr.pos());
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L827"
        {
            final __type__ = _expr;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L829"
                _p._print(stdgo.Go.toInterface(("BadExpr" : stdgo.GoString)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L832"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L835"
                if ((_depth < (1 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L836"
                    _p._internalError(stdgo.Go.toInterface(("depth < 1:" : stdgo.GoString)), stdgo.Go.toInterface(_depth));
                    _depth = (1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L839"
                _p._binaryExpr(_x, _prec1, stdgo._internal.go.printer.Printer__cutoff._cutoff(_x, _depth), _depth);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L842"
                _p._expr((@:checkr _x ?? throw "null pointer dereference").key);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L843"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").colon);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L844"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L845"
                _p._expr((@:checkr _x ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                {};
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L849"
                if (((6 : stdgo.GoInt) < _prec1 : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L851"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L852"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((14 : stdgo._internal.go.token.Token_token.Token))));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L853"
                    _p._expr((@:checkr _x ?? throw "null pointer dereference").x);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L854"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L857"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((14 : stdgo._internal.go.token.Token_token.Token))));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L858"
                    _p._expr((@:checkr _x ?? throw "null pointer dereference").x);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value);
                {};
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L863"
                if (((6 : stdgo.GoInt) < _prec1 : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L865"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L866"
                    _p._expr(stdgo.Go.asInterface(_x));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L867"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L870"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").op)));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L871"
                    if ((@:checkr _x ?? throw "null pointer dereference").op == ((79 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L873"
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L875"
                    _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (6 : stdgo.GoInt), _depth);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L879"
                if (((@:checkr _p ?? throw "null pointer dereference").config.mode & (1073741824u32 : stdgo._internal.go.printer.Printer_mode.Mode) : stdgo._internal.go.printer.Printer_mode.Mode) != ((0u32 : stdgo._internal.go.printer.Printer_mode.Mode))) {
                    _x = stdgo._internal.go.printer.Printer__normalizednumber._normalizedNumber(_x);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L882"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L885"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").type.pos());
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L886"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token_token.Token))));
                var _startCol = ((@:checkr _p ?? throw "null pointer dereference")._out.column - ((("func" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L889"
                _p._signature((@:checkr _x ?? throw "null pointer dereference").type);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L890"
                _p._funcBody(_p._distanceFrom((@:checkr _x ?? throw "null pointer dereference").type.pos(), _startCol), (32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (@:checkr _x ?? throw "null pointer dereference").body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L893"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : false };
                    }, __8 = __tmp__._0, _hasParens = __tmp__._1;
                    if (_hasParens) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L896"
                        _p._expr0((@:checkr _x ?? throw "null pointer dereference").x, _depth);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L898"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L899"
                        _p._expr0((@:checkr _x ?? throw "null pointer dereference").x, stdgo._internal.go.printer.Printer__reducedepth._reduceDepth(_depth));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L900"
                        _p._setPos((@:checkr _x ?? throw "null pointer dereference").rparen);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L901"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L905"
                _p._selectorExpr(_x, _depth, false);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L908"
                _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), _depth);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L909"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((53 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L910"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").lparen);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L911"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L912"
                if ((@:checkr _x ?? throw "null pointer dereference").type != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L913"
                    _p._expr((@:checkr _x ?? throw "null pointer dereference").type);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L915"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((84 : stdgo._internal.go.token.Token_token.Token))));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L917"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").rparen);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L918"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L922"
                _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L923"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").lbrack);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L924"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L925"
                _p._expr0((@:checkr _x ?? throw "null pointer dereference").index, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L926"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").rbrack);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L927"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L932"
                _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L933"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").lbrack);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L934"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L935"
                _p._exprList((@:checkr _x ?? throw "null pointer dereference").lbrack, (@:checkr _x ?? throw "null pointer dereference").indices, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt), (1u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _x ?? throw "null pointer dereference").rbrack, false);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L936"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").rbrack);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L937"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L941"
                _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L942"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").lbrack);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L943"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                var _indices = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(2, 2, ...[(@:checkr _x ?? throw "null pointer dereference").low, (@:checkr _x ?? throw "null pointer dereference").high]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L945"
                if ((@:checkr _x ?? throw "null pointer dereference").max != null) {
                    _indices = (_indices.__append__((@:checkr _x ?? throw "null pointer dereference").max) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                };
                var _needsBlanks:Bool = false;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L950"
                if ((_depth <= (1 : stdgo.GoInt) : Bool)) {
                    var _indexCount:stdgo.GoInt = (0 : stdgo.GoInt);
                    var _hasBinaries:Bool = false;
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L953"
                    for (__32 => _x in _indices) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L954"
                        if (_x != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L955"
                            _indexCount++;
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L956"
                            if (stdgo._internal.go.printer.Printer__isbinary._isBinary(_x)) {
                                _hasBinaries = true;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L961"
                    if (((_indexCount > (1 : stdgo.GoInt) : Bool) && _hasBinaries : Bool)) {
                        _needsBlanks = true;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L965"
                for (_i => _x in _indices) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L966"
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L967"
                        if (((_indices[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] != null) && _needsBlanks : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L968"
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L970"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L971"
                        if (((_x != null) && _needsBlanks : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L972"
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L975"
                    if (_x != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L976"
                        _p._expr0(_x, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L979"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").rbrack);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L980"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L983"
                if ((((@:checkr _x ?? throw "null pointer dereference").args.length) > (1 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L984"
                    _depth++;
                };
                var _wasIndented:Bool = false;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L987"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), _1 : false };
                    }, __8 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L989"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                        _wasIndented = _p._possibleSelectorExpr((@:checkr _x ?? throw "null pointer dereference").fun, (7 : stdgo.GoInt), _depth);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L991"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                    } else {
                        _wasIndented = _p._possibleSelectorExpr((@:checkr _x ?? throw "null pointer dereference").fun, (7 : stdgo.GoInt), _depth);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L995"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").lparen);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L996"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L997"
                if ((@:checkr _x ?? throw "null pointer dereference").ellipsis.isValid()) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L998"
                    _p._exprList((@:checkr _x ?? throw "null pointer dereference").lparen, (@:checkr _x ?? throw "null pointer dereference").args, _depth, (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _x ?? throw "null pointer dereference").ellipsis, false);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L999"
                    _p._setPos((@:checkr _x ?? throw "null pointer dereference").ellipsis);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1000"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((48 : stdgo._internal.go.token.Token_token.Token))));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1001"
                    if (((@:checkr _x ?? throw "null pointer dereference").rparen.isValid() && (_p._lineFor((@:checkr _x ?? throw "null pointer dereference").ellipsis) < _p._lineFor((@:checkr _x ?? throw "null pointer dereference").rparen) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1002"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1005"
                    _p._exprList((@:checkr _x ?? throw "null pointer dereference").lparen, (@:checkr _x ?? throw "null pointer dereference").args, _depth, (1u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _x ?? throw "null pointer dereference").rparen, false);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1007"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").rparen);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1008"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1009"
                if (_wasIndented) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1010"
                    _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1015"
                if ((@:checkr _x ?? throw "null pointer dereference").type != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1016"
                    _p._expr1((@:checkr _x ?? throw "null pointer dereference").type, (7 : stdgo.GoInt), _depth);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1018"
                (@:checkr _p ?? throw "null pointer dereference")._level++;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1019"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").lbrace);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1020"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1021"
                _p._exprList((@:checkr _x ?? throw "null pointer dereference").lbrace, (@:checkr _x ?? throw "null pointer dereference").elts, (1 : stdgo.GoInt), (1u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _x ?? throw "null pointer dereference").rbrace, (@:checkr _x ?? throw "null pointer dereference").incomplete);
                var _mode = (2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1028"
                if ((((@:checkr _x ?? throw "null pointer dereference").elts.length) > (0 : stdgo.GoInt) : Bool)) {
                    _mode = (_mode | ((1 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1033"
                _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(_mode));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1034"
                _p._setPos((@:checkr _x ?? throw "null pointer dereference").rbrace);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1035"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(_mode));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1036"
                (@:checkr _p ?? throw "null pointer dereference")._level--;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1039"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((48 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1040"
                if ((@:checkr _x ?? throw "null pointer dereference").elt != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1041"
                    _p._expr((@:checkr _x ?? throw "null pointer dereference").elt);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1045"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1046"
                if ((@:checkr _x ?? throw "null pointer dereference").len != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1047"
                    _p._expr((@:checkr _x ?? throw "null pointer dereference").len);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1049"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1050"
                _p._expr((@:checkr _x ?? throw "null pointer dereference").elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1053"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((82 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1054"
                _p._fieldList((@:checkr _x ?? throw "null pointer dereference").fields, true, (@:checkr _x ?? throw "null pointer dereference").incomplete);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1057"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1058"
                _p._signature(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1061"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((76 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1062"
                _p._fieldList((@:checkr _x ?? throw "null pointer dereference").methods, false, (@:checkr _x ?? throw "null pointer dereference").incomplete);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1065"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((77 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1066"
                _p._expr((@:checkr _x ?? throw "null pointer dereference").key);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1067"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1068"
                _p._expr((@:checkr _x ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1071"
                {
                    final __value__ = (@:checkr _x ?? throw "null pointer dereference").dir;
                    if (__value__ == ((3 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1073"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token_token.Token))));
                    } else if (__value__ == ((2 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1075"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token_token.Token))));
                    } else if (__value__ == ((1 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1077"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token_token.Token))));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1078"
                        _p._setPos((@:checkr _x ?? throw "null pointer dereference").arrow);
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1079"
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token_token.Token))));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1081"
                _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1082"
                _p._expr((@:checkr _x ?? throw "null pointer dereference").value);
            } else {
                var _x:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1085"
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _binaryExpr( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>, _prec1:stdgo.GoInt, _cutoff:stdgo.GoInt, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _prec = ((@:checkr _x ?? throw "null pointer dereference").op.precedence() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L781"
        if ((_prec < _prec1 : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L785"
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L786"
            _p._expr0(stdgo.Go.asInterface(_x), stdgo._internal.go.printer.Printer__reducedepth._reduceDepth(_depth));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L787"
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L788"
            return;
        };
        var _printBlank = (_prec < _cutoff : Bool);
        var _ws = (62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L794"
        _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, _prec, (_depth + stdgo._internal.go.printer.Printer__diffprec._diffPrec((@:checkr _x ?? throw "null pointer dereference").x, _prec) : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L795"
        if (_printBlank) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L796"
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        var _xline = ((@:checkr _p ?? throw "null pointer dereference")._pos.line : stdgo.GoInt);
        var _yline = (_p._lineFor((@:checkr _x ?? throw "null pointer dereference").y.pos()) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L800"
        _p._setPos((@:checkr _x ?? throw "null pointer dereference").opPos);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L801"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").op)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L802"
        if (((_xline != (_yline) && (_xline > (0 : stdgo.GoInt) : Bool) : Bool) && (_yline > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L805"
            if ((_p._linebreak(_yline, (1 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool)) {
                _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                _printBlank = false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L810"
        if (_printBlank) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L811"
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L813"
        _p._expr1((@:checkr _x ?? throw "null pointer dereference").y, (_prec + (1 : stdgo.GoInt) : stdgo.GoInt), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L814"
        if (_ws == ((0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L815"
            _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
    }
    @:keep
    @:tdfield
    static public function _fieldList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _isStruct:Bool, _isIncomplete:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _lbrace = ((@:checkr _fields ?? throw "null pointer dereference").opening : stdgo._internal.go.token.Token_pos.Pos);
        var _list = (@:checkr _fields ?? throw "null pointer dereference").list;
        var _rbrace = ((@:checkr _fields ?? throw "null pointer dereference").closing : stdgo._internal.go.token.Token_pos.Pos);
        var _hasComments = (_isIncomplete || _p._commentBefore(_p._posFor(_rbrace)?.__copy__()) : Bool);
        var _srcIsOneLine = ((_lbrace.isValid() && _rbrace.isValid() : Bool) && (_p._lineFor(_lbrace) == _p._lineFor(_rbrace)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L505"
        if ((!_hasComments && _srcIsOneLine : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L507"
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L509"
                _p._setPos(_lbrace);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L510"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L511"
                _p._setPos(_rbrace);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L512"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L513"
                return;
            } else if (_p._isOneLineFieldList(_list)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L517"
                _p._setPos(_lbrace);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L518"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                var _f = _list[(0 : stdgo.GoInt)];
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L520"
                if (_isStruct) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L521"
                    for (_i => _x in (@:checkr _f ?? throw "null pointer dereference").names) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L522"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L524"
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L526"
                        _p._expr(stdgo.Go.asInterface(_x));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L528"
                    if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L529"
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L531"
                    _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L533"
                    if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                        var _name = (@:checkr _f ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)];
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L535"
                        _p._expr(stdgo.Go.asInterface(_name));
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L536"
                        _p._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L539"
                        _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L542"
                _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L543"
                _p._setPos(_rbrace);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L544"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L545"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L550"
        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L551"
        _p._setPos(_lbrace);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L552"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L553"
        if ((_hasComments || ((_list.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L554"
            _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L557"
        if (_isStruct) {
            var _sep = (11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L560"
            if ((_list.length) == ((1 : stdgo.GoInt))) {
                _sep = (32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
            };
            var _line:stdgo.GoInt = (0 : stdgo.GoInt), _line__pointer__ = stdgo.Go.pointer(_line);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L564"
            for (_i => _f in _list) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L565"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L566"
                    _p._linebreak(_p._lineFor(_f.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                };
                var _extraTabs = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L569"
                _p._setComment((@:checkr _f ?? throw "null pointer dereference").doc);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L570"
                _p._recordLine(_line__pointer__);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L571"
                if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L573"
                    _p._identList((@:checkr _f ?? throw "null pointer dereference").names, false);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L574"
                    _p._print(stdgo.Go.toInterface(_sep));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L575"
                    _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                    _extraTabs = (1 : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L579"
                    _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                    _extraTabs = (2 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L582"
                if (({
                    final value = (@:checkr _f ?? throw "null pointer dereference").tag;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L583"
                    if (((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool) && (_sep == (11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L584"
                        _p._print(stdgo.Go.toInterface(_sep));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L586"
                    _p._print(stdgo.Go.toInterface(_sep));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L587"
                    _p._expr(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").tag));
                    _extraTabs = (0 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L590"
                if (({
                    final value = (@:checkr _f ?? throw "null pointer dereference").comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L591"
                    while ((_extraTabs > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L592"
                        _p._print(stdgo.Go.toInterface(_sep));
                        _extraTabs--;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L594"
                    _p._setComment((@:checkr _f ?? throw "null pointer dereference").comment);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L597"
            if (_isIncomplete) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L598"
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L599"
                    _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L601"
                _p._flush(_p._posFor(_rbrace)?.__copy__(), (56 : stdgo._internal.go.token.Token_token.Token));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L602"
                _p._setLineComment(("// contains filtered or unexported fields" : stdgo.GoString));
            };
        } else {
            var _line:stdgo.GoInt = (0 : stdgo.GoInt), _line__pointer__ = stdgo.Go.pointer(_line);
            var _prev:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L609"
            for (_i => _f in _list) {
                var _name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L611"
                if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                    _name = (@:checkr _f ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)];
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L614"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var _min = (1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L619"
                    if ((({
                        final value = _prev;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && (_name == _prev) : Bool)) {
                        _min = (0 : stdgo.GoInt);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L622"
                    _p._linebreak(_p._lineFor(_f.pos()), _min, (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L624"
                _p._setComment((@:checkr _f ?? throw "null pointer dereference").doc);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L625"
                _p._recordLine(_line__pointer__);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L626"
                if (({
                    final value = _name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L628"
                    _p._expr(stdgo.Go.asInterface(_name));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L629"
                    _p._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>));
                    _prev = null;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L633"
                    _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                    _prev = null;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L636"
                _p._setComment((@:checkr _f ?? throw "null pointer dereference").comment);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L638"
            if (_isIncomplete) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L639"
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L640"
                    _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L642"
                _p._flush(_p._posFor(_rbrace)?.__copy__(), (56 : stdgo._internal.go.token.Token_token.Token));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L643"
                _p._setLineComment(("// contains filtered or unexported methods" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L647"
        _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L648"
        _p._setPos(_rbrace);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L649"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
    }
    @:keep
    @:tdfield
    static public function _setLineComment( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _text:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L495"
        _p._setComment((stdgo.Go.setRef(({ list : (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>(1, 1, ...[({ slash : (0 : stdgo._internal.go.token.Token_pos.Pos), text : _text?.__copy__() } : stdgo._internal.go.ast.Ast_comment.Comment)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>) } : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>));
    }
    @:keep
    @:tdfield
    static public function _isOneLineFieldList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L477"
        if ((_list.length) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L478"
            return false;
        };
        var _f = _list[(0 : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L481"
        if ((({
            final value = (@:checkr _f ?? throw "null pointer dereference").tag;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) || ({
            final value = (@:checkr _f ?? throw "null pointer dereference").comment;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L482"
            return false;
        };
        {};
        var _namesSize = (stdgo._internal.go.printer.Printer__identlistsize._identListSize((@:checkr _f ?? throw "null pointer dereference").names, (30 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L487"
        if ((_namesSize > (0 : stdgo.GoInt) : Bool)) {
            _namesSize = (1 : stdgo.GoInt);
        };
        var _typeSize = (_p._nodeSize((@:checkr _f ?? throw "null pointer dereference").type, (30 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L491"
        return ((_namesSize + _typeSize : stdgo.GoInt) <= (30 : stdgo.GoInt) : Bool);
    }
    @:keep
    @:tdfield
    static public function _signature( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _sig:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L441"
        if (({
            final value = (@:checkr _sig ?? throw "null pointer dereference").typeParams;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L442"
            _p._parameters((@:checkr _sig ?? throw "null pointer dereference").typeParams, (1 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L444"
        if (({
            final value = (@:checkr _sig ?? throw "null pointer dereference").params;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L445"
            _p._parameters((@:checkr _sig ?? throw "null pointer dereference").params, (0 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L447"
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
        };
        var _res = (@:checkr _sig ?? throw "null pointer dereference").results;
        var _n = (_res.numFields() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L451"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L453"
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L454"
            if (((_n == (1 : stdgo.GoInt)) && ((@:checkr (@:checkr _res ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").names == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L456"
                _p._expr(stdgo._internal.go.printer.Printer__stripparensalways._stripParensAlways((@:checkr (@:checkr _res ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L457"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L459"
            _p._parameters(_res, (0 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
        };
    }
    @:keep
    @:tdfield
    static public function _parameters( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _mode:stdgo._internal.go.printer.Printer_t_parammode.T_paramMode):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var __0 = (49 : stdgo._internal.go.token.Token_token.Token), __1 = (54 : stdgo._internal.go.token.Token_token.Token);
var _closeTok = __1, _openTok = __0;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L333"
        if (_mode != ((0 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode))) {
            {
                final __tmp__0 = (50 : stdgo._internal.go.token.Token_token.Token);
                final __tmp__1 = (55 : stdgo._internal.go.token.Token_token.Token);
                _openTok = @:binopAssign __tmp__0;
                _closeTok = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L336"
        _p._setPos((@:checkr _fields ?? throw "null pointer dereference").opening);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L337"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_openTok)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L338"
        if ((((@:checkr _fields ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool)) {
            var _prevLine = (_p._lineFor((@:checkr _fields ?? throw "null pointer dereference").opening) : stdgo.GoInt);
            var _ws = (62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L341"
            for (_i => _par in (@:checkr _fields ?? throw "null pointer dereference").list) {
                var _parLineBeg = (_p._lineFor(_par.pos()) : stdgo.GoInt);
                var _parLineEnd = (_p._lineFor(_par.end()) : stdgo.GoInt);
                var _needsLinebreak = (((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _parLineBeg : Bool) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L349"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L353"
                    if (!_needsLinebreak) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L354"
                        _p._setPos(_par.pos());
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L356"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L359"
                if ((_needsLinebreak && (_p._linebreak(_parLineBeg, (0 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                } else if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L363"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L366"
                if ((((@:checkr _par ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L373"
                    _p._identList((@:checkr _par ?? throw "null pointer dereference").names, _ws == ((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L374"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L377"
                _p._expr(stdgo._internal.go.printer.Printer__stripparensalways._stripParensAlways((@:checkr _par ?? throw "null pointer dereference").type));
                _prevLine = _parLineEnd;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L383"
            {
                var _closing = (_p._lineFor((@:checkr _fields ?? throw "null pointer dereference").closing) : stdgo.GoInt);
                if ((((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _closing : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L384"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L385"
                    _p._linebreak(_closing, (0 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), true);
                } else if (((_mode == ((2 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode)) && _fields.numFields() == ((1 : stdgo.GoInt)) : Bool) && stdgo._internal.go.printer.Printer__combineswithname._combinesWithName((@:checkr (@:checkr _fields ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L391"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L395"
            if (_ws == ((0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L396"
                _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L400"
        _p._setPos((@:checkr _fields ?? throw "null pointer dereference").closing);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L401"
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_closeTok)));
    }
    @:keep
    @:tdfield
    static public function _exprList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _prev0:stdgo._internal.go.token.Token_pos.Pos, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _depth:stdgo.GoInt, _mode:stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode, _next0:stdgo._internal.go.token.Token_pos.Pos, _isIncomplete:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L130"
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L131"
            if (_isIncomplete) {
                var _prev = (_p._posFor(_prev0)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
                var _next = (_p._posFor(_next0)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L134"
                if ((_prev.isValid() && (_prev.line == _next.line) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L135"
                    _p._print(stdgo.Go.toInterface(("/* contains filtered or unexported fields */" : stdgo.GoString)));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L137"
                    _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L138"
                    _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)), stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L141"
            return;
        };
        var _prev = (_p._posFor(_prev0)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
        var _next = (_p._posFor(_next0)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
        var _line = (_p._lineFor(_list[(0 : stdgo.GoInt)].pos()) : stdgo.GoInt);
        var _endLine = (_p._lineFor(_list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end()) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L149"
        if (((_prev.isValid() && _prev.line == (_line) : Bool) && (_line == _endLine) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L151"
            for (_i => _x in _list) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L152"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L155"
                    _p._setPos(_x.pos());
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L156"
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L158"
                _p._expr0(_x, _depth);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L160"
            if (_isIncomplete) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L161"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(("/* contains filtered or unexported fields */" : stdgo.GoString)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L163"
            return;
        };
        var _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L172"
        if ((_mode & (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) == ((0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode))) {
            _ws = (62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
        };
        var _prevBreak = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L179"
        if (((_prev.isValid() && (_prev.line < _line : Bool) : Bool) && (_p._linebreak(_line, (0 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
            _prevBreak = (0 : stdgo.GoInt);
        };
        var _size = (0 : stdgo.GoInt);
        var _lnsum = (0 : stdgo.GoFloat64);
        var _count = (0 : stdgo.GoInt);
        var _prevLine = (_prev.line : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L196"
        for (_i => _x in _list) {
            _line = _p._lineFor(_x.pos());
            var _useFF = (true : Bool);
            var _prevSize = (_size : stdgo.GoInt);
            {};
            _size = _p._nodeSize(_x, (1000000 : stdgo.GoInt));
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), _1 : false };
            }, _pair = __tmp__._0, _isPair = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L214"
            if ((((_size <= (1000000 : stdgo.GoInt) : Bool) && _prev.isValid() : Bool) && _next.isValid() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L216"
                if (_isPair) {
                    _size = _p._nodeSize((@:checkr _pair ?? throw "null pointer dereference").key, (1000000 : stdgo.GoInt));
                };
            } else {
                _size = (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L229"
            if (((_prevSize > (0 : stdgo.GoInt) : Bool) && (_size > (0 : stdgo.GoInt) : Bool) : Bool)) {
                {};
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L231"
                if (((_count == (0 : stdgo.GoInt)) || ((_prevSize <= (40 : stdgo.GoInt) : Bool) && (_size <= (40 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                    _useFF = false;
                } else {
                    {};
                    var _geomean = (stdgo._internal.math.Math_exp.exp((_lnsum / (_count : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    var _ratio = ((_size : stdgo.GoFloat64) / _geomean : stdgo.GoFloat64);
                    _useFF = ((((2.5 : stdgo.GoFloat64) * _ratio : stdgo.GoFloat64) <= (1 : stdgo.GoFloat64) : Bool) || ((2.5 : stdgo.GoFloat64) <= _ratio : Bool) : Bool);
                };
            };
            var _needsLinebreak = (((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _line : Bool) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L242"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L246"
                if (!_needsLinebreak) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L247"
                    _p._setPos(_x.pos());
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L249"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
                var _needsBlank = (true : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L251"
                if (_needsLinebreak) {
                    var _nbreaks = (_p._linebreak(_line, (0 : stdgo.GoInt), _ws, (_useFF || ((_prevBreak + (1 : stdgo.GoInt) : stdgo.GoInt) < _i : Bool) : Bool)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L256"
                    if ((_nbreaks > (0 : stdgo.GoInt) : Bool)) {
                        _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                        _prevBreak = _i;
                        _needsBlank = false;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L265"
                    if ((_nbreaks > (1 : stdgo.GoInt) : Bool)) {
                        _lnsum = (0 : stdgo.GoFloat64);
                        _count = (0 : stdgo.GoInt);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L270"
                if (_needsBlank) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L271"
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L275"
            if ((((((_list.length) > (1 : stdgo.GoInt) : Bool) && _isPair : Bool) && (_size > (0 : stdgo.GoInt) : Bool) : Bool) && _needsLinebreak : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L281"
                _p._expr((@:checkr _pair ?? throw "null pointer dereference").key);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L282"
                _p._setPos((@:checkr _pair ?? throw "null pointer dereference").colon);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L283"
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L284"
                _p._expr((@:checkr _pair ?? throw "null pointer dereference").value);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L286"
                _p._expr0(_x, _depth);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L289"
            if ((_size > (0 : stdgo.GoInt) : Bool)) {
                _lnsum = (_lnsum + (stdgo._internal.math.Math_log.log((_size : stdgo.GoFloat64))) : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L291"
                _count++;
            };
            _prevLine = _line;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L297"
        if ((((_mode & (1u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) != ((0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode)) && _next.isValid() : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._pos.line < _next.line : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L299"
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L300"
            if (_isIncomplete) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L301"
                _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L302"
                _p._print(stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L304"
            if (((_ws == (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) && ((_mode & (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) == (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L306"
                _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L308"
            _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L309"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L312"
        if (_isIncomplete) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L313"
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L314"
            _p._print(stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L317"
        if (((_ws == (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) && ((_mode & (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) == (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L319"
            _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
    }
    @:keep
    @:tdfield
    static public function _identList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, _indent:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _xlist = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>((_list.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L109"
        for (_i => _x in _list) {
            _xlist[(_i : stdgo.GoInt)] = stdgo.Go.asInterface(_x);
        };
        var _mode:stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode = ((0 : stdgo.GoUInt) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L113"
        if (!_indent) {
            _mode = (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L116"
        _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), _xlist, (1 : stdgo.GoInt), _mode, (0 : stdgo._internal.go.token.Token_pos.Pos), false);
    }
    @:keep
    @:tdfield
    static public function _setComment( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L71"
        if ((({
            final value = _g;
            (value == null || (value : Dynamic).__nil__);
        }) || !(@:checkr _p ?? throw "null pointer dereference")._useNodeComments : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L72"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L74"
        if ((@:checkr _p ?? throw "null pointer dereference")._comments == null) {
            (@:checkr _p ?? throw "null pointer dereference")._comments = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        } else if (((@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex < ((@:checkr _p ?? throw "null pointer dereference")._comments.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L81"
            _p._flush(_p._posFor((@:checkr _g ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)].pos())?.__copy__(), (0 : stdgo._internal.go.token.Token_token.Token));
            (@:checkr _p ?? throw "null pointer dereference")._comments = ((@:checkr _p ?? throw "null pointer dereference")._comments.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L84"
            _p._internalError(stdgo.Go.toInterface(("setComment found pending comments" : stdgo.GoString)));
        };
        (@:checkr _p ?? throw "null pointer dereference")._comments[(0 : stdgo.GoInt)] = _g;
        (@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L92"
        if ((@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentOffset == ((1073741824 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L93"
            _p._nextComment();
        };
    }
    @:keep
    @:tdfield
    static public function _linebreak( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _line:stdgo.GoInt, _min:stdgo.GoInt, _ws:stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace, _newSection:Bool):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _nbreaks = (0 : stdgo.GoInt);
        var _n = (stdgo._internal.go.printer.Printer__nlimit._nlimit((_line - (@:checkr _p ?? throw "null pointer dereference")._pos.line : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L48"
        if ((_n < _min : Bool)) {
            _n = _min;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L51"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L52"
            _p._print(stdgo.Go.toInterface(_ws));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L53"
            if (_newSection) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L54"
                _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L55"
                _n--;
                _nbreaks = (2 : stdgo.GoInt);
            };
            _nbreaks = (_nbreaks + (_n) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L59"
            while ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L60"
                _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                _n--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L63"
        return _nbreaks;
    }
    @:keep
    @:tdfield
    static public function _commentTextAt( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _start:stdgo.GoInt):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L158"
        if (((_start < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._output[(_start : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L159"
            _start++;
        };
        var _pos = (_start : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L162"
        while ((((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && (@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)] != ((255 : stdgo.GoUInt8)) : Bool) && !stdgo._internal.go.printer.Printer__isnl._isNL((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L163"
            _pos++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L165"
        return (((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(_start, _pos) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _lineAt( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _start:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _pos = (_start : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L148"
        while (((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && !stdgo._internal.go.printer.Printer__isnl._isNL((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L149"
            _pos++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L151"
        if ((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L152"
            _pos++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L154"
        return ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(_start, _pos) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _fixGoBuildLines( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L14"
        if ((((@:checkr _p ?? throw "null pointer dereference")._goBuild.length) + ((@:checkr _p ?? throw "null pointer dereference")._plusBuild.length) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L15"
            return;
        };
        var _insert = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L26"
        {
            var _pos = (0 : stdgo.GoInt);
            while (true) {
                var _blank = (true : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L29"
                while (((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && ((((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || ((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L30"
                    _pos++;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L33"
                if ((((((_pos + (3 : stdgo.GoInt) : stdgo.GoInt) < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && (@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && (@:checkr _p ?? throw "null pointer dereference")._output[(_pos + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._output[(_pos + (2 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
                    _blank = false;
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L35"
                    while (((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && !stdgo._internal.go.printer.Printer__isnl._isNL((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)]) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L36"
                        _pos++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L40"
                if (((_pos >= ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) || !stdgo._internal.go.printer.Printer__isnl._isNL((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L41"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L43"
                _pos++;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L45"
                if (_blank) {
                    _insert = _pos;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L52"
        if (((((@:checkr _p ?? throw "null pointer dereference")._goBuild.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._goBuild[(0 : stdgo.GoInt)] < _insert : Bool) : Bool)) {
            _insert = (@:checkr _p ?? throw "null pointer dereference")._goBuild[(0 : stdgo.GoInt)];
        } else if (((((@:checkr _p ?? throw "null pointer dereference")._plusBuild.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._plusBuild[(0 : stdgo.GoInt)] < _insert : Bool) : Bool)) {
            _insert = (@:checkr _p ?? throw "null pointer dereference")._plusBuild[(0 : stdgo.GoInt)];
        };
        var _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L59"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = ((@:checkr _p ?? throw "null pointer dereference")._goBuild.length);
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L62"
                        for (__64 => _pos in (@:checkr _p ?? throw "null pointer dereference")._plusBuild) {
                            var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(_p._commentTextAt(_pos)?.__copy__()), _y:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L64"
                            if (_err != null) {
                                _x = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L66"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L68"
                            if (_x == null) {
                                _x = _y;
                            } else {
                                _x = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, y : _y } : stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>));
                            };
                        };
                        break;
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        {
                            var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(_p._commentTextAt((@:checkr _p ?? throw "null pointer dereference")._goBuild[(0 : stdgo.GoInt)])?.__copy__());
                            _x = @:tmpset0 __tmp__._0;
                        };
                        break;
                    };
                };
                break;
            };
        };
        var _block:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L80"
        if (_x == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L84"
            for (__64 => _pos in (@:checkr _p ?? throw "null pointer dereference")._goBuild) {
                _block = (_block.__append__(...(_p._lineAt(_pos) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L87"
            for (__73 => _pos in (@:checkr _p ?? throw "null pointer dereference")._plusBuild) {
                _block = (_block.__append__(...(_p._lineAt(_pos) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        } else {
            _block = (_block.__append__((255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _block = (_block.__append__(...((("//go:build " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _block = (_block.__append__(...((_x.string() : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _block = (_block.__append__((255 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L95"
            if ((((@:checkr _p ?? throw "null pointer dereference")._plusBuild.length) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.go.build.constraint.Constraint_plusbuildlines.plusBuildLines(_x), _lines:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L97"
                if (_err != null) {
                    _lines = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(("// +build error: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L100"
                for (__64 => _line in _lines) {
                    _block = (_block.__append__((255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _block = (_block.__append__(...(_line : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _block = (_block.__append__((255 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
        };
        _block = (_block.__append__((10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var _toDelete = ((@:checkr _p ?? throw "null pointer dereference")._goBuild.__append__(...((@:checkr _p ?? throw "null pointer dereference")._plusBuild : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L111"
        stdgo._internal.sort.Sort_ints.ints(_toDelete);
        var _after:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _start = (_insert : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L116"
        for (__72 => _end in _toDelete) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L117"
            if ((_end < _start : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L118"
                continue;
            };
            _after = stdgo._internal.go.printer.Printer__appendlines._appendLines(_after, ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            _start = (_end + (_p._lineAt(_end).length) : stdgo.GoInt);
        };
        _after = stdgo._internal.go.printer.Printer__appendlines._appendLines(_after, ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L124"
        {
            var _n = (_after.length : stdgo.GoInt);
            if ((((_n >= (2 : stdgo.GoInt) : Bool) && stdgo._internal.go.printer.Printer__isnl._isNL(_after[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.go.printer.Printer__isnl._isNL(_after[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _after = (_after.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(0, _insert) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(_block : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(_after : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _fprint( __self__:stdgo._internal.go.printer.Printer_t_printer.T_printer, _0:stdgo._internal.io.Io_writer.Writer, _1:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _2:stdgo.AnyInterface, _3:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>):stdgo.Error return @:_5 __self__._fprint(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function fprint( __self__:stdgo._internal.go.printer.Printer_t_printer.T_printer, _0:stdgo._internal.io.Io_writer.Writer, _1:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _2:stdgo.AnyInterface):stdgo.Error return @:_5 __self__.fprint(_0, _1, _2);
}
