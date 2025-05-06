package stdgo._internal.go.printer;
class T_printer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _free():Void @:_0 __self__.value._free();
    @:keep
    @:tdfield
    public dynamic function _printNode(_node:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value._printNode(_node);
    @:keep
    @:tdfield
    public dynamic function _flush(_next:stdgo._internal.go.token.Token_position.Position, _tok:stdgo._internal.go.token.Token_token.Token):{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value._flush(_next, _tok);
    @:keep
    @:tdfield
    public dynamic function _print(_args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._print(..._args);
    @:keep
    @:tdfield
    public dynamic function _setPos(_pos:stdgo._internal.go.token.Token_pos.Pos):Void @:_0 __self__.value._setPos(_pos);
    @:keep
    @:tdfield
    public dynamic function _writeWhitespace(_n:stdgo.GoInt):Void @:_0 __self__.value._writeWhitespace(_n);
    @:keep
    @:tdfield
    public dynamic function _intersperseComments(_next:stdgo._internal.go.token.Token_position.Position, _tok:stdgo._internal.go.token.Token_token.Token):{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value._intersperseComments(_next, _tok);
    @:keep
    @:tdfield
    public dynamic function _containsLinebreak():Bool return @:_0 __self__.value._containsLinebreak();
    @:keep
    @:tdfield
    public dynamic function _writeCommentSuffix(_needsLinebreak:Bool):{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value._writeCommentSuffix(_needsLinebreak);
    @:keep
    @:tdfield
    public dynamic function _writeComment(_comment:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>):Void @:_0 __self__.value._writeComment(_comment);
    @:keep
    @:tdfield
    public dynamic function _writeCommentPrefix(_pos:stdgo._internal.go.token.Token_position.Position, _next:stdgo._internal.go.token.Token_position.Position, _prev:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>, _tok:stdgo._internal.go.token.Token_token.Token):Void @:_0 __self__.value._writeCommentPrefix(_pos, _next, _prev, _tok);
    @:keep
    @:tdfield
    public dynamic function _writeString(_pos:stdgo._internal.go.token.Token_position.Position, _s:stdgo.GoString, _isLit:Bool):Void @:_0 __self__.value._writeString(_pos, _s, _isLit);
    @:keep
    @:tdfield
    public dynamic function _writeByte(_ch:stdgo.GoUInt8, _n:stdgo.GoInt):Void @:_0 __self__.value._writeByte(_ch, _n);
    @:keep
    @:tdfield
    public dynamic function _writeIndent():Void @:_0 __self__.value._writeIndent();
    @:keep
    @:tdfield
    public dynamic function _writeLineDirective(_pos:stdgo._internal.go.token.Token_position.Position):Void @:_0 __self__.value._writeLineDirective(_pos);
    @:keep
    @:tdfield
    public dynamic function _lineFor(_pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt return @:_0 __self__.value._lineFor(_pos);
    @:keep
    @:tdfield
    public dynamic function _posFor(_pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position return @:_0 __self__.value._posFor(_pos);
    @:keep
    @:tdfield
    public dynamic function _linesFrom(_line:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._linesFrom(_line);
    @:keep
    @:tdfield
    public dynamic function _recordLine(_linePtr:stdgo.Pointer<stdgo.GoInt>):Void @:_0 __self__.value._recordLine(_linePtr);
    @:keep
    @:tdfield
    public dynamic function _commentSizeBefore(_next:stdgo._internal.go.token.Token_position.Position):stdgo.GoInt return @:_0 __self__.value._commentSizeBefore(_next);
    @:keep
    @:tdfield
    public dynamic function _commentBefore(_next:stdgo._internal.go.token.Token_position.Position):Bool return @:_0 __self__.value._commentBefore(_next);
    @:keep
    @:tdfield
    public dynamic function _nextComment():Void @:_0 __self__.value._nextComment();
    @:keep
    @:tdfield
    public dynamic function _commentsHaveNewline(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>):Bool return @:_0 __self__.value._commentsHaveNewline(_list);
    @:keep
    @:tdfield
    public dynamic function _internalError(_msg:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._internalError(..._msg);
    @:keep
    @:tdfield
    public dynamic function _file(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void @:_0 __self__.value._file(_src);
    @:keep
    @:tdfield
    public dynamic function _declList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>):Void @:_0 __self__.value._declList(_list);
    @:keep
    @:tdfield
    public dynamic function _decl(_decl:stdgo._internal.go.ast.Ast_decl.Decl):Void @:_0 __self__.value._decl(_decl);
    @:keep
    @:tdfield
    public dynamic function _funcDecl(_d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void @:_0 __self__.value._funcDecl(_d);
    @:keep
    @:tdfield
    public dynamic function _distanceFrom(_startPos:stdgo._internal.go.token.Token_pos.Pos, _startOutCol:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._distanceFrom(_startPos, _startOutCol);
    @:keep
    @:tdfield
    public dynamic function _funcBody(_headerSize:stdgo.GoInt, _sep:stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace, _b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void @:_0 __self__.value._funcBody(_headerSize, _sep, _b);
    @:keep
    @:tdfield
    public dynamic function _bodySize(_b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _maxSize:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._bodySize(_b, _maxSize);
    @:keep
    @:tdfield
    public dynamic function _numLines(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.GoInt return @:_0 __self__.value._numLines(_n);
    @:keep
    @:tdfield
    public dynamic function _nodeSize(_n:stdgo._internal.go.ast.Ast_node.Node, _maxSize:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._nodeSize(_n, _maxSize);
    @:keep
    @:tdfield
    public dynamic function _genDecl(_d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):Void @:_0 __self__.value._genDecl(_d);
    @:keep
    @:tdfield
    public dynamic function _spec(_spec:stdgo._internal.go.ast.Ast_spec.Spec, _n:stdgo.GoInt, _doIndent:Bool):Void @:_0 __self__.value._spec(_spec, _n, _doIndent);
    @:keep
    @:tdfield
    public dynamic function _valueSpec(_s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>, _keepType:Bool):Void @:_0 __self__.value._valueSpec(_s, _keepType);
    @:keep
    @:tdfield
    public dynamic function _stmt(_stmt:stdgo._internal.go.ast.Ast_stmt.Stmt, _nextIsRBrace:Bool):Void @:_0 __self__.value._stmt(_stmt, _nextIsRBrace);
    @:keep
    @:tdfield
    public dynamic function _indentList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Bool return @:_0 __self__.value._indentList(_list);
    @:keep
    @:tdfield
    public dynamic function _controlClause(_isForStmt:Bool, _init:stdgo._internal.go.ast.Ast_stmt.Stmt, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _post:stdgo._internal.go.ast.Ast_stmt.Stmt):Void @:_0 __self__.value._controlClause(_isForStmt, _init, _expr, _post);
    @:keep
    @:tdfield
    public dynamic function _block(_b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _nindent:stdgo.GoInt):Void @:_0 __self__.value._block(_b, _nindent);
    @:keep
    @:tdfield
    public dynamic function _stmtList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>, _nindent:stdgo.GoInt, _nextIsRBrace:Bool):Void @:_0 __self__.value._stmtList(_list, _nindent, _nextIsRBrace);
    @:keep
    @:tdfield
    public dynamic function _expr(_x:stdgo._internal.go.ast.Ast_expr.Expr):Void @:_0 __self__.value._expr(_x);
    @:keep
    @:tdfield
    public dynamic function _expr0(_x:stdgo._internal.go.ast.Ast_expr.Expr, _depth:stdgo.GoInt):Void @:_0 __self__.value._expr0(_x, _depth);
    @:keep
    @:tdfield
    public dynamic function _selectorExpr(_x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, _depth:stdgo.GoInt, _isMethod:Bool):Bool return @:_0 __self__.value._selectorExpr(_x, _depth, _isMethod);
    @:keep
    @:tdfield
    public dynamic function _possibleSelectorExpr(_expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Bool return @:_0 __self__.value._possibleSelectorExpr(_expr, _prec1, _depth);
    @:keep
    @:tdfield
    public dynamic function _expr1(_expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Void @:_0 __self__.value._expr1(_expr, _prec1, _depth);
    @:keep
    @:tdfield
    public dynamic function _binaryExpr(_x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>, _prec1:stdgo.GoInt, _cutoff:stdgo.GoInt, _depth:stdgo.GoInt):Void @:_0 __self__.value._binaryExpr(_x, _prec1, _cutoff, _depth);
    @:keep
    @:tdfield
    public dynamic function _fieldList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _isStruct:Bool, _isIncomplete:Bool):Void @:_0 __self__.value._fieldList(_fields, _isStruct, _isIncomplete);
    @:keep
    @:tdfield
    public dynamic function _setLineComment(_text:stdgo.GoString):Void @:_0 __self__.value._setLineComment(_text);
    @:keep
    @:tdfield
    public dynamic function _isOneLineFieldList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>):Bool return @:_0 __self__.value._isOneLineFieldList(_list);
    @:keep
    @:tdfield
    public dynamic function _signature(_sig:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void @:_0 __self__.value._signature(_sig);
    @:keep
    @:tdfield
    public dynamic function _parameters(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _mode:stdgo._internal.go.printer.Printer_t_parammode.T_paramMode):Void @:_0 __self__.value._parameters(_fields, _mode);
    @:keep
    @:tdfield
    public dynamic function _exprList(_prev0:stdgo._internal.go.token.Token_pos.Pos, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _depth:stdgo.GoInt, _mode:stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode, _next0:stdgo._internal.go.token.Token_pos.Pos, _isIncomplete:Bool):Void @:_0 __self__.value._exprList(_prev0, _list, _depth, _mode, _next0, _isIncomplete);
    @:keep
    @:tdfield
    public dynamic function _identList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, _indent:Bool):Void @:_0 __self__.value._identList(_list, _indent);
    @:keep
    @:tdfield
    public dynamic function _setComment(_g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void @:_0 __self__.value._setComment(_g);
    @:keep
    @:tdfield
    public dynamic function _linebreak(_line:stdgo.GoInt, _min:stdgo.GoInt, _ws:stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace, _newSection:Bool):stdgo.GoInt return @:_0 __self__.value._linebreak(_line, _min, _ws, _newSection);
    @:keep
    @:tdfield
    public dynamic function _commentTextAt(_start:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value._commentTextAt(_start);
    @:keep
    @:tdfield
    public dynamic function _lineAt(_start:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._lineAt(_start);
    @:keep
    @:tdfield
    public dynamic function _fixGoBuildLines():Void @:_0 __self__.value._fixGoBuildLines();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _fprint(_0:stdgo._internal.io.Io_writer.Writer, _1:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _2:stdgo.AnyInterface, _3:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>):stdgo.Error return @:_0 __self__.value._fprint(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fprint(_0:stdgo._internal.io.Io_writer.Writer, _1:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _2:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.fprint(_0, _1, _2);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.printer.Printer_t_printerpointer.T_printerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
