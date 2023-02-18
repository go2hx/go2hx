package stdgo.go.printer;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package printer implements printing of AST nodes.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _aNewline = (("\n" : GoString) : Slice<GoByte>);
/**
    
    
    
**/
private var _printerPool = ({ new_ : function():AnyInterface {
        return Go.toInterface(Go.asInterface((({ _output : new Slice<GoUInt8>((0 : GoInt).toBasic(), (16384 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]), _wsbuf : new Slice<T_whiteSpace>((0 : GoInt).toBasic(), (16 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) ((0 : GoUInt8) : T_whiteSpace)]) } : T_printer) : Ref<T_printer>)));
    } } : stdgo.sync.Sync.Pool);
/**
    
    
    
**/
private var _update = stdgo.flag.Flag.bool_(("update" : GoString), false, ("update golden files" : GoString));
/**
    
    
    
**/
private var _fset = stdgo.go.token.Token.newFileSet();
/**
    // Use go test -update to create/update the respective golden files.
    
    
**/
private var _data = (new Slice<T_entry>(
0,
0,
(new T_entry(("empty.input" : GoString), ("empty.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("comments.input" : GoString), ("comments.golden" : GoString), (("0" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("comments.input" : GoString), ("comments.x" : GoString), (("1" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("comments2.input" : GoString), ("comments2.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("alignment.input" : GoString), ("alignment.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("linebreaks.input" : GoString), ("linebreaks.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("expressions.input" : GoString), ("expressions.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("expressions.input" : GoString), ("expressions.raw" : GoString), (("10" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("declarations.input" : GoString), ("declarations.golden" : GoString), (("0" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("statements.input" : GoString), ("statements.golden" : GoString), (("0" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("slow.input" : GoString), ("slow.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("complit.input" : GoString), ("complit.x" : GoString), (("1" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("go2numbers.input" : GoString), ("go2numbers.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("go2numbers.input" : GoString), ("go2numbers.norm" : GoString), (("12" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("generics.input" : GoString), ("generics.golden" : GoString), (("24" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("gobuild1.input" : GoString), ("gobuild1.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("gobuild2.input" : GoString), ("gobuild2.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("gobuild3.input" : GoString), ("gobuild3.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("gobuild4.input" : GoString), ("gobuild4.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("gobuild5.input" : GoString), ("gobuild5.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("gobuild6.input" : GoString), ("gobuild6.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry),
(new T_entry(("gobuild7.input" : GoString), ("gobuild7.golden" : GoString), (("8" : GoUInt) : T_checkMode)) : T_entry)) : Slice<T_entry>);
/**
    
    
    
**/
private var _decls = (new Slice<GoString>(0, 0, ("import \"fmt\"" : GoString), ("const pi = 3.1415\nconst e = 2.71828\n\nvar x = pi" : GoString), ("func sum(x, y int) int\t{ return x + y }" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _stmts = (new Slice<GoString>(0, 0, ("i := 0" : GoString), ("select {}\nvar a, b = 1, 2\nreturn a + b" : GoString), ("go f()\ndefer func() {}()" : GoString)) : Slice<GoString>);
/**
    
    
    // list is optionally terminated by a comma
**/
private final _commaTerm : T_exprListMode = (("2" : GoUInt) : T_exprListMode);
/**
    
    
    // no extra indentation in multi-line lists
**/
private final _noIndent = (("2" : GoUInt) : T_exprListMode);
/**
    
    
    
**/
private final _filteredMsg = ("contains filtered or unexported fields" : GoString);
/**
    
    
    
**/
private final _funcParam : T_paramMode = (2 : T_paramMode);
/**
    
    
    
**/
private final _funcTParam = (2 : T_paramMode);
/**
    
    
    
**/
private final _typeTParam = (2 : T_paramMode);
/**
    
    
    
**/
private var _fileNode : Ref<stdgo.go.ast.Ast.File> = (null : Ref<stdgo.go.ast.Ast.File>);
/**
    
    
    
**/
private var _fileSize : GoInt64 = (0 : GoInt64);
/**
    
    
    
**/
private var _declNode : stdgo.go.ast.Ast.Decl = (null : stdgo.go.ast.Ast.Decl);
/**
    
    
    
**/
private var _declSize : GoInt64 = (0 : GoInt64);
/**
    
    
    // max. number of newlines between source text
**/
private final _maxNewlines = ("2" : GoUInt64);
/**
    
    
    // enable for debugging
**/
private final _debug = false;
/**
    
    
    
**/
private final _infinity = ("1073741824" : GoUInt64);
/**
    
    
    
**/
private final _ignore = (0 : T_whiteSpace);
/**
    
    
    
**/
private final _blank = (32 : T_whiteSpace);
/**
    
    
    
**/
private final _vtab = (11 : T_whiteSpace);
/**
    
    
    
**/
private final _newline = (10 : T_whiteSpace);
/**
    
    
    
**/
private final _formfeed = (12 : T_whiteSpace);
/**
    
    
    
**/
private final _indent = (62 : T_whiteSpace);
/**
    
    
    
**/
private final _unindent = (60 : T_whiteSpace);
/**
    
    
    // disables extra blank after /|*-style comment
**/
private final _noExtraBlank : T_pmode = (2 : T_pmode);
/**
    
    
    // disables extra line break after /|*-style comment
**/
private final _noExtraLinebreak = (2 : T_pmode);
/**
    // trimmer is implemented as a state machine.
    // It can be in one of the following states:
    
    // inside space
**/
private final _inSpace = ("2" : GoUInt64);
/**
    // trimmer is implemented as a state machine.
    // It can be in one of the following states:
    
    // inside text bracketed by tabwriter.Escapes
**/
private final _inEscape = ("2" : GoUInt64);
/**
    // trimmer is implemented as a state machine.
    // It can be in one of the following states:
    
    // inside text
**/
private final _inText = ("2" : GoUInt64);
/**
    
    
    // do not use a tabwriter; if set, UseSpaces is ignored
**/
final rawFormat : Mode = (("8" : GoUInt) : Mode);
/**
    
    
    // use tabs for indentation independent of UseSpaces
**/
final tabIndent = (("8" : GoUInt) : Mode);
/**
    
    
    // use spaces instead of tabs for alignment
**/
final useSpaces = (("8" : GoUInt) : Mode);
/**
    
    
    // emit //line directives to preserve original source positions
**/
final sourcePos = (("8" : GoUInt) : Mode);
/**
    // normalizeNumbers means to canonicalize number
    // literal prefixes and exponents while printing.
    //
    // This value is known in and used by go/format and cmd/gofmt.
    // It is currently more convenient and performant for those
    // packages to apply number normalization during printing,
    // rather than by modifying the AST in advance.
    
    
**/
private final _normalizeNumbers : Mode = (("1073741824" : GoUInt) : Mode);
/**
    
    
    
**/
private final _dataDir = ("testdata" : GoString);
/**
    
    
    
**/
private final _tabwidth = ("8" : GoUInt64);
/**
    
    
    
**/
private final _export : T_checkMode = (("16" : GoUInt) : T_checkMode);
/**
    
    
    
**/
private final _rawFormat = (("16" : GoUInt) : T_checkMode);
/**
    
    
    
**/
private final _normNumber = (("16" : GoUInt) : T_checkMode);
/**
    
    
    
**/
private final _idempotent = (("16" : GoUInt) : T_checkMode);
/**
    
    
    
**/
private final _allowTypeParams = (("16" : GoUInt) : T_checkMode);
/**
    // sizeCounter is an io.Writer which counts the number of bytes written,
    // as well as whether a newline character was seen.
    
    
**/
@:structInit @:private @:using(stdgo.go.printer.Printer.T_sizeCounter_static_extension) class T_sizeCounter {
    public var _hasNewline : Bool = false;
    public var _size : GoInt = 0;
    public function new(?_hasNewline:Bool, ?_size:GoInt) {
        if (_hasNewline != null) this._hasNewline = _hasNewline;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_sizeCounter(_hasNewline, _size);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_commentInfo {
    public var _cindex : GoInt = 0;
    public var _comment : Ref<stdgo.go.ast.Ast.CommentGroup> = (null : Ref<stdgo.go.ast.Ast.CommentGroup>);
    public var _commentOffset : GoInt = 0;
    public var _commentNewline : Bool = false;
    public function new(?_cindex:GoInt, ?_comment:Ref<stdgo.go.ast.Ast.CommentGroup>, ?_commentOffset:GoInt, ?_commentNewline:Bool) {
        if (_cindex != null) this._cindex = _cindex;
        if (_comment != null) this._comment = _comment;
        if (_commentOffset != null) this._commentOffset = _commentOffset;
        if (_commentNewline != null) this._commentNewline = _commentNewline;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_commentInfo(_cindex, _comment, _commentOffset, _commentNewline);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.printer.Printer.T_printer_static_extension) class T_printer {
    /**
        // Configuration (does not change after initialization)
    **/
    @:embedded
    public var config : Config = ({} : Config);
    public var _fset : Ref<stdgo.go.token.Token.FileSet> = (null : Ref<stdgo.go.token.Token.FileSet>);
    /**
        // Current state
    **/
    public var _output : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _indent : GoInt = 0;
    public var _level : GoInt = 0;
    public var _mode : T_pmode = ((0 : GoInt) : T_pmode);
    public var _endAlignment : Bool = false;
    public var _impliedSemi : Bool = false;
    public var _lastTok : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var _prevOpen : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var _wsbuf : Slice<T_whiteSpace> = (null : Slice<T_whiteSpace>);
    public var _goBuild : Slice<GoInt> = (null : Slice<GoInt>);
    public var _plusBuild : Slice<GoInt> = (null : Slice<GoInt>);
    /**
        // Positions
        // The out position differs from the pos position when the result
        // formatting differs from the source formatting (in the amount of
        // white space). If there's a difference and SourcePos is set in
        // ConfigMode, //line directives are used in the output to restore
        // original source positions for a reader.
    **/
    public var _pos : stdgo.go.token.Token.Position = ({} : stdgo.go.token.Token.Position);
    public var _out : stdgo.go.token.Token.Position = ({} : stdgo.go.token.Token.Position);
    public var _last : stdgo.go.token.Token.Position = ({} : stdgo.go.token.Token.Position);
    public var _linePtr : Pointer<GoInt> = (null : Pointer<GoInt>);
    /**
        // The list of all source comments, in order of appearance.
    **/
    public var _comments : Slice<Ref<stdgo.go.ast.Ast.CommentGroup>> = (null : Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>);
    public var _useNodeComments : Bool = false;
    /**
        // Information about p.comments[p.cindex]; set up by nextComment.
    **/
    @:embedded
    public var _commentInfo : T_commentInfo = ({} : T_commentInfo);
    /**
        // Cache of already computed node sizes.
    **/
    public var _nodeSizes : GoMap<stdgo.go.ast.Ast.Node, GoInt> = (null : GoMap<stdgo.go.ast.Ast.Node, GoInt>);
    /**
        // Cache of most recently computed line position.
    **/
    public var _cachedPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var _cachedLine : GoInt = 0;
    public function new(?config:Config, ?_fset:Ref<stdgo.go.token.Token.FileSet>, ?_output:Slice<GoUInt8>, ?_indent:GoInt, ?_level:GoInt, ?_mode:T_pmode, ?_endAlignment:Bool, ?_impliedSemi:Bool, ?_lastTok:stdgo.go.token.Token.Token, ?_prevOpen:stdgo.go.token.Token.Token, ?_wsbuf:Slice<T_whiteSpace>, ?_goBuild:Slice<GoInt>, ?_plusBuild:Slice<GoInt>, ?_pos:stdgo.go.token.Token.Position, ?_out:stdgo.go.token.Token.Position, ?_last:stdgo.go.token.Token.Position, ?_linePtr:Pointer<GoInt>, ?_comments:Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>, ?_useNodeComments:Bool, ?_commentInfo:T_commentInfo, ?_nodeSizes:GoMap<stdgo.go.ast.Ast.Node, GoInt>, ?_cachedPos:stdgo.go.token.Token.Pos, ?_cachedLine:GoInt) {
        if (config != null) this.config = config;
        if (_fset != null) this._fset = _fset;
        if (_output != null) this._output = _output;
        if (_indent != null) this._indent = _indent;
        if (_level != null) this._level = _level;
        if (_mode != null) this._mode = _mode;
        if (_endAlignment != null) this._endAlignment = _endAlignment;
        if (_impliedSemi != null) this._impliedSemi = _impliedSemi;
        if (_lastTok != null) this._lastTok = _lastTok;
        if (_prevOpen != null) this._prevOpen = _prevOpen;
        if (_wsbuf != null) this._wsbuf = _wsbuf;
        if (_goBuild != null) this._goBuild = _goBuild;
        if (_plusBuild != null) this._plusBuild = _plusBuild;
        if (_pos != null) this._pos = _pos;
        if (_out != null) this._out = _out;
        if (_last != null) this._last = _last;
        if (_linePtr != null) this._linePtr = _linePtr;
        if (_comments != null) this._comments = _comments;
        if (_useNodeComments != null) this._useNodeComments = _useNodeComments;
        if (_commentInfo != null) this._commentInfo = _commentInfo;
        if (_nodeSizes != null) this._nodeSizes = _nodeSizes;
        if (_cachedPos != null) this._cachedPos = _cachedPos;
        if (_cachedLine != null) this._cachedLine = _cachedLine;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function fprint(_output:stdgo.io.Io.Writer, _fset_:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface):Error return config.fprint(_output, _fset_, _node);
    @:embedded
    public function _fprint(_output:stdgo.io.Io.Writer, _fset_:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface, _nodeSizes:GoMap<stdgo.go.ast.Ast.Node, GoInt>):Error return config._fprint(_output, _fset_, _node, _nodeSizes);
    public function __copy__() {
        return new T_printer(
config,
_fset,
_output,
_indent,
_level,
_mode,
_endAlignment,
_impliedSemi,
_lastTok,
_prevOpen,
_wsbuf,
_goBuild,
_plusBuild,
_pos,
_out,
_last,
_linePtr,
_comments,
_useNodeComments,
_commentInfo,
_nodeSizes,
_cachedPos,
_cachedLine);
    }
}
/**
    // A trimmer is an io.Writer filter for stripping tabwriter.Escape
    // characters, trailing blanks and tabs, and for converting formfeed
    // and vtab characters into newlines and htabs (in case no tabwriter
    // is used). Text bracketed by tabwriter.Escape characters is passed
    // through unchanged.
    
    
**/
@:structInit @:private @:using(stdgo.go.printer.Printer.T_trimmer_static_extension) class T_trimmer {
    public var _output : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var _state : GoInt = 0;
    public var _space : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public function new(?_output:stdgo.io.Io.Writer, ?_state:GoInt, ?_space:Slice<GoUInt8>) {
        if (_output != null) this._output = _output;
        if (_state != null) this._state = _state;
        if (_space != null) this._space = _space;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_trimmer(_output, _state, _space);
    }
}
/**
    // A Config node controls the output of Fprint.
    
    
**/
@:structInit @:using(stdgo.go.printer.Printer.Config_static_extension) class Config {
    public var mode : Mode = ((0 : GoUInt) : Mode);
    public var tabwidth : GoInt = 0;
    public var indent : GoInt = 0;
    public function new(?mode:Mode, ?tabwidth:GoInt, ?indent:GoInt) {
        if (mode != null) this.mode = mode;
        if (tabwidth != null) this.tabwidth = tabwidth;
        if (indent != null) this.indent = indent;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Config(mode, tabwidth, indent);
    }
}
/**
    // A CommentedNode bundles an AST node and corresponding comments.
    // It may be provided as argument to any of the Fprint functions.
    
    
**/
@:structInit class CommentedNode {
    public var node : AnyInterface = (null : AnyInterface);
    public var comments : Slice<Ref<stdgo.go.ast.Ast.CommentGroup>> = (null : Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>);
    public function new(?node:AnyInterface, ?comments:Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>) {
        if (node != null) this.node = node;
        if (comments != null) this.comments = comments;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CommentedNode(node, comments);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_entry {
    public var _source : GoString = "";
    public var _golden : GoString = "";
    public var _mode : T_checkMode = ((0 : GoUInt) : T_checkMode);
    public function new(?_source:GoString, ?_golden:GoString, ?_mode:T_checkMode) {
        if (_source != null) this._source = _source;
        if (_golden != null) this._golden = _golden;
        if (_mode != null) this._mode = _mode;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_source, _golden, _mode);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.printer.Printer.T_limitWriter_static_extension) class T_limitWriter {
    public var _remaining : GoInt = 0;
    public var _errCount : GoInt = 0;
    public function new(?_remaining:GoInt, ?_errCount:GoInt) {
        if (_remaining != null) this._remaining = _remaining;
        if (_errCount != null) this._errCount = _errCount;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_limitWriter(_remaining, _errCount);
    }
}
@:named private typedef T_exprListMode = GoUInt;
@:named private typedef T_paramMode = GoInt;
@:named private typedef T_whiteSpace = GoUInt8;
/**
    // A pmode value represents the current printer mode.
**/
@:named private typedef T_pmode = GoInt;
/**
    // A Mode value is a set of flags (or 0). They control printing.
**/
@:named typedef Mode = GoUInt;
@:named private typedef T_checkMode = GoUInt;
@:named @:using(stdgo.go.printer.Printer.T_visitor_static_extension) private typedef T_visitor = Chan<Ref<stdgo.go.ast.Ast.Ident>>;
/**
    // formatDocComment reformats the doc comment list,
    // returning the canonical formatting.
**/
private function _formatDocComment(_list:Slice<Ref<stdgo.go.ast.Ast.Comment>>):Slice<Ref<stdgo.go.ast.Ast.Comment>> {
        var _0:GoString = ("" : GoString), _1:GoString = ("" : GoString), _text:GoString = _1, _kind:GoString = _0;
        var _directives:Slice<Ref<stdgo.go.ast.Ast.Comment>> = (null : Slice<Ref<stdgo.go.ast.Ast.Comment>>);
        if ((_list.length == (1 : GoInt)) && stdgo.strings.Strings.hasPrefix(_list[(0 : GoInt)].text, ("/*" : GoString))) {
            _kind = ("/*" : GoString);
            _text = _list[(0 : GoInt)].text;
            if (!stdgo.strings.Strings.contains(_text, ("\n" : GoString)) || _allStars(_text)) {
                return _list;
            };
            _text = (_text.__slice__((2 : GoInt), (_text.length) - (2 : GoInt)) : GoString);
        } else if (stdgo.strings.Strings.hasPrefix(_list[(0 : GoInt)].text, ("//" : GoString))) {
            _kind = ("//" : GoString);
            var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
            for (_0 => _c in _list) {
                var __tmp__ = stdgo.strings.Strings.cutPrefix(_c.text, ("//" : GoString)), _after:GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (!_found) {
                    return _list;
                };
                if (_isDirective(_after)) {
                    _directives = _directives.__appendref__(_c);
                    continue;
                };
                _b.writeString(stdgo.strings.Strings.trimPrefix(_after, (" " : GoString)));
                _b.writeString(("\n" : GoString));
            };
            _text = (_b.string() : GoString);
        } else {
            return _list;
        };
        if (_text == (Go.str())) {
            return _list;
        };
        var _p:stdgo.go.doc.comment.Comment.Parser = ({} : stdgo.go.doc.comment.Comment.Parser);
        var _d = _p.parse(_text);
        var _pr:stdgo.go.doc.comment.Comment.Printer = ({} : stdgo.go.doc.comment.Comment.Printer);
        _text = (_pr.comment(_d) : GoString);
        var _slash:stdgo.go.token.Token.Pos = _list[(0 : GoInt)].slash;
        if (_kind == (("/*" : GoString))) {
            var _c = (({ slash : _slash, text : (("/*\n" : GoString) + _text) + ("*/" : GoString) } : stdgo.go.ast.Ast.Comment) : Ref<stdgo.go.ast.Ast.Comment>);
            return (new Slice<Ref<stdgo.go.ast.Ast.Comment>>(0, 0, _c) : Slice<Ref<stdgo.go.ast.Ast.Comment>>);
        };
        var _out:Slice<Ref<stdgo.go.ast.Ast.Comment>> = (null : Slice<Ref<stdgo.go.ast.Ast.Comment>>);
        while (_text != (Go.str())) {
            var _line:GoString = ("" : GoString);
            {
                var __tmp__ = stdgo.strings.Strings.cut(_text, ("\n" : GoString));
                _line = __tmp__._0;
                _text = __tmp__._1;
            };
            if (_line == (Go.str())) {
                _line = ("//" : GoString);
            } else if (stdgo.strings.Strings.hasPrefix(_line, ("\t" : GoString))) {
                _line = ("//" : GoString) + _line;
            } else {
                _line = ("// " : GoString) + _line;
            };
            _out = _out.__appendref__((({ slash : _slash, text : _line } : stdgo.go.ast.Ast.Comment) : Ref<stdgo.go.ast.Ast.Comment>));
        };
        if ((_directives.length) > (0 : GoInt)) {
            _out = _out.__appendref__((({ slash : _slash, text : ("//" : GoString) } : stdgo.go.ast.Ast.Comment) : Ref<stdgo.go.ast.Ast.Comment>));
            for (_1 => _c in _directives) {
                _out = _out.__appendref__((({ slash : _slash, text : _c.text } : stdgo.go.ast.Ast.Comment) : Ref<stdgo.go.ast.Ast.Comment>));
            };
        };
        return _out;
    }
/**
    // isDirective reports whether c is a comment directive.
    // See go.dev/issue/37974.
    // This code is also in go/ast.
**/
private function _isDirective(_c:GoString):Bool {
        if ((stdgo.strings.Strings.hasPrefix(_c, ("line " : GoString)) || stdgo.strings.Strings.hasPrefix(_c, ("extern " : GoString))) || stdgo.strings.Strings.hasPrefix(_c, ("export " : GoString))) {
            return true;
        };
        var _colon:GoInt = stdgo.strings.Strings.index(_c, (":" : GoString));
        if ((_colon <= (0 : GoInt)) || ((_colon + (1 : GoInt)) >= _c.length)) {
            return false;
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_colon + (1 : GoInt)), _i++, {
                if (_i == (_colon)) {
                    continue;
                };
                var _b:GoUInt8 = _c[(_i : GoInt)];
                if (!((((97 : GoUInt8) <= _b) && (_b <= (122 : GoUInt8))) || (((48 : GoUInt8) <= _b) && (_b <= (57 : GoUInt8))))) {
                    return false;
                };
            });
        };
        return true;
    }
/**
    // allStars reports whether text is the interior of an
    // old-style /|* *|/ comment with a star at the start of each line.
**/
private function _allStars(_text:GoString):Bool {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_text.length), _i++, {
                if (_text[(_i : GoInt)] == ((10 : GoUInt8))) {
                    var _j:GoInt = _i + (1 : GoInt);
                    while ((_j < _text.length) && ((_text[(_j : GoInt)] == (32 : GoUInt8)) || (_text[(_j : GoInt)] == (9 : GoUInt8)))) {
                        _j++;
                    };
                    if ((_j < _text.length) && (_text[(_j : GoInt)] != (42 : GoUInt8))) {
                        return false;
                    };
                };
            });
        };
        return true;
    }
/**
    // appendLines is like append(x, y...)
    // but it avoids creating doubled blank lines,
    // which would not be gofmt-standard output.
    // It assumes that only whole blocks of lines are being appended,
    // not line fragments.
**/
private function _appendLines(_x:Slice<GoByte>, _y:Slice<GoByte>):Slice<GoByte> {
        if (((_y.length > (0 : GoInt)) && _isNL(_y[(0 : GoInt)])) && ((_x.length == (0 : GoInt)) || (((_x.length >= (2 : GoInt)) && _isNL(_x[((_x.length) - (1 : GoInt) : GoInt)])) && _isNL(_x[((_x.length) - (2 : GoInt) : GoInt)])))) {
            _y = (_y.__slice__((1 : GoInt)) : Slice<GoUInt8>);
        };
        return (_x.__append__(..._y.__toArray__()));
    }
private function _isNL(_b:GoByte):Bool {
        return (_b == (10 : GoUInt8)) || (_b == (12 : GoUInt8));
    }
/**
    // combinesWithName reports whether a name followed by the expression x
    // syntactically combines to another valid (value) expression. For instance
    // using *T for x, "name *T" syntactically appears as the expression x*T.
    // On the other hand, using  P|Q or *P|~Q for x, "name P|Q" or name *P|~Q"
    // cannot be combined into a valid (value) expression.
**/
private function _combinesWithName(_x:stdgo.go.ast.Ast.Expr):Bool {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.StarExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.StarExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__.__underlying__().value;
                return !_isTypeElem(_x.x);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BinaryExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                return _combinesWithName(_x.x) && !_isTypeElem(_x.y);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ParenExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.ParenExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                throw Go.toInterface(("unexpected parenthesized expression" : GoString));
            };
        };
        return false;
    }
/**
    // isTypeElem reports whether x is a (possibly parenthesized) type element expression.
    // The result is false if x could be a type element OR an ordinary (value) expression.
**/
private function _isTypeElem(_x:stdgo.go.ast.Ast.Expr):Bool {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ArrayType>)) || Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.StructType>)) || Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.FuncType>)) || Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.InterfaceType>)) || Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.MapType>)) || Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ChanType>))) {
                var _x:stdgo.go.ast.Ast.Expr = __type__ == null ? (null : stdgo.go.ast.Ast.Expr) : cast __type__;
                return true;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.UnaryExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.UnaryExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__.__underlying__().value;
                return _x.op == ((88 : stdgo.go.token.Token.Token));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BinaryExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                return _isTypeElem(_x.x) || _isTypeElem(_x.y);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ParenExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.ParenExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                return _isTypeElem(_x.x);
            };
        };
        return false;
    }
private function _identListSize(_list:Slice<Ref<stdgo.go.ast.Ast.Ident>>, _maxSize:GoInt):GoInt {
        var _size:GoInt = (0 : GoInt);
        for (_i => _x in _list) {
            if (_i > (0 : GoInt)) {
                _size = _size + (((", " : GoString).length));
            };
            _size = _size + (stdgo.unicode.utf8.Utf8.runeCountInString(_x.name));
            if (_size >= _maxSize) {
                break;
            };
        };
        return _size;
    }
private function _walkBinary(_e:Ref<stdgo.go.ast.Ast.BinaryExpr>):{ var _0 : Bool; var _1 : Bool; var _2 : GoInt; } {
        var _has4:Bool = false, _has5:Bool = false, _maxProblem:GoInt = (0 : GoInt);
        if (_e.op.precedence() == ((4 : GoInt))) {
            _has4 = true;
        } else if (_e.op.precedence() == ((5 : GoInt))) {
            _has5 = true;
        };
        {
            final __type__ = _e.x;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BinaryExpr>))) {
                        var _l:Ref<stdgo.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                        if (_l.op.precedence() < _e.op.precedence()) {
                            break;
                        };
                        var __tmp__ = _walkBinary(_l), _h4:Bool = __tmp__._0, _h5:Bool = __tmp__._1, _mp:GoInt = __tmp__._2;
                        _has4 = _has4 || _h4;
                        _has5 = _has5 || _h5;
                        if (_maxProblem < _mp) {
                            _maxProblem = _mp;
                        };
                    };
                    break;
                };
            };
        };
        {
            final __type__ = _e.y;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BinaryExpr>))) {
                var _r:Ref<stdgo.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                if (_r.op.precedence() <= _e.op.precedence()) {
                    break;
                };
                var __tmp__ = _walkBinary(_r), _h4:Bool = __tmp__._0, _h5:Bool = __tmp__._1, _mp:GoInt = __tmp__._2;
                _has4 = _has4 || _h4;
                _has5 = _has5 || _h5;
                if (_maxProblem < _mp) {
                    _maxProblem = _mp;
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.StarExpr>))) {
                var _r:Ref<stdgo.go.ast.Ast.StarExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__.__underlying__().value;
                if (_e.op == ((15 : stdgo.go.token.Token.Token))) {
                    _maxProblem = (5 : GoInt);
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.UnaryExpr>))) {
                var _r:Ref<stdgo.go.ast.Ast.UnaryExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__.__underlying__().value;
                if ((_e.op.string() : GoString) + (_r.op.string() : GoString) == (("/*" : GoString)) || (_e.op.string() : GoString) + (_r.op.string() : GoString) == (("&&" : GoString)) || (_e.op.string() : GoString) + (_r.op.string() : GoString) == (("&^" : GoString))) {
                    _maxProblem = (5 : GoInt);
                } else if ((_e.op.string() : GoString) + (_r.op.string() : GoString) == (("++" : GoString)) || (_e.op.string() : GoString) + (_r.op.string() : GoString) == (("--" : GoString))) {
                    if (_maxProblem < (4 : GoInt)) {
                        _maxProblem = (4 : GoInt);
                    };
                };
            };
        };
        return { _0 : _has4, _1 : _has5, _2 : _maxProblem };
    }
private function _cutoff(_e:Ref<stdgo.go.ast.Ast.BinaryExpr>, _depth:GoInt):GoInt {
        var __tmp__ = _walkBinary(_e), _has4:Bool = __tmp__._0, _has5:Bool = __tmp__._1, _maxProblem:GoInt = __tmp__._2;
        if (_maxProblem > (0 : GoInt)) {
            return _maxProblem + (1 : GoInt);
        };
        if (_has4 && _has5) {
            if (_depth == ((1 : GoInt))) {
                return (5 : GoInt);
            };
            return (4 : GoInt);
        };
        if (_depth == ((1 : GoInt))) {
            return (6 : GoInt);
        };
        return (4 : GoInt);
    }
private function _diffPrec(_expr:stdgo.go.ast.Ast.Expr, _prec:GoInt):GoInt {
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_expr) : Ref<stdgo.go.ast.Ast.BinaryExpr>)) : Ref<stdgo.go.ast.Ast.BinaryExpr>), ok : true };
        } catch(_) {
            { value : (null : Ref<stdgo.go.ast.Ast.BinaryExpr>), ok : false };
        }, _x = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok || (_prec != _x.op.precedence())) {
            return (1 : GoInt);
        };
        return (0 : GoInt);
    }
private function _reduceDepth(_depth:GoInt):GoInt {
        _depth--;
        if (_depth < (1 : GoInt)) {
            _depth = (1 : GoInt);
        };
        return _depth;
    }
private function _isBinary(_expr:stdgo.go.ast.Ast.Expr):Bool {
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_expr) : Ref<stdgo.go.ast.Ast.BinaryExpr>)) : Ref<stdgo.go.ast.Ast.BinaryExpr>), ok : true };
        } catch(_) {
            { value : (null : Ref<stdgo.go.ast.Ast.BinaryExpr>), ok : false };
        }, _0 = __tmp__.value, _ok = __tmp__.ok;
        return _ok;
    }
/**
    // normalizedNumber rewrites base prefixes and exponents
    // of numbers to use lower-case letters (0X123 to 0x123 and 1.2E3 to 1.2e3),
    // and removes leading 0's from integer imaginary literals (0765i to 765i).
    // It leaves hexadecimal digits alone.
    //
    // normalizedNumber doesn't modify the ast.BasicLit value lit points to.
    // If lit is not a number or a number in canonical format already,
    // lit is returned as is. Otherwise a new ast.BasicLit is created.
**/
private function _normalizedNumber(_lit:Ref<stdgo.go.ast.Ast.BasicLit>):Ref<stdgo.go.ast.Ast.BasicLit> {
        if (((_lit.kind != (5 : stdgo.go.token.Token.Token)) && (_lit.kind != (6 : stdgo.go.token.Token.Token))) && (_lit.kind != (7 : stdgo.go.token.Token.Token))) {
            return _lit;
        };
        if ((_lit.value.length) < (2 : GoInt)) {
            return _lit;
        };
        var _x:GoString = _lit.value;
        {
            var __switchIndex__ = -1;
            while (true) {
                if ((_x.__slice__(0, (2 : GoInt)) : GoString) == (("0X" : GoString))) {
                    _x = ("0x" : GoString) + (_x.__slice__((2 : GoInt)) : GoString);
                    {
                        var _i:GoInt = stdgo.strings.Strings.lastIndexByte(_x, (80 : GoUInt8));
                        if (_i >= (0 : GoInt)) {
                            _x = ((_x.__slice__(0, _i) : GoString) + ("p" : GoString)) + (_x.__slice__(_i + (1 : GoInt)) : GoString);
                        };
                    };
                    break;
                } else if ((_x.__slice__(0, (2 : GoInt)) : GoString) == (("0x" : GoString))) {
                    var _i:GoInt = stdgo.strings.Strings.lastIndexByte(_x, (80 : GoUInt8));
                    if (_i == ((-1 : GoInt))) {
                        return _lit;
                    };
                    _x = ((_x.__slice__(0, _i) : GoString) + ("p" : GoString)) + (_x.__slice__(_i + (1 : GoInt)) : GoString);
                    break;
                } else if ((_x.__slice__(0, (2 : GoInt)) : GoString) == (("0O" : GoString))) {
                    _x = ("0o" : GoString) + (_x.__slice__((2 : GoInt)) : GoString);
                    break;
                } else if ((_x.__slice__(0, (2 : GoInt)) : GoString) == (("0o" : GoString))) {
                    return _lit;
                    break;
                } else if ((_x.__slice__(0, (2 : GoInt)) : GoString) == (("0B" : GoString))) {
                    _x = ("0b" : GoString) + (_x.__slice__((2 : GoInt)) : GoString);
                    break;
                } else if ((_x.__slice__(0, (2 : GoInt)) : GoString) == (("0b" : GoString))) {
                    return _lit;
                    break;
                };
                break;
            };
        };
        return (({ valuePos : _lit.valuePos, kind : _lit.kind, value : _x } : stdgo.go.ast.Ast.BasicLit) : Ref<stdgo.go.ast.Ast.BasicLit>);
    }
private function _isTypeName(_x:stdgo.go.ast.Ast.Expr):Bool {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Ident>))) {
                var _t:Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                return true;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SelectorExpr>))) {
                var _t:Ref<stdgo.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                return _isTypeName(_t.x);
            };
        };
        return false;
    }
private function _stripParens(_x:stdgo.go.ast.Ast.Expr):stdgo.go.ast.Ast.Expr {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_x) : Ref<stdgo.go.ast.Ast.ParenExpr>)) : Ref<stdgo.go.ast.Ast.ParenExpr>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.ast.Ast.ParenExpr>), ok : false };
            }, _px = __tmp__.value, _strip = __tmp__.ok;
            if (_strip) {
                stdgo.go.ast.Ast.inspect(_px.x, function(_node:stdgo.go.ast.Ast.Node):Bool {
                    {
                        final __type__ = _node;
                        if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ParenExpr>))) {
                            var _x:Ref<stdgo.go.ast.Ast.ParenExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                            return false;
                        } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.CompositeLit>))) {
                            var _x:Ref<stdgo.go.ast.Ast.CompositeLit> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CompositeLit>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.CompositeLit>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CompositeLit>) : __type__.__underlying__().value;
                            if (_isTypeName(_x.type)) {
                                _strip = false;
                            };
                            return false;
                        };
                    };
                    return true;
                });
                if (_strip) {
                    return _stripParens(_px.x);
                };
            };
        };
        return _x;
    }
private function _stripParensAlways(_x:stdgo.go.ast.Ast.Expr):stdgo.go.ast.Ast.Expr {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_x) : Ref<stdgo.go.ast.Ast.ParenExpr>)) : Ref<stdgo.go.ast.Ast.ParenExpr>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.ast.Ast.ParenExpr>), ok : false };
            }, _x = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _stripParensAlways(_x.x);
            };
        };
        return _x;
    }
/**
    // The keepTypeColumn function determines if the type column of a series of
    // consecutive const or var declarations must be kept, or if initialization
    // values (V) can be placed in the type column (T) instead. The i'th entry
    // in the result slice is true if the type column in spec[i] must be kept.
    //
    // For example, the declaration:
    //
    //		const (
    //			foobar int = 42 // comment
    //			x          = 7  // comment
    //			foo
    //	             bar = 991
    //		)
    //
    // leads to the type/values matrix below. A run of value columns (V) can
    // be moved into the type column if there is no type for any of the values
    // in that column (we only move entire columns so that they align properly).
    //
    //		matrix        formatted     result
    //	                   matrix
    //		T  V    ->    T  V     ->   true      there is a T and so the type
    //		-  V          -  V          true      column must be kept
    //		-  -          -  -          false
    //		-  V          V  -          false     V is moved into T column
**/
private function _keepTypeColumn(_specs:Slice<stdgo.go.ast.Ast.Spec>):Slice<Bool> {
        var _m = new Slice<Bool>((_specs.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_specs.length : GoInt).toBasic()) false]);
        var _populate:(GoInt, GoInt, Bool) -> Void = function(_i:GoInt, _j:GoInt, _keepType:Bool):Void {
            if (_keepType) {
                Go.cfor(_i < _j, _i++, {
                    _m[(_i : GoInt)] = true;
                });
            };
        };
        var _i0:GoInt = (-1 : GoInt);
        var _keepType:Bool = false;
        for (_i => _s in _specs) {
            var _t = (Go.typeAssert((Go.toInterface(_s) : Ref<stdgo.go.ast.Ast.ValueSpec>)) : Ref<stdgo.go.ast.Ast.ValueSpec>);
            if (_t.values != null) {
                if (_i0 < (0 : GoInt)) {
                    _i0 = _i;
                    _keepType = false;
                };
            } else {
                if (_i0 >= (0 : GoInt)) {
                    _populate(_i0, _i, _keepType);
                    _i0 = (-1 : GoInt);
                };
            };
            if (_t.type != null) {
                _keepType = true;
            };
        };
        if (_i0 >= (0 : GoInt)) {
            _populate(_i0, (_specs.length), _keepType);
        };
        return _m;
    }
private function _sanitizeImportPath(_lit:Ref<stdgo.go.ast.Ast.BasicLit>):Ref<stdgo.go.ast.Ast.BasicLit> {
        if (_lit.kind != ((9 : stdgo.go.token.Token.Token))) {
            return _lit;
        };
        var __tmp__ = stdgo.strconv.Strconv.unquote(_lit.value), _s:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return _lit;
        };
        if (_s == (Go.str())) {
            return _lit;
        };
        {};
        for (_0 => _r in _s) {
            if ((!stdgo.unicode.Unicode.isGraphic(_r) || stdgo.unicode.Unicode.isSpace(_r)) || stdgo.strings.Strings.containsRune(("!\"#$$%&\'()*,:;<=>?[\\]^{|}`�" : GoString), _r)) {
                return _lit;
            };
        };
        _s = stdgo.strconv.Strconv.quote(_s);
        if (_s == (_lit.value)) {
            return _lit;
        };
        return (({ valuePos : _lit.valuePos, kind : (9 : stdgo.go.token.Token.Token), value : _s } : stdgo.go.ast.Ast.BasicLit) : Ref<stdgo.go.ast.Ast.BasicLit>);
    }
private function _declToken(_decl:stdgo.go.ast.Ast.Decl):stdgo.go.token.Token.Token {
        var _tok:stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
        _tok = (0 : stdgo.go.token.Token.Token);
        {
            final __type__ = _decl;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.GenDecl>))) {
                var _d:Ref<stdgo.go.ast.Ast.GenDecl> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                _tok = _d.tok;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.FuncDecl>))) {
                var _d:Ref<stdgo.go.ast.Ast.FuncDecl> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                _tok = (71 : stdgo.go.token.Token.Token);
            };
        };
        return _tok;
    }
private function _testprint(_out:stdgo.io.Io.Writer, _node:stdgo.go.ast.Ast.Node):Void {
        {
            var _err:Error = (((new Config((("1073741830" : GoUInt) : Mode), (8 : GoInt), (0 : GoInt)) : Config) : Ref<Config>)).fprint(_out, _fset, Go.toInterface(_node));
            if (_err != null) {
                stdgo.log.Log.fatalf(("print error: %s" : GoString), Go.toInterface(_err));
            };
        };
    }
/**
    // cannot initialize in init because (printer) Fprint launches goroutines.
**/
private function _initialize():Void {
        {};
        var __tmp__ = stdgo.os.Os.readFile(("testdata/parser.go" : GoString)), _src:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatalf(("%s" : GoString), Go.toInterface(_err));
        };
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("testdata/parser.go" : GoString), Go.toInterface(_src), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatalf(("%s" : GoString), Go.toInterface(_err));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _testprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface(_file));
        if (!stdgo.bytes.Bytes.equal(_buf.bytes(), _src)) {
            stdgo.log.Log.fatalf(("print error: %s not idempotent" : GoString), Go.toInterface(("testdata/parser.go" : GoString)));
        };
        _fileNode = _file;
        _fileSize = (_src.length : GoInt64);
        for (_0 => _decl in _file.decls) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_decl) : Ref<stdgo.go.ast.Ast.GenDecl>)) : Ref<stdgo.go.ast.Ast.GenDecl>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.GenDecl>), ok : false };
                }, _decl = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && (_decl.tok == (85 : stdgo.go.token.Token.Token))) {
                    _declNode = Go.asInterface(_decl);
                    _declSize = (_fset.position(_decl.end()).offset - _fset.position(_decl.pos()).offset : GoInt64);
                    break;
                };
            };
        };
    }
function benchmarkPrintFile(_b:Ref<stdgo.testing.Testing.B>):Void {
        if (_fileNode == null) {
            _initialize();
        };
        _b.reportAllocs();
        _b.setBytes(_fileSize);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _testprint(stdgo.io.Io.discard, Go.asInterface(_fileNode));
            });
        };
    }
function benchmarkPrintDecl(_b:Ref<stdgo.testing.Testing.B>):Void {
        if (_declNode == null) {
            _initialize();
        };
        _b.reportAllocs();
        _b.setBytes(_declSize);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _testprint(stdgo.io.Io.discard, _declNode);
            });
        };
    }
/**
    // Returns true if s contains only white space
    // (only tabs and blanks can appear in the printer's context).
**/
private function _isBlank(_s:GoString):Bool {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_s.length), _i++, {
                if (_s[(_i : GoInt)] > (32 : GoUInt8)) {
                    return false;
                };
            });
        };
        return true;
    }
/**
    // commonPrefix returns the common prefix of a and b.
**/
private function _commonPrefix(_a:GoString, _b:GoString):GoString {
        var _i:GoInt = (0 : GoInt);
        while ((((_i < _a.length) && (_i < _b.length)) && (_a[(_i : GoInt)] == _b[(_i : GoInt)])) && ((_a[(_i : GoInt)] <= (32 : GoUInt8)) || (_a[(_i : GoInt)] == (42 : GoUInt8)))) {
            _i++;
        };
        return (_a.__slice__((0 : GoInt), _i) : GoString);
    }
/**
    // trimRight returns s with trailing whitespace removed.
**/
private function _trimRight(_s:GoString):GoString {
        return stdgo.strings.Strings.trimRightFunc(_s, stdgo.unicode.Unicode.isSpace);
    }
/**
    // stripCommonPrefix removes a common prefix from /|*-style comment lines (unless no
    // comment line is indented, all but the first line have some form of space prefix).
    // The prefix is computed using heuristics such that is likely that the comment
    // contents are nicely laid out after re-printing each line using the printer's
    // current indentation.
**/
private function _stripCommonPrefix(_lines:Slice<GoString>):Void {
        if ((_lines.length) <= (1 : GoInt)) {
            return;
        };
        var _prefix:GoString = Go.str();
        var _prefixSet:Bool = false;
        if ((_lines.length) > (2 : GoInt)) {
            for (_i => _line in (_lines.__slice__((1 : GoInt), (_lines.length) - (1 : GoInt)) : Slice<GoString>)) {
                if (_isBlank(_line)) {
                    _lines[((1 : GoInt) + _i : GoInt)] = Go.str();
                } else {
                    if (!_prefixSet) {
                        _prefix = _line;
                        _prefixSet = true;
                    };
                    _prefix = _commonPrefix(_prefix, _line);
                };
            };
        };
        if (!_prefixSet) {
            var _line:GoString = _lines[((_lines.length) - (1 : GoInt) : GoInt)];
            _prefix = _commonPrefix(_line, _line);
        };
        var _lineOfStars:Bool = false;
        {
            var __tmp__ = stdgo.strings.Strings.cut(_prefix, ("*" : GoString)), _p:GoString = __tmp__._0, _0:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                _prefix = stdgo.strings.Strings.trimSuffix(_p, (" " : GoString));
                _lineOfStars = true;
            } else {
                var _first:GoString = _lines[(0 : GoInt)];
                if (_isBlank((_first.__slice__((2 : GoInt)) : GoString))) {
                    var _i:GoInt = (_prefix.length);
                    {
                        var _n:GoInt = (0 : GoInt);
                        Go.cfor(((_n < (3 : GoInt)) && (_i > (0 : GoInt))) && (_prefix[(_i - (1 : GoInt) : GoInt)] == (32 : GoUInt8)), _n++, {
                            _i--;
                        });
                    };
                    if (((_i == (_prefix.length)) && (_i > (0 : GoInt))) && (_prefix[(_i - (1 : GoInt) : GoInt)] == (9 : GoUInt8))) {
                        _i--;
                    };
                    _prefix = (_prefix.__slice__((0 : GoInt), _i) : GoString);
                } else {
                    var _suffix = new Slice<GoUInt8>((_first.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_first.length : GoInt).toBasic()) (0 : GoUInt8)]);
                    var _n:GoInt = (2 : GoInt);
                    while ((_n < _first.length) && (_first[(_n : GoInt)] <= (32 : GoUInt8))) {
                        _suffix[(_n : GoInt)] = _first[(_n : GoInt)];
                        _n++;
                    };
                    if ((_n > (2 : GoInt)) && (_suffix[(2 : GoInt)] == (9 : GoUInt8))) {
                        _suffix = (_suffix.__slice__((2 : GoInt), _n) : Slice<GoUInt8>);
                    } else {
                        {
                            final __tmp__0 = (32 : GoUInt8);
                            final __tmp__1 = (32 : GoUInt8);
                            _suffix[(0 : GoInt)] = __tmp__0;
                            _suffix[(1 : GoInt)] = __tmp__1;
                        };
                        _suffix = (_suffix.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
                    };
                    _prefix = stdgo.strings.Strings.trimSuffix(_prefix, (_suffix : GoString));
                };
            };
        };
        var _last:GoString = _lines[((_lines.length) - (1 : GoInt) : GoInt)];
        var _closing:GoString = ("*/" : GoString);
        var __tmp__ = stdgo.strings.Strings.cut(_last, _closing), _before:GoString = __tmp__._0, _1:GoString = __tmp__._1, _2:Bool = __tmp__._2;
        if (_isBlank(_before)) {
            if (_lineOfStars) {
                _closing = (" */" : GoString);
            };
            _lines[((_lines.length) - (1 : GoInt) : GoInt)] = _prefix + _closing;
        } else {
            _prefix = _commonPrefix(_prefix, _last);
        };
        for (_i => _line in _lines) {
            if ((_i > (0 : GoInt)) && (_line != Go.str())) {
                _lines[(_i : GoInt)] = (_line.__slice__((_prefix.length)) : GoString);
            };
        };
    }
/**
    // nlimit limits n to maxNewlines.
**/
private function _nlimit(_n:GoInt):GoInt {
        if (_n > (2 : GoInt)) {
            _n = (2 : GoInt);
        };
        return _n;
    }
private function _mayCombine(_prev:stdgo.go.token.Token.Token, _next:GoByte):Bool {
        var _b:Bool = false;
        if (_prev == ((5 : stdgo.go.token.Token.Token))) {
            _b = _next == ((46 : GoUInt8));
        } else if (_prev == ((12 : stdgo.go.token.Token.Token))) {
            _b = _next == ((43 : GoUInt8));
        } else if (_prev == ((13 : stdgo.go.token.Token.Token))) {
            _b = _next == ((45 : GoUInt8));
        } else if (_prev == ((15 : stdgo.go.token.Token.Token))) {
            _b = _next == ((42 : GoUInt8));
        } else if (_prev == ((40 : stdgo.go.token.Token.Token))) {
            _b = (_next == (45 : GoUInt8)) || (_next == (60 : GoUInt8));
        } else if (_prev == ((17 : stdgo.go.token.Token.Token))) {
            _b = (_next == (38 : GoUInt8)) || (_next == (94 : GoUInt8));
        };
        return _b;
    }
/**
    // getDoc returns the ast.CommentGroup associated with n, if any.
**/
private function _getDoc(_n:stdgo.go.ast.Ast.Node):Ref<stdgo.go.ast.Ast.CommentGroup> {
        {
            final __type__ = _n;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Field>))) {
                var _n:Ref<stdgo.go.ast.Ast.Field> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ImportSpec>))) {
                var _n:Ref<stdgo.go.ast.Ast.ImportSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ValueSpec>))) {
                var _n:Ref<stdgo.go.ast.Ast.ValueSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.TypeSpec>))) {
                var _n:Ref<stdgo.go.ast.Ast.TypeSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.GenDecl>))) {
                var _n:Ref<stdgo.go.ast.Ast.GenDecl> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.FuncDecl>))) {
                var _n:Ref<stdgo.go.ast.Ast.FuncDecl> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.File>))) {
                var _n:Ref<stdgo.go.ast.Ast.File> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__.__underlying__().value;
                return _n.doc;
            };
        };
        return null;
    }
private function _getLastComment(_n:stdgo.go.ast.Ast.Node):Ref<stdgo.go.ast.Ast.CommentGroup> {
        {
            final __type__ = _n;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Field>))) {
                var _n:Ref<stdgo.go.ast.Ast.Field> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Field>) : __type__.__underlying__().value;
                return _n.comment;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ImportSpec>))) {
                var _n:Ref<stdgo.go.ast.Ast.ImportSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                return _n.comment;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ValueSpec>))) {
                var _n:Ref<stdgo.go.ast.Ast.ValueSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                return _n.comment;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.TypeSpec>))) {
                var _n:Ref<stdgo.go.ast.Ast.TypeSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                return _n.comment;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.GenDecl>))) {
                var _n:Ref<stdgo.go.ast.Ast.GenDecl> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                if ((_n.specs.length) > (0 : GoInt)) {
                    return _getLastComment(_n.specs[((_n.specs.length) - (1 : GoInt) : GoInt)]);
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.File>))) {
                var _n:Ref<stdgo.go.ast.Ast.File> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__.__underlying__().value;
                if ((_n.comments.length) > (0 : GoInt)) {
                    return _n.comments[((_n.comments.length) - (1 : GoInt) : GoInt)];
                };
            };
        };
        return null;
    }
private function _newPrinter(_cfg:Ref<Config>, _fset:Ref<stdgo.go.token.Token.FileSet>, _nodeSizes:GoMap<stdgo.go.ast.Ast.Node, GoInt>):Ref<T_printer> {
        var _p = (Go.typeAssert((_printerPool.get() : Ref<T_printer>)) : Ref<T_printer>);
        {
            var __tmp__ = ({ config : (_cfg == null ? null : _cfg.__copy__()), _fset : _fset, _output : (_p._output.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), _wsbuf : (_p._wsbuf.__slice__(0, (0 : GoInt)) : Slice<T_whiteSpace>), _pos : ({ line : (1 : GoInt), column : (1 : GoInt) } : stdgo.go.token.Token.Position), _out : ({ line : (1 : GoInt), column : (1 : GoInt) } : stdgo.go.token.Token.Position), _nodeSizes : _nodeSizes, _cachedPos : (-1 : stdgo.go.token.Token.Pos) } : T_printer);
            _p.config = __tmp__.config;
            _p._fset = __tmp__._fset;
            _p._output = __tmp__._output;
            _p._indent = __tmp__._indent;
            _p._level = __tmp__._level;
            _p._mode = __tmp__._mode;
            _p._endAlignment = __tmp__._endAlignment;
            _p._impliedSemi = __tmp__._impliedSemi;
            _p._lastTok = __tmp__._lastTok;
            _p._prevOpen = __tmp__._prevOpen;
            _p._wsbuf = __tmp__._wsbuf;
            _p._goBuild = __tmp__._goBuild;
            _p._plusBuild = __tmp__._plusBuild;
            _p._pos = __tmp__._pos;
            _p._out = __tmp__._out;
            _p._last = __tmp__._last;
            _p._linePtr = __tmp__._linePtr;
            _p._comments = __tmp__._comments;
            _p._useNodeComments = __tmp__._useNodeComments;
            _p._commentInfo = __tmp__._commentInfo;
            _p._nodeSizes = __tmp__._nodeSizes;
            _p._cachedPos = __tmp__._cachedPos;
            _p._cachedLine = __tmp__._cachedLine;
        };
        return _p;
    }
/**
    // Fprint "pretty-prints" an AST node to output.
    // It calls Config.Fprint with default settings.
    // Note that gofmt uses tabs for indentation but spaces for alignment;
    // use format.Node (package go/format) for output that matches gofmt.
**/
function fprint(_output:stdgo.io.Io.Writer, _fset:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface):Error {
        return ((({ tabwidth : (8 : GoInt) } : Config) : Ref<Config>)).fprint(_output, _fset, _node);
    }
/**
    // format parses src, prints the corresponding AST, verifies the resulting
    // src is syntactically correct, and returns the resulting src or an error
    // if any.
**/
private function _format(_src:Slice<GoByte>, _mode:T_checkMode):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_src), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : Slice<GoUInt8>), _1 : stdgo.fmt.Fmt.errorf(("parse: %s\n%s" : GoString), Go.toInterface(_err), Go.toInterface(_src)) };
        };
        if (_mode & (("1" : GoUInt) : T_checkMode) != ((("0" : GoUInt) : T_checkMode))) {
            stdgo.go.ast.Ast.fileExports(_f);
            _f.comments = (null : Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>);
        };
        var _cfg:Config = ({ tabwidth : (8 : GoInt) } : Config);
        if (_mode & (("2" : GoUInt) : T_checkMode) != ((("0" : GoUInt) : T_checkMode))) {
            _cfg.mode = _cfg.mode | ((("1" : GoUInt) : Mode));
        };
        if (_mode & (("4" : GoUInt) : T_checkMode) != ((("0" : GoUInt) : T_checkMode))) {
            _cfg.mode = _cfg.mode | ((("1073741824" : GoUInt) : Mode));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _err:Error = _cfg.fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f)));
            if (_err != null) {
                return { _0 : (null : Slice<GoUInt8>), _1 : stdgo.fmt.Fmt.errorf(("print: %s" : GoString), Go.toInterface(_err)) };
            };
        };
        var _res = _buf.bytes();
        {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_res), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _0:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<GoUInt8>), _1 : stdgo.fmt.Fmt.errorf(("re-parse: %s\n%s" : GoString), Go.toInterface(_err), Go.toInterface(_buf.bytes())) };
            };
        };
        return { _0 : _res, _1 : (null : Error) };
    }
/**
    // lineAt returns the line in text starting at offset offs.
**/
private function _lineAt(_text:Slice<GoByte>, _offs:GoInt):Slice<GoByte> {
        var _i:GoInt = _offs;
        while ((_i < _text.length) && (_text[(_i : GoInt)] != (10 : GoUInt8))) {
            _i++;
        };
        return (_text.__slice__(_offs, _i) : Slice<GoUInt8>);
    }
/**
    // checkEqual compares a and b.
**/
private function _checkEqual(_aname:GoString, _bname:GoString, _a:Slice<GoByte>, _b:Slice<GoByte>):Error {
        if (stdgo.bytes.Bytes.equal(_a, _b)) {
            return (null : Error);
        };
        return stdgo.errors.Errors.new_((internal.diff.Diff.diff(_aname, _a, _bname, _b) : GoString));
    }
private function _runcheck(_t:Ref<stdgo.testing.Testing.T>, _source:GoString, _golden:GoString, _mode:T_checkMode):Void {
        var __tmp__ = stdgo.os.Os.readFile(_source), _src:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
            return;
        };
        var __tmp__ = _format(_src, _mode), _res:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
            return;
        };
        if (_update.value) {
            {
                var _err:Error = stdgo.os.Os.writeFile(_golden, _res, (("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
            };
            return;
        };
        var __tmp__ = stdgo.os.Os.readFile(_golden), _gld:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
            return;
        };
        {
            var _err:Error = _checkEqual(_source, _golden, _res, _gld);
            if (_err != null) {
                _t.error(Go.toInterface(_err));
                return;
            };
        };
        if (_mode & (("8" : GoUInt) : T_checkMode) != ((("0" : GoUInt) : T_checkMode))) {
            {
                var __tmp__ = _format(_gld, _mode);
                _res = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.error(Go.toInterface(_err));
                return;
            };
            {
                var _err:Error = _checkEqual(_golden, stdgo.fmt.Fmt.sprintf(("format(%s)" : GoString), Go.toInterface(_golden)), _gld, _res);
                if (_err != null) {
                    _t.errorf(("golden is not idempotent: %s" : GoString), Go.toInterface(_err));
                };
            };
        };
    }
private function _check(_t:Ref<stdgo.testing.Testing.T>, _source:GoString, _golden:GoString, _mode:T_checkMode):Void {
        var _cc = new Chan<GoInt>((1 : GoInt).toBasic(), () -> (0 : GoInt));
        Go.routine(() -> {
            var a = function():Void {
                _runcheck(_t, _source, _golden, _mode);
                _cc.__send__((0 : GoInt));
            };
            a();
        });
        Go.select([_cc.__get__() => {}, stdgo.time.Time.after((("10000000000" : GoInt64) : stdgo.time.Time.Duration)).__get__() => {
            _t.errorf(("%s: running too slowly" : GoString), Go.toInterface(_source));
        }]);
    }
function testFiles(_t:Ref<stdgo.testing.Testing.T>):Void {
        _t.parallel();
        for (_0 => _e in _data) {
            var _source:GoString = stdgo.path.filepath.Filepath.join(("testdata" : GoString), _e._source);
            var _golden:GoString = stdgo.path.filepath.Filepath.join(("testdata" : GoString), _e._golden);
            var _mode:T_checkMode = _e._mode;
            _t.run(_e._source, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                _t.parallel();
                _check(_t, _source, _golden, _mode);
            });
        };
    }
/**
    // TestLineComments, using a simple test case, checks that consecutive line
    // comments are properly terminated with a newline even if the AST position
    // information is incorrect.
**/
function testLineComments(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("// comment 1\n\t// comment 2\n\t// comment 3\n\tpackage main\n\t" : GoString)), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _fset = stdgo.go.token.Token.newFileSet();
        fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f)));
        var _nlines:GoInt = (0 : GoInt);
        for (_0 => _ch in _buf.bytes()) {
            if (_ch == ((10 : GoUInt8))) {
                _nlines++;
            };
        };
        {};
        if (_nlines < (3 : GoInt)) {
            _t.errorf(("got %d, expected %d\n" : GoString), Go.toInterface(_nlines), Go.toInterface((3 : GoInt)));
            _t.errorf(("result:\n%s" : GoString), Go.toInterface(_buf.bytes()));
        };
    }
/**
    // Verify that the printer doesn't crash if the AST contains BadXXX nodes.
**/
function testBadNodes(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("package p\n(" : GoString)), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err == null) {
            _t.error(Go.toInterface(("expected illegal program" : GoString)));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f)));
        if ((_buf.string() : GoString) != (("package p\nBadDecl\n" : GoString))) {
            _t.errorf(("got %q, expected %q" : GoString), Go.toInterface((_buf.string() : GoString)), Go.toInterface(("package p\nBadDecl\n" : GoString)));
        };
    }
/**
    // testComment verifies that f can be parsed again after printing it
    // with its first comment set to comment at any possible source offset.
**/
private function _testComment(_t:Ref<stdgo.testing.Testing.T>, _f:Ref<stdgo.go.ast.Ast.File>, _srclen:GoInt, _comment:Ref<stdgo.go.ast.Ast.Comment>):Void {
        _f.comments[(0 : GoInt)].list[(0 : GoInt)] = _comment;
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _offs:GoInt = (0 : GoInt);
            Go.cfor(_offs <= _srclen, _offs++, {
                _buf.reset();
                {
                    var _err:Error = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f)));
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
                {
                    var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_buf.bytes()), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)), _0:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("incorrect program for pos = %d:\n%s" : GoString), Go.toInterface(Go.asInterface(_comment.slash)), Go.toInterface((_buf.string() : GoString)));
                    };
                };
                _comment.slash++;
            });
        };
    }
/**
    // Verify that the printer produces a correct program
    // even if the position information of comments introducing newlines
    // is incorrect.
**/
function testBadComments(_t:Ref<stdgo.testing.Testing.T>):Void {
        _t.parallel();
        {};
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : GoString)), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
        };
        var _comment = _f.comments[(0 : GoInt)].list[(0 : GoInt)];
        var _pos:stdgo.go.token.Token.Pos = _comment.pos();
        if (_fset.positionFor(_pos, false).offset != ((1 : GoInt))) {
            _t.error(Go.toInterface(("expected offset 1" : GoString)));
        };
        _testComment(_t, _f, (("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : GoString).length), (({ slash : _pos, text : ("//-style comment" : GoString) } : stdgo.go.ast.Ast.Comment) : Ref<stdgo.go.ast.Ast.Comment>));
        _testComment(_t, _f, (("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : GoString).length), (({ slash : _pos, text : ("/*-style comment */" : GoString) } : stdgo.go.ast.Ast.Comment) : Ref<stdgo.go.ast.Ast.Comment>));
        _testComment(_t, _f, (("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : GoString).length), (({ slash : _pos, text : ("/*-style \n comment */" : GoString) } : stdgo.go.ast.Ast.Comment) : Ref<stdgo.go.ast.Ast.Comment>));
        _testComment(_t, _f, (("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : GoString).length), (({ slash : _pos, text : ("/*-style comment \n\n\n */" : GoString) } : stdgo.go.ast.Ast.Comment) : Ref<stdgo.go.ast.Ast.Comment>));
    }
/**
    // idents is an iterator that returns all idents in f via the result channel.
**/
private function _idents(_f:Ref<stdgo.go.ast.Ast.File>):Chan<Ref<stdgo.go.ast.Ast.Ident>> {
        var _v:T_visitor = new T_visitor(0, () -> (null : Ref<stdgo.go.ast.Ast.Ident>));
        Go.routine(() -> {
            var a = function():Void {
                stdgo.go.ast.Ast.walk(Go.asInterface(_v), Go.asInterface(_f));
                if (_v != null) _v.__close__();
            };
            a();
        });
        return _v;
    }
/**
    // identCount returns the number of identifiers found in f.
**/
private function _identCount(_f:Ref<stdgo.go.ast.Ast.File>):GoInt {
        var _n:GoInt = (0 : GoInt);
        for (_ => _ in _idents(_f)) {
            _n++;
        };
        return _n;
    }
/**
    // Verify that the SourcePos mode emits correct //line directives
    // by testing that position information for matching identifiers
    // is maintained.
**/
function testSourcePos(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("src" : GoString), Go.toInterface(("\npackage p\nimport ( \"go/printer\"; \"math\" )\nconst pi = 3.14; var x = 0\ntype t struct{ x, y, z int; u, v, w float32 }\nfunc (t *t) foo(a, b, c int) int {\n\treturn a*t.x + b*t.y +\n\t\t// two extra lines here\n\t\t// ...\n\t\tc*t.z\n}\n" : GoString)), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f1:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _err = ((({ mode : (("12" : GoUInt) : Mode), tabwidth : (8 : GoInt) } : Config) : Ref<Config>)).fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f1)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_buf.bytes()), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f2:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("%s\n%s" : GoString), Go.toInterface(_err), Go.toInterface(_buf.bytes()));
        };
        var _n1:GoInt = _identCount(_f1);
        var _n2:GoInt = _identCount(_f2);
        if (_n1 == ((0 : GoInt))) {
            _t.fatal(Go.toInterface(("got no idents" : GoString)));
        };
        if (_n2 != (_n1)) {
            _t.errorf(("got %d idents; want %d" : GoString), Go.toInterface(_n2), Go.toInterface(_n1));
        };
        var _i2range = _idents(_f2);
        for (_i1 => _ in _idents(_f1)) {
            var _i2 = _i2range.__get__();
            if (_i2.name != (_i1.name)) {
                _t.errorf(("got ident %s; want %s" : GoString), Go.toInterface(_i2.name), Go.toInterface(_i1.name));
            };
            var _l1:GoInt = _fset.position(_i1.pos()).line;
            var _l2:GoInt = _fset.position(_i2.pos()).line;
            if (_l2 != (_l1)) {
                _t.errorf(("got line %d; want %d for %s" : GoString), Go.toInterface(_l2), Go.toInterface(_l1), Go.toInterface(_i1.name));
            };
        };
        if (_t.failed()) {
            _t.logf(("\n%s" : GoString), Go.toInterface(_buf.bytes()));
        };
    }
/**
    // Verify that the SourcePos mode doesn't emit unnecessary //line directives
    // before empty lines.
**/
function testIssue5945(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("src.go" : GoString), Go.toInterface(("\npackage p   // line 2\nfunc f() {} // line 3\n\nvar x, y, z int\n\n\nfunc g() { // line 8\n}\n" : GoString)), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f1:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _err = ((({ mode : (("12" : GoUInt) : Mode), tabwidth : (8 : GoInt) } : Config) : Ref<Config>)).fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f1)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _got:GoString = (_buf.string() : GoString);
        if (_got != (("//line src.go:2\npackage p\n\n//line src.go:3\nfunc f() {}\n\nvar x, y, z int\n\n//line src.go:8\nfunc g() {\n}\n" : GoString))) {
            _t.errorf(("got:\n%s\nwant:\n%s\n" : GoString), Go.toInterface(_got), Go.toInterface(("//line src.go:2\npackage p\n\n//line src.go:3\nfunc f() {}\n\nvar x, y, z int\n\n//line src.go:8\nfunc g() {\n}\n" : GoString)));
        };
    }
function testDeclLists(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _src in _decls) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("package p;" : GoString) + _src), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err);
            };
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            _err = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(_file.decls));
            if (_err != null) {
                throw Go.toInterface(_err);
            };
            var _out:GoString = (_buf.string() : GoString);
            if (_out != (_src)) {
                _t.errorf(("\ngot : %q\nwant: %q\n" : GoString), Go.toInterface(_out), Go.toInterface(_src));
            };
        };
    }
function testStmtLists(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _src in _stmts) {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface((("package p; func _() {" : GoString) + _src) + ("}" : GoString)), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err);
            };
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            _err = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface((Go.typeAssert((Go.toInterface(_file.decls[(0 : GoInt)]) : Ref<stdgo.go.ast.Ast.FuncDecl>)) : Ref<stdgo.go.ast.Ast.FuncDecl>).body.list));
            if (_err != null) {
                throw Go.toInterface(_err);
            };
            var _out:GoString = (_buf.string() : GoString);
            if (_out != (_src)) {
                _t.errorf(("\ngot : %q\nwant: %q\n" : GoString), Go.toInterface(_out), Go.toInterface(_src));
            };
        };
    }
function testBaseIndent(_t:Ref<stdgo.testing.Testing.T>):Void {
        _t.parallel();
        {};
        var __tmp__ = stdgo.os.Os.readFile(("printer.go" : GoString)), _src:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("printer.go" : GoString), Go.toInterface(_src), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        {
            var _indent:GoInt = (0 : GoInt);
            Go.cfor(_indent < (4 : GoInt), _indent++, {
                var _indent:GoInt = _indent;
                _t.run(stdgo.fmt.Fmt.sprint(Go.toInterface(_indent)), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                    _t.parallel();
                    var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                    ((({ tabwidth : (8 : GoInt), indent : _indent } : Config) : Ref<Config>)).fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_file)));
                    var _lines = stdgo.bytes.Bytes.split(_buf.bytes(), (new Slice<GoUInt8>(0, 0, (10 : GoUInt8)) : Slice<GoUInt8>));
                    for (_i => _line in _lines) {
                        if ((_line.length) == ((0 : GoInt))) {
                            continue;
                        };
                        var _n:GoInt = (0 : GoInt);
                        for (_j => _b in _line) {
                            if (_b != ((9 : GoUInt8))) {
                                _n = _j;
                                break;
                            };
                        };
                        if (_n < _indent) {
                            _t.errorf(("line %d: got only %d tabs; want at least %d: %q" : GoString), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface(_indent), Go.toInterface(_line));
                        };
                    };
                });
            });
        };
    }
/**
    // TestFuncType tests that an ast.FuncType with a nil Params field
    // can be printed (per go/ast specification). Test case for issue 3870.
**/
function testFuncType(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src = (({ name : (({ name : ("p" : GoString) } : stdgo.go.ast.Ast.Ident) : Ref<stdgo.go.ast.Ast.Ident>), decls : (new Slice<stdgo.go.ast.Ast.Decl>(0, 0, Go.asInterface((({ name : (({ name : ("f" : GoString) } : stdgo.go.ast.Ast.Ident) : Ref<stdgo.go.ast.Ast.Ident>), type : ((new stdgo.go.ast.Ast.FuncType() : stdgo.go.ast.Ast.FuncType) : Ref<stdgo.go.ast.Ast.FuncType>) } : stdgo.go.ast.Ast.FuncDecl) : Ref<stdgo.go.ast.Ast.FuncDecl>))) : Slice<stdgo.go.ast.Ast.Decl>) } : stdgo.go.ast.Ast.File) : Ref<stdgo.go.ast.Ast.File>);
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _err:Error = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_src)));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _got:GoString = (_buf.string() : GoString);
        {};
        if (_got != (("package p\n\nfunc f()\n" : GoString))) {
            _t.fatalf(("got:\n%s\nwant:\n%s\n" : GoString), Go.toInterface(_got), Go.toInterface(("package p\n\nfunc f()\n" : GoString)));
        };
    }
/**
    // Test whether the printer stops writing after the first error
**/
function testWriteErrors(_t:Ref<stdgo.testing.Testing.T>):Void {
        _t.parallel();
        {};
        var __tmp__ = stdgo.os.Os.readFile(("printer.go" : GoString)), _src:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("printer.go" : GoString), Go.toInterface(_src), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (20 : GoInt), _i++, {
                var _lw = (({ _remaining : _i } : T_limitWriter) : Ref<T_limitWriter>);
                var _err:Error = ((({ mode : (("1" : GoUInt) : Mode) } : Config) : Ref<Config>)).fprint(Go.asInterface(_lw), _fset, Go.toInterface(Go.asInterface(_file)));
                if (_lw._errCount > (1 : GoInt)) {
                    _t.fatal(Go.toInterface(("Writes continued after first error returned" : GoString)));
                };
                if ((_lw._errCount != (0 : GoInt)) != ((_err != null))) {
                    _t.fatal(Go.toInterface(("Expected err when errCount != 0" : GoString)));
                };
            });
        };
    }
/**
    // TextX is a skeleton test that can be filled in for debugging one-off cases.
    // Do not remove.
**/
function testX(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var __tmp__ = _format((("\npackage p\nfunc _() {}\n" : GoString) : Slice<GoByte>), (("0" : GoUInt) : T_checkMode)), _0:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
        };
    }
function testCommentedNode(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("input.go" : GoString), Go.toInterface(("package main\n\nfunc foo() {\n\t// comment inside func\n}\n\n// leading comment\ntype bar int // comment2\n\n" : GoString)), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _err = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface((({ node : Go.toInterface(_f.decls[(0 : GoInt)]), comments : _f.comments } : CommentedNode) : Ref<CommentedNode>)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if ((_buf.string() : GoString) != (("func foo() {\n\t// comment inside func\n}" : GoString))) {
            _t.errorf(("got %q, want %q" : GoString), Go.toInterface((_buf.string() : GoString)), Go.toInterface(("func foo() {\n\t// comment inside func\n}" : GoString)));
        };
        _buf.reset();
        _err = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface((({ node : Go.toInterface(_f.decls[(1 : GoInt)]), comments : _f.comments } : CommentedNode) : Ref<CommentedNode>)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if ((_buf.string() : GoString) != (("// leading comment\ntype bar int\t// comment2\n" : GoString))) {
            _t.errorf(("got %q, want %q" : GoString), Go.toInterface((_buf.string() : GoString)), Go.toInterface(("// leading comment\ntype bar int\t// comment2\n" : GoString)));
        };
    }
function testIssue11151(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("package p\t/*\r/1\r*\r/2*\r\r\r\r/3*\r\r+\r\r/4*/\n" : GoString)), (("4" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f)));
        var _got:GoString = (_buf.string() : GoString);
        {};
        if (_got != (("package p\t/*/1*\r/2*\r/3*+/4*/\n" : GoString))) {
            _t.errorf(("\ngot : %q\nwant: %q" : GoString), Go.toInterface(_got), Go.toInterface(("package p\t/*/1*\r/2*\r/3*+/4*/\n" : GoString)));
        };
        {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_got), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("%v\norig: %q\ngot : %q" : GoString), Go.toInterface(_err), Go.toInterface(("package p\t/*\r/1\r*\r/2*\r\r\r\r/3*\r\r+\r\r/4*/\n" : GoString)), Go.toInterface(_got));
        };
    }
/**
    // If a declaration has multiple specifications, a parenthesized
    // declaration must be printed even if Lparen is token.NoPos.
**/
function testParenthesizedDecl(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("package p; var ( a float64; b int )" : GoString)), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _err = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _original:GoString = (_buf.string() : GoString);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i != ((_f.decls.length)), _i++, {
                (Go.typeAssert((Go.toInterface(_f.decls[(_i : GoInt)]) : Ref<stdgo.go.ast.Ast.GenDecl>)) : Ref<stdgo.go.ast.Ast.GenDecl>).lparen = (0 : stdgo.go.token.Token.Pos);
            });
        };
        _buf.reset();
        _err = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_f)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _noparen:GoString = (_buf.string() : GoString);
        if (_noparen != (_original)) {
            _t.errorf(("got %q, want %q" : GoString), Go.toInterface(_noparen), Go.toInterface(_original));
        };
    }
/**
    // Verify that we don't print a newline between "return" and its results, as
    // that would incorrectly cause a naked return.
**/
function testIssue32854(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src:GoString = ("package foo\n\nfunc f() {\n        return Composite{\n                call(),\n        }\n}" : GoString);
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_src), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _fd = (Go.typeAssert((Go.toInterface(_file.decls[(0 : GoInt)]) : Ref<stdgo.go.ast.Ast.FuncDecl>)) : Ref<stdgo.go.ast.Ast.FuncDecl>);
        var _ret = (Go.typeAssert((Go.toInterface(_fd.body.list[(0 : GoInt)]) : Ref<stdgo.go.ast.Ast.ReturnStmt>)) : Ref<stdgo.go.ast.Ast.ReturnStmt>);
        _ret.results[(0 : GoInt)] = (Go.typeAssert((Go.toInterface(_ret.results[(0 : GoInt)]) : Ref<stdgo.go.ast.Ast.CompositeLit>)) : Ref<stdgo.go.ast.Ast.CompositeLit>).elts[(0 : GoInt)];
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _err:Error = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_ret)));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _want:GoString = ("return call()" : GoString);
        {
            var _got:GoString = (_buf.string() : GoString);
            if (_got != (_want)) {
                _t.fatalf(("got %q, want %q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
@:keep var _ = {
        try {
            {};
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            {
                var _err:Error = fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface((({ name : ("foobar" : GoString) } : stdgo.go.ast.Ast.Ident) : Ref<stdgo.go.ast.Ast.Ident>))));
                if (_err != null) {
                    throw Go.toInterface(_err);
                };
            };
            {
                var _s:GoString = (_buf.string() : GoString);
                if (true && (_s != ("foobar" : GoString))) {
                    throw Go.toInterface(((("got " : GoString) + _s) + (", want " : GoString)) + ("foobar" : GoString));
                };
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_sizeCounter_asInterface {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_sizeCounter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.printer.Printer.T_sizeCounter_asInterface) class T_sizeCounter_static_extension {
    @:keep
    static public function write( _c:Ref<T_sizeCounter>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (!_c._hasNewline) {
            for (_0 => _b in _p) {
                if ((_b == (10 : GoUInt8)) || (_b == (12 : GoUInt8))) {
                    _c._hasNewline = true;
                    break;
                };
            };
        };
        _c._size = _c._size + ((_p.length));
        return { _0 : (_p.length), _1 : (null : Error) };
    }
}
class T_printer_asInterface {
    @:keep
    public function _free():Void __self__.value._free();
    @:keep
    public function _printNode(_node:AnyInterface):Error return __self__.value._printNode(_node);
    /**
        // flush prints any pending comments and whitespace occurring textually
        // before the position of the next token tok. The flush result indicates
        // if a newline was written or if a formfeed was dropped from the whitespace
        // buffer.
    **/
    @:keep
    public function _flush(_next:stdgo.go.token.Token.Position, _tok:stdgo.go.token.Token.Token):{ var _0 : Bool; var _1 : Bool; } return __self__.value._flush(_next, _tok);
    /**
        // print prints a list of "items" (roughly corresponding to syntactic
        // tokens, but also including whitespace and formatting information).
        // It is the only print function that should be called directly from
        // any of the AST printing functions in nodes.go.
        //
        // Whitespace is accumulated until a non-whitespace token appears. Any
        // comments that need to appear before that token are printed first,
        // taking into account the amount and structure of any pending white-
        // space for best comment placement. Then, any leftover whitespace is
        // printed, followed by the actual token.
    **/
    @:keep
    public function _print(_args:haxe.Rest<AnyInterface>):Void __self__.value._print(..._args);
    @:keep
    public function _setPos(_pos:stdgo.go.token.Token.Pos):Void __self__.value._setPos(_pos);
    /**
        // whiteWhitespace writes the first n whitespace entries.
    **/
    @:keep
    public function _writeWhitespace(_n:GoInt):Void __self__.value._writeWhitespace(_n);
    /**
        // intersperseComments consumes all comments that appear before the next token
        // tok and prints it together with the buffered whitespace (i.e., the whitespace
        // that needs to be written before the next token). A heuristic is used to mix
        // the comments and whitespace. The intersperseComments result indicates if a
        // newline was written or if a formfeed was dropped from the whitespace buffer.
    **/
    @:keep
    public function _intersperseComments(_next:stdgo.go.token.Token.Position, _tok:stdgo.go.token.Token.Token):{ var _0 : Bool; var _1 : Bool; } return __self__.value._intersperseComments(_next, _tok);
    /**
        // containsLinebreak reports whether the whitespace buffer contains any line breaks.
    **/
    @:keep
    public function _containsLinebreak():Bool return __self__.value._containsLinebreak();
    /**
        // writeCommentSuffix writes a line break after a comment if indicated
        // and processes any leftover indentation information. If a line break
        // is needed, the kind of break (newline vs formfeed) depends on the
        // pending whitespace. The writeCommentSuffix result indicates if a
        // newline was written or if a formfeed was dropped from the whitespace
        // buffer.
    **/
    @:keep
    public function _writeCommentSuffix(_needsLinebreak:Bool):{ var _0 : Bool; var _1 : Bool; } return __self__.value._writeCommentSuffix(_needsLinebreak);
    @:keep
    public function _writeComment(_comment:Ref<stdgo.go.ast.Ast.Comment>):Void __self__.value._writeComment(_comment);
    /**
        // writeCommentPrefix writes the whitespace before a comment.
        // If there is any pending whitespace, it consumes as much of
        // it as is likely to help position the comment nicely.
        // pos is the comment position, next the position of the item
        // after all pending comments, prev is the previous comment in
        // a group of comments (or nil), and tok is the next token.
    **/
    @:keep
    public function _writeCommentPrefix(_pos:stdgo.go.token.Token.Position, _next:stdgo.go.token.Token.Position, _prev:Ref<stdgo.go.ast.Ast.Comment>, _tok:stdgo.go.token.Token.Token):Void __self__.value._writeCommentPrefix(_pos, _next, _prev, _tok);
    /**
        // writeString writes the string s to p.output and updates p.pos, p.out,
        // and p.last. If isLit is set, s is escaped w/ tabwriter.Escape characters
        // to protect s from being interpreted by the tabwriter.
        //
        // Note: writeString is only used to write Go tokens, literals, and
        // comments, all of which must be written literally. Thus, it is correct
        // to always set isLit = true. However, setting it explicitly only when
        // needed (i.e., when we don't know that s contains no tabs or line breaks)
        // avoids processing extra escape characters and reduces run time of the
        // printer benchmark by up to 10%.
    **/
    @:keep
    public function _writeString(_pos:stdgo.go.token.Token.Position, _s:GoString, _isLit:Bool):Void __self__.value._writeString(_pos, _s, _isLit);
    /**
        // writeByte writes ch n times to p.output and updates p.pos.
        // Only used to write formatting (white space) characters.
    **/
    @:keep
    public function _writeByte(_ch:GoByte, _n:GoInt):Void __self__.value._writeByte(_ch, _n);
    /**
        // writeIndent writes indentation.
    **/
    @:keep
    public function _writeIndent():Void __self__.value._writeIndent();
    /**
        // writeLineDirective writes a //line directive if necessary.
    **/
    @:keep
    public function _writeLineDirective(_pos:stdgo.go.token.Token.Position):Void __self__.value._writeLineDirective(_pos);
    @:keep
    public function _lineFor(_pos:stdgo.go.token.Token.Pos):GoInt return __self__.value._lineFor(_pos);
    @:keep
    public function _posFor(_pos:stdgo.go.token.Token.Pos):stdgo.go.token.Token.Position return __self__.value._posFor(_pos);
    /**
        // linesFrom returns the number of output lines between the current
        // output line and the line argument, ignoring any pending (not yet
        // emitted) whitespace or comments. It is used to compute an accurate
        // size (in number of lines) for a formatted construct.
    **/
    @:keep
    public function _linesFrom(_line:GoInt):GoInt return __self__.value._linesFrom(_line);
    /**
        // recordLine records the output line number for the next non-whitespace
        // token in *linePtr. It is used to compute an accurate line number for a
        // formatted construct, independent of pending (not yet emitted) whitespace
        // or comments.
    **/
    @:keep
    public function _recordLine(_linePtr:Pointer<GoInt>):Void __self__.value._recordLine(_linePtr);
    /**
        // commentSizeBefore returns the estimated size of the
        // comments on the same line before the next position.
    **/
    @:keep
    public function _commentSizeBefore(_next:stdgo.go.token.Token.Position):GoInt return __self__.value._commentSizeBefore(_next);
    /**
        // commentBefore reports whether the current comment group occurs
        // before the next position in the source code and printing it does
        // not introduce implicit semicolons.
    **/
    @:keep
    public function _commentBefore(_next:stdgo.go.token.Token.Position):Bool return __self__.value._commentBefore(_next);
    @:keep
    public function _nextComment():Void __self__.value._nextComment();
    /**
        // commentsHaveNewline reports whether a list of comments belonging to
        // an *ast.CommentGroup contains newlines. Because the position information
        // may only be partially correct, we also have to read the comment text.
    **/
    @:keep
    public function _commentsHaveNewline(_list:Slice<Ref<stdgo.go.ast.Ast.Comment>>):Bool return __self__.value._commentsHaveNewline(_list);
    @:keep
    public function _internalError(_msg:haxe.Rest<AnyInterface>):Void __self__.value._internalError(..._msg);
    @:keep
    public function _file(_src:Ref<stdgo.go.ast.Ast.File>):Void __self__.value._file(_src);
    @:keep
    public function _declList(_list:Slice<stdgo.go.ast.Ast.Decl>):Void __self__.value._declList(_list);
    @:keep
    public function _decl(_decl:stdgo.go.ast.Ast.Decl):Void __self__.value._decl(_decl);
    @:keep
    public function _funcDecl(_d:Ref<stdgo.go.ast.Ast.FuncDecl>):Void __self__.value._funcDecl(_d);
    /**
        // distanceFrom returns the column difference between p.out (the current output
        // position) and startOutCol. If the start position is on a different line from
        // the current position (or either is unknown), the result is infinity.
    **/
    @:keep
    public function _distanceFrom(_startPos:stdgo.go.token.Token.Pos, _startOutCol:GoInt):GoInt return __self__.value._distanceFrom(_startPos, _startOutCol);
    /**
        // funcBody prints a function body following a function header of given headerSize.
        // If the header's and block's size are "small enough" and the block is "simple enough",
        // the block is printed on the current line, without line breaks, spaced from the header
        // by sep. Otherwise the block's opening "{" is printed on the current line, followed by
        // lines for the block's statements and its closing "}".
    **/
    @:keep
    public function _funcBody(_headerSize:GoInt, _sep:T_whiteSpace, _b:Ref<stdgo.go.ast.Ast.BlockStmt>):Void __self__.value._funcBody(_headerSize, _sep, _b);
    /**
        // bodySize is like nodeSize but it is specialized for *ast.BlockStmt's.
    **/
    @:keep
    public function _bodySize(_b:Ref<stdgo.go.ast.Ast.BlockStmt>, _maxSize:GoInt):GoInt return __self__.value._bodySize(_b, _maxSize);
    /**
        // numLines returns the number of lines spanned by node n in the original source.
    **/
    @:keep
    public function _numLines(_n:stdgo.go.ast.Ast.Node):GoInt return __self__.value._numLines(_n);
    /**
        // nodeSize determines the size of n in chars after formatting.
        // The result is <= maxSize if the node fits on one line with at
        // most maxSize chars and the formatted output doesn't contain
        // any control chars. Otherwise, the result is > maxSize.
    **/
    @:keep
    public function _nodeSize(_n:stdgo.go.ast.Ast.Node, _maxSize:GoInt):GoInt return __self__.value._nodeSize(_n, _maxSize);
    @:keep
    public function _genDecl(_d:Ref<stdgo.go.ast.Ast.GenDecl>):Void __self__.value._genDecl(_d);
    /**
        // The parameter n is the number of specs in the group. If doIndent is set,
        // multi-line identifier lists in the spec are indented when the first
        // linebreak is encountered.
    **/
    @:keep
    public function _spec(_spec:stdgo.go.ast.Ast.Spec, _n:GoInt, _doIndent:Bool):Void __self__.value._spec(_spec, _n, _doIndent);
    @:keep
    public function _valueSpec(_s:Ref<stdgo.go.ast.Ast.ValueSpec>, _keepType:Bool):Void __self__.value._valueSpec(_s, _keepType);
    @:keep
    public function _stmt(_stmt:stdgo.go.ast.Ast.Stmt, _nextIsRBrace:Bool):Void __self__.value._stmt(_stmt, _nextIsRBrace);
    /**
        // indentList reports whether an expression list would look better if it
        // were indented wholesale (starting with the very first element, rather
        // than starting at the first line break).
    **/
    @:keep
    public function _indentList(_list:Slice<stdgo.go.ast.Ast.Expr>):Bool return __self__.value._indentList(_list);
    @:keep
    public function _controlClause(_isForStmt:Bool, _init:stdgo.go.ast.Ast.Stmt, _expr:stdgo.go.ast.Ast.Expr, _post:stdgo.go.ast.Ast.Stmt):Void __self__.value._controlClause(_isForStmt, _init, _expr, _post);
    /**
        // block prints an *ast.BlockStmt; it always spans at least two lines.
    **/
    @:keep
    public function _block(_b:Ref<stdgo.go.ast.Ast.BlockStmt>, _nindent:GoInt):Void __self__.value._block(_b, _nindent);
    /**
        // Print the statement list indented, but without a newline after the last statement.
        // Extra line breaks between statements in the source are respected but at most one
        // empty line is printed between statements.
    **/
    @:keep
    public function _stmtList(_list:Slice<stdgo.go.ast.Ast.Stmt>, _nindent:GoInt, _nextIsRBrace:Bool):Void __self__.value._stmtList(_list, _nindent, _nextIsRBrace);
    @:keep
    public function _expr(_x:stdgo.go.ast.Ast.Expr):Void __self__.value._expr(_x);
    @:keep
    public function _expr0(_x:stdgo.go.ast.Ast.Expr, _depth:GoInt):Void __self__.value._expr0(_x, _depth);
    /**
        // selectorExpr handles an *ast.SelectorExpr node and reports whether x spans
        // multiple lines.
    **/
    @:keep
    public function _selectorExpr(_x:Ref<stdgo.go.ast.Ast.SelectorExpr>, _depth:GoInt, _isMethod:Bool):Bool return __self__.value._selectorExpr(_x, _depth, _isMethod);
    @:keep
    public function _possibleSelectorExpr(_expr:stdgo.go.ast.Ast.Expr, _prec1:GoInt, _depth:GoInt):Bool return __self__.value._possibleSelectorExpr(_expr, _prec1, _depth);
    @:keep
    public function _expr1(_expr:stdgo.go.ast.Ast.Expr, _prec1:GoInt, _depth:GoInt):Void __self__.value._expr1(_expr, _prec1, _depth);
    /**
        // Format the binary expression: decide the cutoff and then format.
        // Let's call depth == 1 Normal mode, and depth > 1 Compact mode.
        // (Algorithm suggestion by Russ Cox.)
        //
        // The precedences are:
        //
        //	5             *  /  %  <<  >>  &  &^
        //	4             +  -  |  ^
        //	3             ==  !=  <  <=  >  >=
        //	2             &&
        //	1             ||
        //
        // The only decision is whether there will be spaces around levels 4 and 5.
        // There are never spaces at level 6 (unary), and always spaces at levels 3 and below.
        //
        // To choose the cutoff, look at the whole expression but excluding primary
        // expressions (function calls, parenthesized exprs), and apply these rules:
        //
        //  1. If there is a binary operator with a right side unary operand
        //     that would clash without a space, the cutoff must be (in order):
        //
        //     /|*	6
        //     &&	6
        //     &^	6
        //     ++	5
        //     --	5
        //
        //     (Comparison operators always have spaces around them.)
        //
        //  2. If there is a mix of level 5 and level 4 operators, then the cutoff
        //     is 5 (use spaces to distinguish precedence) in Normal mode
        //     and 4 (never use spaces) in Compact mode.
        //
        //  3. If there are no level 4 operators or no level 5 operators, then the
        //     cutoff is 6 (always use spaces) in Normal mode
        //     and 4 (never use spaces) in Compact mode.
    **/
    @:keep
    public function _binaryExpr(_x:Ref<stdgo.go.ast.Ast.BinaryExpr>, _prec1:GoInt, _cutoff:GoInt, _depth:GoInt):Void __self__.value._binaryExpr(_x, _prec1, _cutoff, _depth);
    @:keep
    public function _fieldList(_fields:Ref<stdgo.go.ast.Ast.FieldList>, _isStruct:Bool, _isIncomplete:Bool):Void __self__.value._fieldList(_fields, _isStruct, _isIncomplete);
    @:keep
    public function _setLineComment(_text:GoString):Void __self__.value._setLineComment(_text);
    @:keep
    public function _isOneLineFieldList(_list:Slice<Ref<stdgo.go.ast.Ast.Field>>):Bool return __self__.value._isOneLineFieldList(_list);
    @:keep
    public function _signature(_sig:Ref<stdgo.go.ast.Ast.FuncType>):Void __self__.value._signature(_sig);
    @:keep
    public function _parameters(_fields:Ref<stdgo.go.ast.Ast.FieldList>, _mode:T_paramMode):Void __self__.value._parameters(_fields, _mode);
    /**
        // Print a list of expressions. If the list spans multiple
        // source lines, the original line breaks are respected between
        // expressions.
        //
        // TODO(gri) Consider rewriting this to be independent of []ast.Expr
        // so that we can use the algorithm for any kind of list
        //
        //	(e.g., pass list via a channel over which to range).
    **/
    @:keep
    public function _exprList(_prev0:stdgo.go.token.Token.Pos, _list:Slice<stdgo.go.ast.Ast.Expr>, _depth:GoInt, _mode:T_exprListMode, _next0:stdgo.go.token.Token.Pos, _isIncomplete:Bool):Void __self__.value._exprList(_prev0, _list, _depth, _mode, _next0, _isIncomplete);
    /**
        // If indent is set, a multi-line identifier list is indented after the
        // first linebreak encountered.
    **/
    @:keep
    public function _identList(_list:Slice<Ref<stdgo.go.ast.Ast.Ident>>, _indent:Bool):Void __self__.value._identList(_list, _indent);
    /**
        // setComment sets g as the next comment if g != nil and if node comments
        // are enabled - this mode is used when printing source code fragments such
        // as exports only. It assumes that there is no pending comment in p.comments
        // and at most one pending comment in the p.comment cache.
    **/
    @:keep
    public function _setComment(_g:Ref<stdgo.go.ast.Ast.CommentGroup>):Void __self__.value._setComment(_g);
    /**
        // Print as many newlines as necessary (but at least min newlines) to get to
        // the current line. ws is printed before the first line break. If newSection
        // is set, the first line break is printed as formfeed. Returns 0 if no line
        // breaks were printed, returns 1 if there was exactly one newline printed,
        // and returns a value > 1 if there was a formfeed or more than one newline
        // printed.
        //
        // TODO(gri): linebreak may add too many lines if the next statement at "line"
        // is preceded by comments because the computation of n assumes
        // the current position before the comment and the target position
        // after the comment. Thus, after interspersing such comments, the
        // space taken up by them is not considered to reduce the number of
        // linebreaks. At the moment there is no easy way to know about
        // future (not yet interspersed) comments in this function.
    **/
    @:keep
    public function _linebreak(_line:GoInt, _min:GoInt, _ws:T_whiteSpace, _newSection:Bool):GoInt return __self__.value._linebreak(_line, _min, _ws, _newSection);
    @:keep
    public function _commentTextAt(_start:GoInt):GoString return __self__.value._commentTextAt(_start);
    @:keep
    public function _lineAt(_start:GoInt):Slice<GoByte> return __self__.value._lineAt(_start);
    @:keep
    public function _fixGoBuildLines():Void __self__.value._fixGoBuildLines();
    @:embedded
    public function _fprint(_output:stdgo.io.Io.Writer, _fset_:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface, _nodeSizes:GoMap<stdgo.go.ast.Ast.Node, GoInt>):Error return __self__.value._fprint(_output, _fset_, _node, _nodeSizes);
    @:embedded
    public function fprint(_output:stdgo.io.Io.Writer, _fset_:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface):Error return __self__.value.fprint(_output, _fset_, _node);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_printer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.printer.Printer.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    static public function _free( _p:Ref<T_printer>):Void {
        if (_p._output.capacity > (65536 : GoInt)) {
            return;
        };
        _printerPool.put(Go.toInterface(Go.asInterface(_p)));
    }
    @:keep
    static public function _printNode( _p:Ref<T_printer>, _node:AnyInterface):Error {
        return stdgo.internal.Macro.controlFlow({
            var _comments:Slice<Ref<stdgo.go.ast.Ast.CommentGroup>> = (null : Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>);
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((_node : Ref<CommentedNode>)) : Ref<CommentedNode>), ok : true };
                } catch(_) {
                    { value : (null : Ref<CommentedNode>), ok : false };
                }, _cnode = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _node = _cnode.node;
                    _comments = _cnode.comments;
                };
            };
            if (_comments != null) {
                var __tmp__ = try {
                    { value : (Go.typeAssert((_node : stdgo.go.ast.Ast.Node)) : stdgo.go.ast.Ast.Node), ok : true };
                } catch(_) {
                    { value : (null : stdgo.go.ast.Ast.Node), ok : false };
                }, _n = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    @:goto "unsupported";
                };
                var _beg:stdgo.go.token.Token.Pos = _n.pos();
                var _end:stdgo.go.token.Token.Pos = _n.end();
                {
                    var _doc = _getDoc(_n);
                    if (_doc != null) {
                        _beg = _doc.pos();
                    };
                };
                {
                    var _com = _getLastComment(_n);
                    if (_com != null) {
                        {
                            var _e:stdgo.go.token.Token.Pos = _com.end();
                            if (_e > _end) {
                                _end = _e;
                            };
                        };
                    };
                };
                var _i:GoInt = (0 : GoInt);
                while ((_i < _comments.length) && (_comments[(_i : GoInt)].end() < _beg)) {
                    _i++;
                };
                var _j:GoInt = _i;
                while ((_j < _comments.length) && (_comments[(_j : GoInt)].pos() < _end)) {
                    _j++;
                };
                if (_i < _j) {
                    _p._comments = (_comments.__slice__(_i, _j) : Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>);
                };
            } else {
                var __tmp__ = try {
                    { value : (Go.typeAssert((_node : Ref<stdgo.go.ast.Ast.File>)) : Ref<stdgo.go.ast.Ast.File>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.File>), ok : false };
                }, _n = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _p._comments = _n.comments;
                };
            };
            _p._useNodeComments = _p._comments == null;
            _p._nextComment();
            _p._print(Go.toInterface((0 : T_pmode)));
            {
                final __type__ = _node;
                if (Go.typeEquals((__type__ : stdgo.go.ast.Ast.Expr))) {
                    var _n:stdgo.go.ast.Ast.Expr = __type__ == null ? (null : stdgo.go.ast.Ast.Expr) : __type__.__underlying__() == null ? (null : stdgo.go.ast.Ast.Expr) : __type__ == null ? (null : stdgo.go.ast.Ast.Expr) : __type__.__underlying__().value;
                    _p._expr(_n);
                } else if (Go.typeEquals((__type__ : stdgo.go.ast.Ast.Stmt))) {
                    var _n:stdgo.go.ast.Ast.Stmt = __type__ == null ? (null : stdgo.go.ast.Ast.Stmt) : __type__.__underlying__() == null ? (null : stdgo.go.ast.Ast.Stmt) : __type__ == null ? (null : stdgo.go.ast.Ast.Stmt) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.LabeledStmt>)) : Ref<stdgo.go.ast.Ast.LabeledStmt>), ok : true };
                        } catch(_) {
                            { value : (null : Ref<stdgo.go.ast.Ast.LabeledStmt>), ok : false };
                        }, _32 = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok) {
                            _p._indent = (1 : GoInt);
                        };
                    };
                    _p._stmt(_n, false);
                } else if (Go.typeEquals((__type__ : stdgo.go.ast.Ast.Decl))) {
                    var _n:stdgo.go.ast.Ast.Decl = __type__ == null ? (null : stdgo.go.ast.Ast.Decl) : __type__.__underlying__() == null ? (null : stdgo.go.ast.Ast.Decl) : __type__ == null ? (null : stdgo.go.ast.Ast.Decl) : __type__.__underlying__().value;
                    _p._decl(_n);
                } else if (Go.typeEquals((__type__ : stdgo.go.ast.Ast.Spec))) {
                    var _n:stdgo.go.ast.Ast.Spec = __type__ == null ? (null : stdgo.go.ast.Ast.Spec) : __type__.__underlying__() == null ? (null : stdgo.go.ast.Ast.Spec) : __type__ == null ? (null : stdgo.go.ast.Ast.Spec) : __type__.__underlying__().value;
                    _p._spec(_n, (1 : GoInt), false);
                } else if (Go.typeEquals((__type__ : Slice<stdgo.go.ast.Ast.Stmt>))) {
                    var _n:Slice<stdgo.go.ast.Ast.Stmt> = __type__ == null ? (null : Slice<stdgo.go.ast.Ast.Stmt>) : __type__.__underlying__() == null ? (null : Slice<stdgo.go.ast.Ast.Stmt>) : __type__ == null ? (null : Slice<stdgo.go.ast.Ast.Stmt>) : __type__.__underlying__().value;
                    for (_41 => _s in _n) {
                        {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((Go.toInterface(_s) : Ref<stdgo.go.ast.Ast.LabeledStmt>)) : Ref<stdgo.go.ast.Ast.LabeledStmt>), ok : true };
                            } catch(_) {
                                { value : (null : Ref<stdgo.go.ast.Ast.LabeledStmt>), ok : false };
                            }, _42 = __tmp__.value, _ok = __tmp__.ok;
                            if (_ok) {
                                _p._indent = (1 : GoInt);
                            };
                        };
                    };
                    _p._stmtList(_n, (0 : GoInt), false);
                } else if (Go.typeEquals((__type__ : Slice<stdgo.go.ast.Ast.Decl>))) {
                    var _n:Slice<stdgo.go.ast.Ast.Decl> = __type__ == null ? (null : Slice<stdgo.go.ast.Ast.Decl>) : __type__.__underlying__() == null ? (null : Slice<stdgo.go.ast.Ast.Decl>) : __type__ == null ? (null : Slice<stdgo.go.ast.Ast.Decl>) : __type__.__underlying__().value;
                    _p._declList(_n);
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.File>))) {
                    var _n:Ref<stdgo.go.ast.Ast.File> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.File>) : __type__.__underlying__().value;
                    _p._file(_n);
                } else {
                    var _n:AnyInterface = __type__ == null ? null : __type__.__underlying__();
                    @:goto "unsupported";
                };
            };
            return (null : Error);
            @:label("unsupported") return stdgo.fmt.Fmt.errorf(("go/printer: unsupported node type %T" : GoString), _node);
        });
    }
    /**
        // flush prints any pending comments and whitespace occurring textually
        // before the position of the next token tok. The flush result indicates
        // if a newline was written or if a formfeed was dropped from the whitespace
        // buffer.
    **/
    @:keep
    static public function _flush( _p:Ref<T_printer>, _next:stdgo.go.token.Token.Position, _tok:stdgo.go.token.Token.Token):{ var _0 : Bool; var _1 : Bool; } {
        var _wroteNewline:Bool = false, _droppedFF:Bool = false;
        if (_p._commentBefore((_next == null ? null : _next.__copy__()))) {
            {
                var __tmp__ = _p._intersperseComments((_next == null ? null : _next.__copy__()), _tok);
                _wroteNewline = __tmp__._0;
                _droppedFF = __tmp__._1;
            };
        } else {
            _p._writeWhitespace((_p._wsbuf.length));
        };
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    /**
        // print prints a list of "items" (roughly corresponding to syntactic
        // tokens, but also including whitespace and formatting information).
        // It is the only print function that should be called directly from
        // any of the AST printing functions in nodes.go.
        //
        // Whitespace is accumulated until a non-whitespace token appears. Any
        // comments that need to appear before that token are printed first,
        // taking into account the amount and structure of any pending white-
        // space for best comment placement. Then, any leftover whitespace is
        // printed, followed by the actual token.
    **/
    @:keep
    static public function _print( _p:Ref<T_printer>, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(0, 0, ..._args);
        for (_0 => _arg in _args) {
            var _data:GoString = ("" : GoString);
            var _isLit:Bool = false;
            var _impliedSemi:Bool = false;
            if (_p._lastTok == ((0 : stdgo.go.token.Token.Token))) {} else if (_p._lastTok == ((49 : stdgo.go.token.Token.Token)) || _p._lastTok == ((50 : stdgo.go.token.Token.Token))) {
                _p._prevOpen = _p._lastTok;
            } else {
                _p._prevOpen = (0 : stdgo.go.token.Token.Token);
            };
            {
                final __type__ = _arg;
                if (Go.typeEquals((__type__ : T_pmode))) {
                    var _x:T_pmode = __type__ == null ? ((0 : GoInt) : T_pmode) : __type__.__underlying__() == null ? ((0 : GoInt) : T_pmode) : __type__ == null ? ((0 : GoInt) : T_pmode) : __type__.__underlying__().value;
                    _p._mode = _p._mode ^ (_x);
                    continue;
                } else if (Go.typeEquals((__type__ : T_whiteSpace))) {
                    var _x:T_whiteSpace = __type__ == null ? ((0 : GoUInt8) : T_whiteSpace) : __type__.__underlying__() == null ? ((0 : GoUInt8) : T_whiteSpace) : __type__ == null ? ((0 : GoUInt8) : T_whiteSpace) : __type__.__underlying__().value;
                    if (_x == ((0 : T_whiteSpace))) {
                        continue;
                    };
                    var _i:GoInt = (_p._wsbuf.length);
                    if (_i == (_p._wsbuf.capacity)) {
                        _p._writeWhitespace(_i);
                        _i = (0 : GoInt);
                    };
                    _p._wsbuf = (_p._wsbuf.__slice__((0 : GoInt), _i + (1 : GoInt)) : Slice<T_whiteSpace>);
                    _p._wsbuf[(_i : GoInt)] = _x;
                    if ((_x == (10 : T_whiteSpace)) || (_x == (12 : T_whiteSpace))) {
                        _p._impliedSemi = false;
                    };
                    _p._lastTok = (0 : stdgo.go.token.Token.Token);
                    continue;
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _x:Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    _data = _x.name;
                    _impliedSemi = true;
                    _p._lastTok = (4 : stdgo.go.token.Token.Token);
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BasicLit>))) {
                    var _x:Ref<stdgo.go.ast.Ast.BasicLit> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__().value;
                    _data = _x.value;
                    _isLit = true;
                    _impliedSemi = true;
                    _p._lastTok = _x.kind;
                } else if (Go.typeEquals((__type__ : stdgo.go.token.Token.Token))) {
                    var _x:stdgo.go.token.Token.Token = __type__ == null ? ((0 : GoInt) : stdgo.go.token.Token.Token) : __type__.__underlying__() == null ? ((0 : GoInt) : stdgo.go.token.Token.Token) : __type__ == null ? ((0 : GoInt) : stdgo.go.token.Token.Token) : __type__.__underlying__().value;
                    var _s:GoString = (_x.string() : GoString);
                    if (_mayCombine(_p._lastTok, _s[(0 : GoInt)])) {
                        if ((_p._wsbuf.length) != ((0 : GoInt))) {
                            _p._internalError(Go.toInterface(("whitespace buffer not empty" : GoString)));
                        };
                        _p._wsbuf = (_p._wsbuf.__slice__((0 : GoInt), (1 : GoInt)) : Slice<T_whiteSpace>);
                        _p._wsbuf[(0 : GoInt)] = (32 : T_whiteSpace);
                    };
                    _data = _s;
                    if (_x == ((61 : stdgo.go.token.Token.Token)) || _x == ((65 : stdgo.go.token.Token.Token)) || _x == ((69 : stdgo.go.token.Token.Token)) || _x == ((80 : stdgo.go.token.Token.Token)) || _x == ((37 : stdgo.go.token.Token.Token)) || _x == ((38 : stdgo.go.token.Token.Token)) || _x == ((54 : stdgo.go.token.Token.Token)) || _x == ((55 : stdgo.go.token.Token.Token)) || _x == ((56 : stdgo.go.token.Token.Token))) {
                        _impliedSemi = true;
                    };
                    _p._lastTok = _x;
                } else if (Go.typeEquals((__type__ : GoString))) {
                    var _x:GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                    _data = _x;
                    _isLit = true;
                    _impliedSemi = true;
                    _p._lastTok = (9 : stdgo.go.token.Token.Token);
                } else {
                    var _x:AnyInterface = __type__ == null ? null : __type__.__underlying__();
                    stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("print: unsupported argument %v (%T)\n" : GoString), _arg, _arg);
                    throw Go.toInterface(("go/printer type" : GoString));
                };
            };
            var _next:stdgo.go.token.Token.Position = (_p._pos == null ? null : _p._pos.__copy__());
            var __tmp__ = _p._flush((_next == null ? null : _next.__copy__()), _p._lastTok), _wroteNewline:Bool = __tmp__._0, _droppedFF:Bool = __tmp__._1;
            if (!_p._impliedSemi) {
                var _n:GoInt = _nlimit(_next.line - _p._pos.line);
                if (_wroteNewline && (_n == (2 : GoInt))) {
                    _n = (1 : GoInt);
                };
                if (_n > (0 : GoInt)) {
                    var _ch:GoUInt8 = ((10 : GoUInt8) : GoByte);
                    if (_droppedFF) {
                        _ch = (12 : GoUInt8);
                    };
                    _p._writeByte(_ch, _n);
                    _impliedSemi = false;
                };
            };
            if (_p._linePtr != null) {
                _p._linePtr.value = _p._out.line;
                _p._linePtr = (null : Pointer<GoInt>);
            };
            _p._writeString((_next == null ? null : _next.__copy__()), _data, _isLit);
            _p._impliedSemi = _impliedSemi;
        };
    }
    @:keep
    static public function _setPos( _p:Ref<T_printer>, _pos:stdgo.go.token.Token.Pos):Void {
        if (_pos.isValid()) {
            _p._pos = (_p._posFor(_pos) == null ? null : _p._posFor(_pos).__copy__());
        };
    }
    /**
        // whiteWhitespace writes the first n whitespace entries.
    **/
    @:keep
    static public function _writeWhitespace( _p:Ref<T_printer>, _n:GoInt):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                {
                    var _ch:T_whiteSpace = _p._wsbuf[(_i : GoInt)];
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        while (true) {
                            if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_ch == (0 : T_whiteSpace)))) {
                                break;
                            } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_ch == (62 : T_whiteSpace)))) {
                                _p._indent++;
                                break;
                                break;
                            } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_ch == (60 : T_whiteSpace)))) {
                                _p._indent--;
                                if (_p._indent < (0 : GoInt)) {
                                    _p._internalError(Go.toInterface(("negative indentation:" : GoString)), Go.toInterface(_p._indent));
                                    _p._indent = (0 : GoInt);
                                };
                                break;
                                break;
                            } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_ch == ((10 : T_whiteSpace)) || _ch == ((12 : T_whiteSpace))))) {
                                if (((_i + (1 : GoInt)) < _n) && (_p._wsbuf[(_i + (1 : GoInt) : GoInt)] == (60 : T_whiteSpace))) {
                                    {
                                        final __tmp__0 = (60 : T_whiteSpace);
                                        final __tmp__1 = (12 : T_whiteSpace);
                                        _p._wsbuf[(_i : GoInt)] = __tmp__0;
                                        _p._wsbuf[(_i + (1 : GoInt) : GoInt)] = __tmp__1;
                                    };
                                    _i--;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                };
                                @:fallthrough {
                                    __switchIndex__ = 4;
                                    continue;
                                };
                                break;
                            } else {
                                _p._writeByte((_ch : GoByte), (1 : GoInt));
                                break;
                            };
                            break;
                        };
                        if (__continue__) continue;
                    };
                };
            });
        };
        var _l:GoInt = Go.copySlice(_p._wsbuf, (_p._wsbuf.__slice__(_n) : Slice<T_whiteSpace>));
        _p._wsbuf = (_p._wsbuf.__slice__(0, _l) : Slice<T_whiteSpace>);
    }
    /**
        // intersperseComments consumes all comments that appear before the next token
        // tok and prints it together with the buffered whitespace (i.e., the whitespace
        // that needs to be written before the next token). A heuristic is used to mix
        // the comments and whitespace. The intersperseComments result indicates if a
        // newline was written or if a formfeed was dropped from the whitespace buffer.
    **/
    @:keep
    static public function _intersperseComments( _p:Ref<T_printer>, _next:stdgo.go.token.Token.Position, _tok:stdgo.go.token.Token.Token):{ var _0 : Bool; var _1 : Bool; } {
        var _wroteNewline:Bool = false, _droppedFF:Bool = false;
        var _last:Ref<stdgo.go.ast.Ast.Comment> = (null : Ref<stdgo.go.ast.Ast.Comment>);
        while (_p._commentBefore((_next == null ? null : _next.__copy__()))) {
            var _list = _p._commentInfo._comment.list;
            var _changed:Bool = false;
            if (((_p._lastTok != (75 : stdgo.go.token.Token.Token)) && (_p._posFor(_p._commentInfo._comment.pos()).column == (1 : GoInt))) && (Go.toInterface(Go.asInterface(_p._posFor(_p._commentInfo._comment.end() + (1 : stdgo.go.token.Token.Pos)))) == Go.toInterface(Go.asInterface(_next)))) {
                _list = _formatDocComment(_list);
                _changed = true;
                if ((_p._commentInfo._comment.list.length > (0 : GoInt)) && (_list.length == (0 : GoInt))) {
                    _p._writeCommentPrefix((_p._posFor(_p._commentInfo._comment.pos()) == null ? null : _p._posFor(_p._commentInfo._comment.pos()).__copy__()), (_next == null ? null : _next.__copy__()), _last, _tok);
                    _p._pos = (_next == null ? null : _next.__copy__());
                    _p._last = (_next == null ? null : _next.__copy__());
                    _p._nextComment();
                    return _p._writeCommentSuffix(false);
                };
            };
            for (_64 => _c in _list) {
                _p._writeCommentPrefix((_p._posFor(_c.pos()) == null ? null : _p._posFor(_c.pos()).__copy__()), (_next == null ? null : _next.__copy__()), _last, _tok);
                _p._writeComment(_c);
                _last = _c;
            };
            if ((_p._commentInfo._comment.list.length > (0 : GoInt)) && _changed) {
                _last = _p._commentInfo._comment.list[((_p._commentInfo._comment.list.length) - (1 : GoInt) : GoInt)];
                _p._pos = (_p._posFor(_last.end()) == null ? null : _p._posFor(_last.end()).__copy__());
                _p._last = (_p._pos == null ? null : _p._pos.__copy__());
            };
            _p._nextComment();
        };
        if (_last != null) {
            var _needsLinebreak:Bool = false;
            if (((((((_p._mode & (1 : T_pmode)) == (0 : T_pmode)) && (_last.text[(1 : GoInt)] == (42 : GoUInt8))) && (_p._lineFor(_last.pos()) == _next.line)) && (_tok != (52 : stdgo.go.token.Token.Token))) && ((_tok != (54 : stdgo.go.token.Token.Token)) || (_p._prevOpen == (49 : stdgo.go.token.Token.Token)))) && ((_tok != (55 : stdgo.go.token.Token.Token)) || (_p._prevOpen == (50 : stdgo.go.token.Token.Token)))) {
                if ((_p._containsLinebreak() && ((_p._mode & (2 : T_pmode)) == (0 : T_pmode))) && (_p._level == (0 : GoInt))) {
                    _needsLinebreak = true;
                } else {
                    _p._writeByte((32 : GoUInt8), (1 : GoInt));
                };
            };
            if (((_last.text[(1 : GoInt)] == (47 : GoUInt8)) || (_tok == (1 : stdgo.go.token.Token.Token))) || ((_tok == (56 : stdgo.go.token.Token.Token)) && ((_p._mode & (2 : T_pmode)) == (0 : T_pmode)))) {
                _needsLinebreak = true;
            };
            return _p._writeCommentSuffix(_needsLinebreak);
        };
        _p._internalError(Go.toInterface(("intersperseComments called without pending comments" : GoString)));
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    /**
        // containsLinebreak reports whether the whitespace buffer contains any line breaks.
    **/
    @:keep
    static public function _containsLinebreak( _p:Ref<T_printer>):Bool {
        for (_0 => _ch in _p._wsbuf) {
            if ((_ch == (10 : T_whiteSpace)) || (_ch == (12 : T_whiteSpace))) {
                return true;
            };
        };
        return false;
    }
    /**
        // writeCommentSuffix writes a line break after a comment if indicated
        // and processes any leftover indentation information. If a line break
        // is needed, the kind of break (newline vs formfeed) depends on the
        // pending whitespace. The writeCommentSuffix result indicates if a
        // newline was written or if a formfeed was dropped from the whitespace
        // buffer.
    **/
    @:keep
    static public function _writeCommentSuffix( _p:Ref<T_printer>, _needsLinebreak:Bool):{ var _0 : Bool; var _1 : Bool; } {
        var _wroteNewline:Bool = false, _droppedFF:Bool = false;
        for (_i => _ch in _p._wsbuf) {
            if (_ch == ((32 : T_whiteSpace)) || _ch == ((11 : T_whiteSpace))) {
                _p._wsbuf[(_i : GoInt)] = (0 : T_whiteSpace);
            } else if (_ch == ((62 : T_whiteSpace)) || _ch == ((60 : T_whiteSpace))) {} else if (_ch == ((10 : T_whiteSpace)) || _ch == ((12 : T_whiteSpace))) {
                if (_needsLinebreak) {
                    _needsLinebreak = false;
                    _wroteNewline = true;
                } else {
                    if (_ch == ((12 : T_whiteSpace))) {
                        _droppedFF = true;
                    };
                    _p._wsbuf[(_i : GoInt)] = (0 : T_whiteSpace);
                };
            };
        };
        _p._writeWhitespace((_p._wsbuf.length));
        if (_needsLinebreak) {
            _p._writeByte((10 : GoUInt8), (1 : GoInt));
            _wroteNewline = true;
        };
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    static public function _writeComment( _p:Ref<T_printer>, _comment:Ref<stdgo.go.ast.Ast.Comment>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        var _text:GoString = _comment.text;
        try {
            var _pos:stdgo.go.token.Token.Position = (_p._posFor(_comment.pos()) == null ? null : _p._posFor(_comment.pos()).__copy__());
            {};
            if (stdgo.strings.Strings.hasPrefix(_text, ("//line " : GoString)) && (!_pos.isValid() || (_pos.column == (1 : GoInt)))) {
                {
                    var _a0 = _p._indent;
                    __deferstack__.unshift(() -> {
                        var a = function(_indent:GoInt):Void {
                            _p._indent = _indent;
                        };
                        a(_a0);
                    });
                };
                _p._indent = (0 : GoInt);
            };
            if (_text[(1 : GoInt)] == ((47 : GoUInt8))) {
                if (stdgo.go.build.constraint.Constraint.isGoBuild(_text)) {
                    _p._goBuild = _p._goBuild.__appendref__((_p._output.length));
                } else if (stdgo.go.build.constraint.Constraint.isPlusBuild(_text)) {
                    _p._plusBuild = _p._plusBuild.__appendref__((_p._output.length));
                };
                _p._writeString((_pos == null ? null : _pos.__copy__()), _trimRight(_text), true);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _lines = stdgo.strings.Strings.split(_text, ("\n" : GoString));
            if ((_pos.isValid() && (_pos.column == (1 : GoInt))) && (_p._indent > (0 : GoInt))) {
                for (_i => _line in (_lines.__slice__((1 : GoInt)) : Slice<GoString>)) {
                    _lines[((1 : GoInt) + _i : GoInt)] = ("   " : GoString) + _line;
                };
            };
            _stripCommonPrefix(_lines);
            for (_i => _line in _lines) {
                if (_i > (0 : GoInt)) {
                    _p._writeByte((12 : GoUInt8), (1 : GoInt));
                    _pos = (_p._pos == null ? null : _p._pos.__copy__());
                };
                if ((_line.length) > (0 : GoInt)) {
                    _p._writeString((_pos == null ? null : _pos.__copy__()), _trimRight(_line), true);
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
    /**
        // writeCommentPrefix writes the whitespace before a comment.
        // If there is any pending whitespace, it consumes as much of
        // it as is likely to help position the comment nicely.
        // pos is the comment position, next the position of the item
        // after all pending comments, prev is the previous comment in
        // a group of comments (or nil), and tok is the next token.
    **/
    @:keep
    static public function _writeCommentPrefix( _p:Ref<T_printer>, _pos:stdgo.go.token.Token.Position, _next:stdgo.go.token.Token.Position, _prev:Ref<stdgo.go.ast.Ast.Comment>, _tok:stdgo.go.token.Token.Token):Void {
        if ((_p._output.length) == ((0 : GoInt))) {
            return;
        };
        if (_pos.isValid() && (_pos.filename != _p._last.filename)) {
            _p._writeByte((12 : GoUInt8), (2 : GoInt));
            return;
        };
        if ((_pos.line == _p._last.line) && ((_prev == null) || (_prev.text[(1 : GoInt)] != (47 : GoUInt8)))) {
            var _hasSep:Bool = false;
            if (_prev == null) {
                var _j:GoInt = (0 : GoInt);
                for (_i => _ch in _p._wsbuf) {
                    if (_ch == ((32 : T_whiteSpace))) {
                        _p._wsbuf[(_i : GoInt)] = (0 : T_whiteSpace);
                        continue;
                    } else if (_ch == ((11 : T_whiteSpace))) {
                        _hasSep = true;
                        continue;
                    } else if (_ch == ((62 : T_whiteSpace))) {
                        continue;
                    };
                    _j = _i;
                    break;
                };
                _p._writeWhitespace(_j);
            };
            if (!_hasSep) {
                var _sep:GoUInt8 = ((9 : GoUInt8) : GoByte);
                if (_pos.line == (_next.line)) {
                    _sep = (32 : GoUInt8);
                };
                _p._writeByte(_sep, (1 : GoInt));
            };
        } else {
            var _droppedLinebreak:Bool = false;
            var _j:GoInt = (0 : GoInt);
            for (_i => _ch in _p._wsbuf) {
                if (_ch == ((32 : T_whiteSpace)) || _ch == ((11 : T_whiteSpace))) {
                    _p._wsbuf[(_i : GoInt)] = (0 : T_whiteSpace);
                    continue;
                } else if (_ch == ((62 : T_whiteSpace))) {
                    continue;
                } else if (_ch == ((60 : T_whiteSpace))) {
                    if (((_i + (1 : GoInt)) < _p._wsbuf.length) && (_p._wsbuf[(_i + (1 : GoInt) : GoInt)] == (60 : T_whiteSpace))) {
                        continue;
                    };
                    if ((_tok != (56 : stdgo.go.token.Token.Token)) && (_pos.column == _next.column)) {
                        continue;
                    };
                } else if (_ch == ((10 : T_whiteSpace)) || _ch == ((12 : T_whiteSpace))) {
                    _p._wsbuf[(_i : GoInt)] = (0 : T_whiteSpace);
                    _droppedLinebreak = _prev == null;
                };
                _j = _i;
                break;
            };
            _p._writeWhitespace(_j);
            var _n:GoInt = (0 : GoInt);
            if (_pos.isValid() && _p._last.isValid()) {
                _n = _pos.line - _p._last.line;
                if (_n < (0 : GoInt)) {
                    _n = (0 : GoInt);
                };
            };
            if ((_p._indent == (0 : GoInt)) && _droppedLinebreak) {
                _n++;
            };
            if (((_n == (0 : GoInt)) && (_prev != null)) && (_prev.text[(1 : GoInt)] == (47 : GoUInt8))) {
                _n = (1 : GoInt);
            };
            if (_n > (0 : GoInt)) {
                _p._writeByte((12 : GoUInt8), _nlimit(_n));
            };
        };
    }
    /**
        // writeString writes the string s to p.output and updates p.pos, p.out,
        // and p.last. If isLit is set, s is escaped w/ tabwriter.Escape characters
        // to protect s from being interpreted by the tabwriter.
        //
        // Note: writeString is only used to write Go tokens, literals, and
        // comments, all of which must be written literally. Thus, it is correct
        // to always set isLit = true. However, setting it explicitly only when
        // needed (i.e., when we don't know that s contains no tabs or line breaks)
        // avoids processing extra escape characters and reduces run time of the
        // printer benchmark by up to 10%.
    **/
    @:keep
    static public function _writeString( _p:Ref<T_printer>, _pos:stdgo.go.token.Token.Position, _s:GoString, _isLit:Bool):Void {
        if (_p._out.column == ((1 : GoInt))) {
            if (_p.config.mode & (("8" : GoUInt) : Mode) != ((("0" : GoUInt) : Mode))) {
                _p._writeLineDirective((_pos == null ? null : _pos.__copy__()));
            };
            _p._writeIndent();
        };
        if (_pos.isValid()) {
            _p._pos = (_pos == null ? null : _pos.__copy__());
        };
        if (_isLit) {
            _p._output = _p._output.__appendref__((255 : GoUInt8));
        };
        if (false) {
            _p._output = _p._output.__appendref__(...stdgo.fmt.Fmt.sprintf(("/*%s*/" : GoString), Go.toInterface(Go.asInterface(_pos))).__toArray__());
        };
        _p._output = _p._output.__appendref__(..._s.__toArray__());
        var _nlines:GoInt = (0 : GoInt);
        var _li:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_s.length), _i++, {
                {
                    var _ch:GoUInt8 = _s[(_i : GoInt)];
                    if ((_ch == (10 : GoUInt8)) || (_ch == (12 : GoUInt8))) {
                        _nlines++;
                        _li = _i;
                        _p._endAlignment = true;
                    };
                };
            });
        };
        _p._pos.offset = _p._pos.offset + ((_s.length));
        if (_nlines > (0 : GoInt)) {
            _p._pos.line = _p._pos.line + (_nlines);
            _p._out.line = _p._out.line + (_nlines);
            var _c:GoInt = (_s.length) - _li;
            _p._pos.column = _c;
            _p._out.column = _c;
        } else {
            _p._pos.column = _p._pos.column + ((_s.length));
            _p._out.column = _p._out.column + ((_s.length));
        };
        if (_isLit) {
            _p._output = _p._output.__appendref__((255 : GoUInt8));
        };
        _p._last = (_p._pos == null ? null : _p._pos.__copy__());
    }
    /**
        // writeByte writes ch n times to p.output and updates p.pos.
        // Only used to write formatting (white space) characters.
    **/
    @:keep
    static public function _writeByte( _p:Ref<T_printer>, _ch:GoByte, _n:GoInt):Void {
        if (_p._endAlignment) {
            if (_ch == ((9 : GoUInt8)) || _ch == ((11 : GoUInt8))) {
                _ch = (32 : GoUInt8);
            } else if (_ch == ((10 : GoUInt8)) || _ch == ((12 : GoUInt8))) {
                _ch = (12 : GoUInt8);
                _p._endAlignment = false;
            };
        };
        if (_p._out.column == ((1 : GoInt))) {
            _p._writeIndent();
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _p._output = _p._output.__appendref__(_ch);
            });
        };
        _p._pos.offset = _p._pos.offset + (_n);
        if ((_ch == (10 : GoUInt8)) || (_ch == (12 : GoUInt8))) {
            _p._pos.line = _p._pos.line + (_n);
            _p._out.line = _p._out.line + (_n);
            _p._pos.column = (1 : GoInt);
            _p._out.column = (1 : GoInt);
            return;
        };
        _p._pos.column = _p._pos.column + (_n);
        _p._out.column = _p._out.column + (_n);
    }
    /**
        // writeIndent writes indentation.
    **/
    @:keep
    static public function _writeIndent( _p:Ref<T_printer>):Void {
        var _n:GoInt = _p.config.indent + _p._indent;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _p._output = _p._output.__appendref__((9 : GoUInt8));
            });
        };
        _p._pos.offset = _p._pos.offset + (_n);
        _p._pos.column = _p._pos.column + (_n);
        _p._out.column = _p._out.column + (_n);
    }
    /**
        // writeLineDirective writes a //line directive if necessary.
    **/
    @:keep
    static public function _writeLineDirective( _p:Ref<T_printer>, _pos:stdgo.go.token.Token.Position):Void {
        if (_pos.isValid() && ((_p._out.line != _pos.line) || (_p._out.filename != _pos.filename))) {
            _p._output = _p._output.__appendref__((255 : GoUInt8));
            _p._output = _p._output.__appendref__(...stdgo.fmt.Fmt.sprintf(("//line %s:%d\n" : GoString), Go.toInterface(_pos.filename), Go.toInterface(_pos.line)).__toArray__());
            _p._output = _p._output.__appendref__((255 : GoUInt8));
            _p._out.filename = _pos.filename;
            _p._out.line = _pos.line;
        };
    }
    @:keep
    static public function _lineFor( _p:Ref<T_printer>, _pos:stdgo.go.token.Token.Pos):GoInt {
        if (_pos != (_p._cachedPos)) {
            _p._cachedPos = _pos;
            _p._cachedLine = _p._fset.positionFor(_pos, false).line;
        };
        return _p._cachedLine;
    }
    @:keep
    static public function _posFor( _p:Ref<T_printer>, _pos:stdgo.go.token.Token.Pos):stdgo.go.token.Token.Position {
        return (_p._fset.positionFor(_pos, false) == null ? null : _p._fset.positionFor(_pos, false).__copy__());
    }
    /**
        // linesFrom returns the number of output lines between the current
        // output line and the line argument, ignoring any pending (not yet
        // emitted) whitespace or comments. It is used to compute an accurate
        // size (in number of lines) for a formatted construct.
    **/
    @:keep
    static public function _linesFrom( _p:Ref<T_printer>, _line:GoInt):GoInt {
        return _p._out.line - _line;
    }
    /**
        // recordLine records the output line number for the next non-whitespace
        // token in *linePtr. It is used to compute an accurate line number for a
        // formatted construct, independent of pending (not yet emitted) whitespace
        // or comments.
    **/
    @:keep
    static public function _recordLine( _p:Ref<T_printer>, _linePtr:Pointer<GoInt>):Void {
        _p._linePtr = _linePtr;
    }
    /**
        // commentSizeBefore returns the estimated size of the
        // comments on the same line before the next position.
    **/
    @:keep
    static public function _commentSizeBefore( _p:Ref<T_printer>, _next:stdgo.go.token.Token.Position):GoInt {
        var __deferstack__:Array<Void -> Void> = [];
        {
            var _a0 = _p._commentInfo;
            __deferstack__.unshift(() -> {
                var a = function(_info:T_commentInfo):Void {
                    _p._commentInfo = (_info == null ? null : _info.__copy__());
                };
                a((_a0 == null ? null : _a0.__copy__()));
            });
        };
        var _size:GoInt = (0 : GoInt);
        try {
            while (_p._commentBefore((_next == null ? null : _next.__copy__()))) {
                for (_8 => _c in _p._commentInfo._comment.list) {
                    _size = _size + ((_c.text.length));
                };
                _p._nextComment();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _size;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return (0 : GoInt);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return (0 : GoInt);
        };
    }
    /**
        // commentBefore reports whether the current comment group occurs
        // before the next position in the source code and printing it does
        // not introduce implicit semicolons.
    **/
    @:keep
    static public function _commentBefore( _p:Ref<T_printer>, _next:stdgo.go.token.Token.Position):Bool {
        return (_p._commentInfo._commentOffset < _next.offset) && (!_p._impliedSemi || !_p._commentInfo._commentNewline);
    }
    @:keep
    static public function _nextComment( _p:Ref<T_printer>):Void {
        while (_p._commentInfo._cindex < (_p._comments.length)) {
            var _c = _p._comments[(_p._commentInfo._cindex : GoInt)];
            _p._commentInfo._cindex++;
            {
                var _list = _c.list;
                if ((_list.length) > (0 : GoInt)) {
                    _p._commentInfo._comment = _c;
                    _p._commentInfo._commentOffset = _p._posFor(_list[(0 : GoInt)].pos()).offset;
                    _p._commentInfo._commentNewline = _p._commentsHaveNewline(_list);
                    return;
                };
            };
        };
        _p._commentInfo._commentOffset = (1073741824 : GoInt);
    }
    /**
        // commentsHaveNewline reports whether a list of comments belonging to
        // an *ast.CommentGroup contains newlines. Because the position information
        // may only be partially correct, we also have to read the comment text.
    **/
    @:keep
    static public function _commentsHaveNewline( _p:Ref<T_printer>, _list:Slice<Ref<stdgo.go.ast.Ast.Comment>>):Bool {
        var _line:GoInt = _p._lineFor(_list[(0 : GoInt)].pos());
        for (_i => _c in _list) {
            if ((_i > (0 : GoInt)) && (_p._lineFor(_list[(_i : GoInt)].pos()) != _line)) {
                return true;
            };
            {
                var _t:GoString = _c.text;
                if ((_t.length >= (2 : GoInt)) && ((_t[(1 : GoInt)] == (47 : GoUInt8)) || stdgo.strings.Strings.contains(_t, ("\n" : GoString)))) {
                    return true;
                };
            };
        };
        _line;
        return false;
    }
    @:keep
    static public function _internalError( _p:Ref<T_printer>, _msg:haxe.Rest<AnyInterface>):Void {
        var _msg = new Slice<AnyInterface>(0, 0, ..._msg);
        if (false) {
            stdgo.fmt.Fmt.print(Go.toInterface((_p._pos.string() : GoString) + (": " : GoString)));
            stdgo.fmt.Fmt.println(..._msg.__toArray__());
            throw Go.toInterface(("go/printer" : GoString));
        };
    }
    @:keep
    static public function _file( _p:Ref<T_printer>, _src:Ref<stdgo.go.ast.Ast.File>):Void {
        _p._setComment(_src.doc);
        _p._setPos(_src.pos());
        _p._print(Go.toInterface(Go.asInterface((78 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
        _p._expr(Go.asInterface(_src.name));
        _p._declList(_src.decls);
        _p._print(Go.toInterface((10 : T_whiteSpace)));
    }
    @:keep
    static public function _declList( _p:Ref<T_printer>, _list:Slice<stdgo.go.ast.Ast.Decl>):Void {
        var _tok:stdgo.go.token.Token.Token = (0 : stdgo.go.token.Token.Token);
        for (_0 => _d in _list) {
            var _prev:stdgo.go.token.Token.Token = _tok;
            _tok = _declToken(_d);
            if ((_p._output.length) > (0 : GoInt)) {
                var _min:GoInt = (1 : GoInt);
                if ((_prev != _tok) || (_getDoc(_d) != null)) {
                    _min = (2 : GoInt);
                };
                _p._linebreak(_p._lineFor(_d.pos()), _min, (0 : T_whiteSpace), (_tok == (71 : stdgo.go.token.Token.Token)) && (_p._numLines(_d) > (1 : GoInt)));
            };
            _p._decl(_d);
        };
    }
    @:keep
    static public function _decl( _p:Ref<T_printer>, _decl:stdgo.go.ast.Ast.Decl):Void {
        {
            final __type__ = _decl;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BadDecl>))) {
                var _d:Ref<stdgo.go.ast.Ast.BadDecl> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BadDecl>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BadDecl>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BadDecl>) : __type__.__underlying__().value;
                _p._setPos(_d.pos());
                _p._print(Go.toInterface(("BadDecl" : GoString)));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.GenDecl>))) {
                var _d:Ref<stdgo.go.ast.Ast.GenDecl> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                _p._genDecl(_d);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.FuncDecl>))) {
                var _d:Ref<stdgo.go.ast.Ast.FuncDecl> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                _p._funcDecl(_d);
            } else {
                var _d:stdgo.go.ast.Ast.Decl = __type__ == null ? (null : stdgo.go.ast.Ast.Decl) : cast __type__;
                throw Go.toInterface(("unreachable" : GoString));
            };
        };
    }
    @:keep
    static public function _funcDecl( _p:Ref<T_printer>, _d:Ref<stdgo.go.ast.Ast.FuncDecl>):Void {
        _p._setComment(_d.doc);
        _p._setPos(_d.pos());
        _p._print(Go.toInterface(Go.asInterface((71 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
        var _startCol:GoInt = _p._out.column - (("func " : GoString).length);
        if (_d.recv != null) {
            _p._parameters(_d.recv, (0 : T_paramMode));
            _p._print(Go.toInterface((32 : T_whiteSpace)));
        };
        _p._expr(Go.asInterface(_d.name));
        _p._signature(_d.type);
        _p._funcBody(_p._distanceFrom(_d.pos(), _startCol), (11 : T_whiteSpace), _d.body);
    }
    /**
        // distanceFrom returns the column difference between p.out (the current output
        // position) and startOutCol. If the start position is on a different line from
        // the current position (or either is unknown), the result is infinity.
    **/
    @:keep
    static public function _distanceFrom( _p:Ref<T_printer>, _startPos:stdgo.go.token.Token.Pos, _startOutCol:GoInt):GoInt {
        if ((_startPos.isValid() && _p._pos.isValid()) && (_p._posFor(_startPos).line == _p._pos.line)) {
            return _p._out.column - _startOutCol;
        };
        return (1073741824 : GoInt);
    }
    /**
        // funcBody prints a function body following a function header of given headerSize.
        // If the header's and block's size are "small enough" and the block is "simple enough",
        // the block is printed on the current line, without line breaks, spaced from the header
        // by sep. Otherwise the block's opening "{" is printed on the current line, followed by
        // lines for the block's statements and its closing "}".
    **/
    @:keep
    static public function _funcBody( _p:Ref<T_printer>, _headerSize:GoInt, _sep:T_whiteSpace, _b:Ref<stdgo.go.ast.Ast.BlockStmt>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        if (_b == null) {
            return;
        };
        try {
            {
                var _a0 = _p._level;
                __deferstack__.unshift(() -> {
                    var a = function(_level:GoInt):Void {
                        _p._level = _level;
                    };
                    a(_a0);
                });
            };
            _p._level = (0 : GoInt);
            {};
            if ((_headerSize + _p._bodySize(_b, (100 : GoInt))) <= (100 : GoInt)) {
                _p._print(Go.toInterface(_sep));
                _p._setPos(_b.lbrace);
                _p._print(Go.toInterface(Go.asInterface((51 : stdgo.go.token.Token.Token))));
                if ((_b.list.length) > (0 : GoInt)) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                    for (_i => _s in _b.list) {
                        if (_i > (0 : GoInt)) {
                            _p._print(Go.toInterface(Go.asInterface((57 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                        };
                        _p._stmt(_s, _i == (_b.list.length - (1 : GoInt)));
                    };
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                };
                _p._print(Go.toInterface((2 : T_pmode)));
                _p._setPos(_b.rbrace);
                _p._print(Go.toInterface(Go.asInterface((56 : stdgo.go.token.Token.Token))), Go.toInterface((2 : T_pmode)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_sep != ((0 : T_whiteSpace))) {
                _p._print(Go.toInterface((32 : T_whiteSpace)));
            };
            _p._block(_b, (1 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
    /**
        // bodySize is like nodeSize but it is specialized for *ast.BlockStmt's.
    **/
    @:keep
    static public function _bodySize( _p:Ref<T_printer>, _b:Ref<stdgo.go.ast.Ast.BlockStmt>, _maxSize:GoInt):GoInt {
        var _pos1:stdgo.go.token.Token.Pos = _b.pos();
        var _pos2:stdgo.go.token.Token.Pos = _b.rbrace;
        if ((_pos1.isValid() && _pos2.isValid()) && (_p._lineFor(_pos1) != _p._lineFor(_pos2))) {
            return _maxSize + (1 : GoInt);
        };
        if ((_b.list.length) > (5 : GoInt)) {
            return _maxSize + (1 : GoInt);
        };
        var _bodySize:GoInt = _p._commentSizeBefore((_p._posFor(_pos2) == null ? null : _p._posFor(_pos2).__copy__()));
        for (_i => _s in _b.list) {
            if (_bodySize > _maxSize) {
                break;
            };
            if (_i > (0 : GoInt)) {
                _bodySize = _bodySize + ((2 : GoInt));
            };
            _bodySize = _bodySize + (_p._nodeSize(_s, _maxSize));
        };
        return _bodySize;
    }
    /**
        // numLines returns the number of lines spanned by node n in the original source.
    **/
    @:keep
    static public function _numLines( _p:Ref<T_printer>, _n:stdgo.go.ast.Ast.Node):GoInt {
        {
            var _from:stdgo.go.token.Token.Pos = _n.pos();
            if (_from.isValid()) {
                {
                    var _to:stdgo.go.token.Token.Pos = _n.end();
                    if (_to.isValid()) {
                        return (_p._lineFor(_to) - _p._lineFor(_from)) + (1 : GoInt);
                    };
                };
            };
        };
        return (1073741824 : GoInt);
    }
    /**
        // nodeSize determines the size of n in chars after formatting.
        // The result is <= maxSize if the node fits on one line with at
        // most maxSize chars and the formatted output doesn't contain
        // any control chars. Otherwise, the result is > maxSize.
    **/
    @:keep
    static public function _nodeSize( _p:Ref<T_printer>, _n:stdgo.go.ast.Ast.Node, _maxSize:GoInt):GoInt {
        var _size:GoInt = (0 : GoInt);
        {
            var __tmp__ = (_p._nodeSizes != null && _p._nodeSizes.__exists__(_n) ? { value : _p._nodeSizes[_n], ok : true } : { value : (0 : GoInt), ok : false }), _size:GoInt = __tmp__.value, _found:Bool = __tmp__.ok;
            if (_found) {
                return _size;
            };
        };
        _size = _maxSize + (1 : GoInt);
        _p._nodeSizes[_n] = _size;
        var _cfg:Config = ({ mode : (("1" : GoUInt) : Mode) } : Config);
        var _counter:T_sizeCounter = ({} : T_sizeCounter);
        {
            var _err:Error = _cfg._fprint(Go.asInterface((_counter : Ref<T_sizeCounter>)), _p._fset, Go.toInterface(_n), _p._nodeSizes);
            if (_err != null) {
                return _size;
            };
        };
        if ((_counter._size <= _maxSize) && !_counter._hasNewline) {
            _size = _counter._size;
            _p._nodeSizes[_n] = _size;
        };
        return _size;
    }
    @:keep
    static public function _genDecl( _p:Ref<T_printer>, _d:Ref<stdgo.go.ast.Ast.GenDecl>):Void {
        _p._setComment(_d.doc);
        _p._setPos(_d.pos());
        _p._print(Go.toInterface(Go.asInterface(_d.tok)), Go.toInterface((32 : T_whiteSpace)));
        if (_d.lparen.isValid() || (_d.specs.length > (1 : GoInt))) {
            _p._setPos(_d.lparen);
            _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))));
            {
                var _n:GoInt = (_d.specs.length);
                if (_n > (0 : GoInt)) {
                    _p._print(Go.toInterface((62 : T_whiteSpace)), Go.toInterface((12 : T_whiteSpace)));
                    if ((_n > (1 : GoInt)) && ((_d.tok == (64 : stdgo.go.token.Token.Token)) || (_d.tok == (85 : stdgo.go.token.Token.Token)))) {
                        var _keepType = _keepTypeColumn(_d.specs);
                        var _line:GoInt = (0 : GoInt);
                        for (_i => _s in _d.specs) {
                            if (_i > (0 : GoInt)) {
                                _p._linebreak(_p._lineFor(_s.pos()), (1 : GoInt), (0 : T_whiteSpace), _p._linesFrom(_line) > (0 : GoInt));
                            };
                            _p._recordLine(Go.pointer(_line));
                            _p._valueSpec((Go.typeAssert((Go.toInterface(_s) : Ref<stdgo.go.ast.Ast.ValueSpec>)) : Ref<stdgo.go.ast.Ast.ValueSpec>), _keepType[(_i : GoInt)]);
                        };
                    } else {
                        var _line:GoInt = (0 : GoInt);
                        for (_i => _s in _d.specs) {
                            if (_i > (0 : GoInt)) {
                                _p._linebreak(_p._lineFor(_s.pos()), (1 : GoInt), (0 : T_whiteSpace), _p._linesFrom(_line) > (0 : GoInt));
                            };
                            _p._recordLine(Go.pointer(_line));
                            _p._spec(_s, _n, false);
                        };
                    };
                    _p._print(Go.toInterface((60 : T_whiteSpace)), Go.toInterface((12 : T_whiteSpace)));
                };
            };
            _p._setPos(_d.rparen);
            _p._print(Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
        } else if ((_d.specs.length) > (0 : GoInt)) {
            _p._spec(_d.specs[(0 : GoInt)], (1 : GoInt), true);
        };
    }
    /**
        // The parameter n is the number of specs in the group. If doIndent is set,
        // multi-line identifier lists in the spec are indented when the first
        // linebreak is encountered.
    **/
    @:keep
    static public function _spec( _p:Ref<T_printer>, _spec:stdgo.go.ast.Ast.Spec, _n:GoInt, _doIndent:Bool):Void {
        {
            final __type__ = _spec;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ImportSpec>))) {
                var _s:Ref<stdgo.go.ast.Ast.ImportSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                _p._setComment(_s.doc);
                if (_s.name != null) {
                    _p._expr(Go.asInterface(_s.name));
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                };
                _p._expr(Go.asInterface(_sanitizeImportPath(_s.path)));
                _p._setComment(_s.comment);
                _p._setPos(_s.endPos);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ValueSpec>))) {
                var _s:Ref<stdgo.go.ast.Ast.ValueSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                if (_n != ((1 : GoInt))) {
                    _p._internalError(Go.toInterface(("expected n = 1; got" : GoString)), Go.toInterface(_n));
                };
                _p._setComment(_s.doc);
                _p._identList(_s.names, _doIndent);
                if (_s.type != null) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                    _p._expr(_s.type);
                };
                if (_s.values != null) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)), Go.toInterface(Go.asInterface((42 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                    _p._exprList((0 : stdgo.go.token.Token.Pos), _s.values, (1 : GoInt), (("0" : GoUInt) : T_exprListMode), (0 : stdgo.go.token.Token.Pos), false);
                };
                _p._setComment(_s.comment);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.TypeSpec>))) {
                var _s:Ref<stdgo.go.ast.Ast.TypeSpec> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                _p._setComment(_s.doc);
                _p._expr(Go.asInterface(_s.name));
                if (_s.typeParams != null) {
                    _p._parameters(_s.typeParams, (2 : T_paramMode));
                };
                if (_n == ((1 : GoInt))) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                } else {
                    _p._print(Go.toInterface((11 : T_whiteSpace)));
                };
                if (_s.assign.isValid()) {
                    _p._print(Go.toInterface(Go.asInterface((42 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                };
                _p._expr(_s.type);
                _p._setComment(_s.comment);
            } else {
                var _s:stdgo.go.ast.Ast.Spec = __type__ == null ? (null : stdgo.go.ast.Ast.Spec) : cast __type__;
                throw Go.toInterface(("unreachable" : GoString));
            };
        };
    }
    @:keep
    static public function _valueSpec( _p:Ref<T_printer>, _s:Ref<stdgo.go.ast.Ast.ValueSpec>, _keepType:Bool):Void {
        _p._setComment(_s.doc);
        _p._identList(_s.names, false);
        var _extraTabs:GoInt = (3 : GoInt);
        if ((_s.type != null) || _keepType) {
            _p._print(Go.toInterface((11 : T_whiteSpace)));
            _extraTabs--;
        };
        if (_s.type != null) {
            _p._expr(_s.type);
        };
        if (_s.values != null) {
            _p._print(Go.toInterface((11 : T_whiteSpace)), Go.toInterface(Go.asInterface((42 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
            _p._exprList((0 : stdgo.go.token.Token.Pos), _s.values, (1 : GoInt), (("0" : GoUInt) : T_exprListMode), (0 : stdgo.go.token.Token.Pos), false);
            _extraTabs--;
        };
        if (_s.comment != null) {
            Go.cfor(_extraTabs > (0 : GoInt), _extraTabs--, {
                _p._print(Go.toInterface((11 : T_whiteSpace)));
            });
            _p._setComment(_s.comment);
        };
    }
    @:keep
    static public function _stmt( _p:Ref<T_printer>, _stmt:stdgo.go.ast.Ast.Stmt, _nextIsRBrace:Bool):Void {
        _p._setPos(_stmt.pos());
        {
            final __type__ = _stmt;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BadStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.BadStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BadStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BadStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BadStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(("BadStmt" : GoString)));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.DeclStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.DeclStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.DeclStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.DeclStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.DeclStmt>) : __type__.__underlying__().value;
                _p._decl(_s.decl);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.EmptyStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.EmptyStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.EmptyStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.EmptyStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.EmptyStmt>) : __type__.__underlying__().value;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.LabeledStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.LabeledStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.LabeledStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.LabeledStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.LabeledStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface((60 : T_whiteSpace)));
                _p._expr(Go.asInterface(_s.label));
                _p._setPos(_s.colon);
                _p._print(Go.toInterface(Go.asInterface((58 : stdgo.go.token.Token.Token))), Go.toInterface((62 : T_whiteSpace)));
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_s.stmt) : Ref<stdgo.go.ast.Ast.EmptyStmt>)) : Ref<stdgo.go.ast.Ast.EmptyStmt>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.ast.Ast.EmptyStmt>), ok : false };
                    }, _e = __tmp__.value, _isEmpty = __tmp__.ok;
                    if (_isEmpty) {
                        if (!_nextIsRBrace) {
                            _p._print(Go.toInterface((10 : T_whiteSpace)));
                            _p._setPos(_e.pos());
                            _p._print(Go.toInterface(Go.asInterface((57 : stdgo.go.token.Token.Token))));
                            break;
                        };
                    } else {
                        _p._linebreak(_p._lineFor(_s.stmt.pos()), (1 : GoInt), (0 : T_whiteSpace), true);
                    };
                };
                _p._stmt(_s.stmt, _nextIsRBrace);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ExprStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.ExprStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ExprStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ExprStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ExprStmt>) : __type__.__underlying__().value;
                {};
                _p._expr0(_s.x, (1 : GoInt));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SendStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.SendStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SendStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.SendStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SendStmt>) : __type__.__underlying__().value;
                {};
                _p._expr0(_s.chan, (1 : GoInt));
                _p._print(Go.toInterface((32 : T_whiteSpace)));
                _p._setPos(_s.arrow);
                _p._print(Go.toInterface(Go.asInterface((36 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                _p._expr0(_s.value, (1 : GoInt));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.IncDecStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.IncDecStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IncDecStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.IncDecStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IncDecStmt>) : __type__.__underlying__().value;
                {};
                _p._expr0(_s.x, (2 : GoInt));
                _p._setPos(_s.tokPos);
                _p._print(Go.toInterface(Go.asInterface(_s.tok)));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.AssignStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.AssignStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.AssignStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.AssignStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.AssignStmt>) : __type__.__underlying__().value;
                var _depth:GoInt = (1 : GoInt);
                if ((_s.lhs.length > (1 : GoInt)) && (_s.rhs.length > (1 : GoInt))) {
                    _depth++;
                };
                _p._exprList(_s.pos(), _s.lhs, _depth, (("0" : GoUInt) : T_exprListMode), _s.tokPos, false);
                _p._print(Go.toInterface((32 : T_whiteSpace)));
                _p._setPos(_s.tokPos);
                _p._print(Go.toInterface(Go.asInterface(_s.tok)), Go.toInterface((32 : T_whiteSpace)));
                _p._exprList(_s.tokPos, _s.rhs, _depth, (("0" : GoUInt) : T_exprListMode), (0 : stdgo.go.token.Token.Pos), false);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.GoStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.GoStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GoStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.GoStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.GoStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((72 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                _p._expr(Go.asInterface(_s.call));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.DeferStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.DeferStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.DeferStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.DeferStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.DeferStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((67 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                _p._expr(Go.asInterface(_s.call));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ReturnStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.ReturnStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ReturnStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ReturnStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ReturnStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((80 : stdgo.go.token.Token.Token))));
                if (_s.results != null) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                    if (_p._indentList(_s.results)) {
                        _p._print(Go.toInterface((62 : T_whiteSpace)));
                        _p._exprList((0 : stdgo.go.token.Token.Pos), _s.results, (1 : GoInt), (("2" : GoUInt) : T_exprListMode), (0 : stdgo.go.token.Token.Pos), false);
                        _p._print(Go.toInterface((60 : T_whiteSpace)));
                    } else {
                        _p._exprList((0 : stdgo.go.token.Token.Pos), _s.results, (1 : GoInt), (("0" : GoUInt) : T_exprListMode), (0 : stdgo.go.token.Token.Pos), false);
                    };
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BranchStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.BranchStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BranchStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BranchStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BranchStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface(_s.tok)));
                if (_s.label != null) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                    _p._expr(Go.asInterface(_s.label));
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BlockStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.BlockStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BlockStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BlockStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BlockStmt>) : __type__.__underlying__().value;
                _p._block(_s, (1 : GoInt));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.IfStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.IfStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IfStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.IfStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IfStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((74 : stdgo.go.token.Token.Token))));
                _p._controlClause(false, _s.init, _s.cond, (null : stdgo.go.ast.Ast.Stmt));
                _p._block(_s.body, (1 : GoInt));
                if (_s.else_ != null) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)), Go.toInterface(Go.asInterface((68 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                    {
                        final __type__ = _s.else_;
                        if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BlockStmt>)) || Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.IfStmt>))) {
                            _p._stmt(_s.else_, _nextIsRBrace);
                        } else {
                            _p._print(Go.toInterface(Go.asInterface((51 : stdgo.go.token.Token.Token))), Go.toInterface((62 : T_whiteSpace)), Go.toInterface((12 : T_whiteSpace)));
                            _p._stmt(_s.else_, true);
                            _p._print(Go.toInterface((60 : T_whiteSpace)), Go.toInterface((12 : T_whiteSpace)), Go.toInterface(Go.asInterface((56 : stdgo.go.token.Token.Token))));
                        };
                    };
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.CaseClause>))) {
                var _s:Ref<stdgo.go.ast.Ast.CaseClause> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CaseClause>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.CaseClause>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CaseClause>) : __type__.__underlying__().value;
                if (_s.list != null) {
                    _p._print(Go.toInterface(Go.asInterface((62 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                    _p._exprList(_s.pos(), _s.list, (1 : GoInt), (("0" : GoUInt) : T_exprListMode), _s.colon, false);
                } else {
                    _p._print(Go.toInterface(Go.asInterface((66 : stdgo.go.token.Token.Token))));
                };
                _p._setPos(_s.colon);
                _p._print(Go.toInterface(Go.asInterface((58 : stdgo.go.token.Token.Token))));
                _p._stmtList(_s.body, (1 : GoInt), _nextIsRBrace);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SwitchStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.SwitchStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SwitchStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.SwitchStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SwitchStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((83 : stdgo.go.token.Token.Token))));
                _p._controlClause(false, _s.init, _s.tag, (null : stdgo.go.ast.Ast.Stmt));
                _p._block(_s.body, (0 : GoInt));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.TypeSwitchStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.TypeSwitchStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.TypeSwitchStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeSwitchStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((83 : stdgo.go.token.Token.Token))));
                if (_s.init != null) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                    _p._stmt(_s.init, false);
                    _p._print(Go.toInterface(Go.asInterface((57 : stdgo.go.token.Token.Token))));
                };
                _p._print(Go.toInterface((32 : T_whiteSpace)));
                _p._stmt(_s.assign, false);
                _p._print(Go.toInterface((32 : T_whiteSpace)));
                _p._block(_s.body, (0 : GoInt));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.CommClause>))) {
                var _s:Ref<stdgo.go.ast.Ast.CommClause> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CommClause>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.CommClause>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CommClause>) : __type__.__underlying__().value;
                if (_s.comm != null) {
                    _p._print(Go.toInterface(Go.asInterface((62 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                    _p._stmt(_s.comm, false);
                } else {
                    _p._print(Go.toInterface(Go.asInterface((66 : stdgo.go.token.Token.Token))));
                };
                _p._setPos(_s.colon);
                _p._print(Go.toInterface(Go.asInterface((58 : stdgo.go.token.Token.Token))));
                _p._stmtList(_s.body, (1 : GoInt), _nextIsRBrace);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SelectStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.SelectStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.SelectStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((81 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                var _body = _s.body;
                if ((_body.list.length == (0 : GoInt)) && !_p._commentBefore((_p._posFor(_body.rbrace) == null ? null : _p._posFor(_body.rbrace).__copy__()))) {
                    _p._setPos(_body.lbrace);
                    _p._print(Go.toInterface(Go.asInterface((51 : stdgo.go.token.Token.Token))));
                    _p._setPos(_body.rbrace);
                    _p._print(Go.toInterface(Go.asInterface((56 : stdgo.go.token.Token.Token))));
                } else {
                    _p._block(_body, (0 : GoInt));
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ForStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.ForStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ForStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ForStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ForStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((70 : stdgo.go.token.Token.Token))));
                _p._controlClause(true, _s.init, _s.cond, _s.post);
                _p._block(_s.body, (1 : GoInt));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.RangeStmt>))) {
                var _s:Ref<stdgo.go.ast.Ast.RangeStmt> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.RangeStmt>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.RangeStmt>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.RangeStmt>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((70 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                if (_s.key != null) {
                    _p._expr(_s.key);
                    if (_s.value != null) {
                        _p._setPos(_s.value.pos());
                        _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                        _p._expr(_s.value);
                    };
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                    _p._setPos(_s.tokPos);
                    _p._print(Go.toInterface(Go.asInterface(_s.tok)), Go.toInterface((32 : T_whiteSpace)));
                };
                _p._print(Go.toInterface(Go.asInterface((79 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                _p._expr(_stripParens(_s.x));
                _p._print(Go.toInterface((32 : T_whiteSpace)));
                _p._block(_s.body, (1 : GoInt));
            } else {
                var _s:stdgo.go.ast.Ast.Stmt = __type__ == null ? (null : stdgo.go.ast.Ast.Stmt) : cast __type__;
                throw Go.toInterface(("unreachable" : GoString));
            };
        };
    }
    /**
        // indentList reports whether an expression list would look better if it
        // were indented wholesale (starting with the very first element, rather
        // than starting at the first line break).
    **/
    @:keep
    static public function _indentList( _p:Ref<T_printer>, _list:Slice<stdgo.go.ast.Ast.Expr>):Bool {
        if ((_list.length) >= (2 : GoInt)) {
            var _b:GoInt = _p._lineFor(_list[(0 : GoInt)].pos());
            var _e:GoInt = _p._lineFor(_list[((_list.length) - (1 : GoInt) : GoInt)].end());
            if (((0 : GoInt) < _b) && (_b < _e)) {
                var _n:GoInt = (0 : GoInt);
                var _line:GoInt = _b;
                for (_0 => _x in _list) {
                    var _xb:GoInt = _p._lineFor(_x.pos());
                    var _xe:GoInt = _p._lineFor(_x.end());
                    if (_line < _xb) {
                        return true;
                    };
                    if (_xb < _xe) {
                        _n++;
                    };
                    _line = _xe;
                };
                return _n > (1 : GoInt);
            };
        };
        return false;
    }
    @:keep
    static public function _controlClause( _p:Ref<T_printer>, _isForStmt:Bool, _init:stdgo.go.ast.Ast.Stmt, _expr:stdgo.go.ast.Ast.Expr, _post:stdgo.go.ast.Ast.Stmt):Void {
        _p._print(Go.toInterface((32 : T_whiteSpace)));
        var _needsBlank:Bool = false;
        if ((_init == null) && (_post == null)) {
            if (_expr != null) {
                _p._expr(_stripParens(_expr));
                _needsBlank = true;
            };
        } else {
            if (_init != null) {
                _p._stmt(_init, false);
            };
            _p._print(Go.toInterface(Go.asInterface((57 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
            if (_expr != null) {
                _p._expr(_stripParens(_expr));
                _needsBlank = true;
            };
            if (_isForStmt) {
                _p._print(Go.toInterface(Go.asInterface((57 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                _needsBlank = false;
                if (_post != null) {
                    _p._stmt(_post, false);
                    _needsBlank = true;
                };
            };
        };
        if (_needsBlank) {
            _p._print(Go.toInterface((32 : T_whiteSpace)));
        };
    }
    /**
        // block prints an *ast.BlockStmt; it always spans at least two lines.
    **/
    @:keep
    static public function _block( _p:Ref<T_printer>, _b:Ref<stdgo.go.ast.Ast.BlockStmt>, _nindent:GoInt):Void {
        _p._setPos(_b.lbrace);
        _p._print(Go.toInterface(Go.asInterface((51 : stdgo.go.token.Token.Token))));
        _p._stmtList(_b.list, _nindent, true);
        _p._linebreak(_p._lineFor(_b.rbrace), (1 : GoInt), (0 : T_whiteSpace), true);
        _p._setPos(_b.rbrace);
        _p._print(Go.toInterface(Go.asInterface((56 : stdgo.go.token.Token.Token))));
    }
    /**
        // Print the statement list indented, but without a newline after the last statement.
        // Extra line breaks between statements in the source are respected but at most one
        // empty line is printed between statements.
    **/
    @:keep
    static public function _stmtList( _p:Ref<T_printer>, _list:Slice<stdgo.go.ast.Ast.Stmt>, _nindent:GoInt, _nextIsRBrace:Bool):Void {
        if (_nindent > (0 : GoInt)) {
            _p._print(Go.toInterface((62 : T_whiteSpace)));
        };
        var _line:GoInt = (0 : GoInt);
        var _i:GoInt = (0 : GoInt);
        for (_0 => _s in _list) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_s) : Ref<stdgo.go.ast.Ast.EmptyStmt>)) : Ref<stdgo.go.ast.Ast.EmptyStmt>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.EmptyStmt>), ok : false };
                }, _1 = __tmp__.value, _isEmpty = __tmp__.ok;
                if (!_isEmpty) {
                    if ((_p._output.length) > (0 : GoInt)) {
                        _p._linebreak(_p._lineFor(_s.pos()), (1 : GoInt), (0 : T_whiteSpace), ((_i == (0 : GoInt)) || (_nindent == (0 : GoInt))) || (_p._linesFrom(_line) > (0 : GoInt)));
                    };
                    _p._recordLine(Go.pointer(_line));
                    _p._stmt(_s, _nextIsRBrace && (_i == (_list.length - (1 : GoInt))));
                    {
                        var _t:stdgo.go.ast.Ast.Stmt = _s;
                        while (true) {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((Go.toInterface(_t) : Ref<stdgo.go.ast.Ast.LabeledStmt>)) : Ref<stdgo.go.ast.Ast.LabeledStmt>), ok : true };
                            } catch(_) {
                                { value : (null : Ref<stdgo.go.ast.Ast.LabeledStmt>), ok : false };
                            }, _lt = __tmp__.value, _10 = __tmp__.ok;
                            if (_lt == null) {
                                break;
                            };
                            _line++;
                            _t = _lt.stmt;
                        };
                    };
                    _i++;
                };
            };
        };
        if (_nindent > (0 : GoInt)) {
            _p._print(Go.toInterface((60 : T_whiteSpace)));
        };
    }
    @:keep
    static public function _expr( _p:Ref<T_printer>, _x:stdgo.go.ast.Ast.Expr):Void {
        {};
        _p._expr1(_x, (0 : GoInt), (1 : GoInt));
    }
    @:keep
    static public function _expr0( _p:Ref<T_printer>, _x:stdgo.go.ast.Ast.Expr, _depth:GoInt):Void {
        _p._expr1(_x, (0 : GoInt), _depth);
    }
    /**
        // selectorExpr handles an *ast.SelectorExpr node and reports whether x spans
        // multiple lines.
    **/
    @:keep
    static public function _selectorExpr( _p:Ref<T_printer>, _x:Ref<stdgo.go.ast.Ast.SelectorExpr>, _depth:GoInt, _isMethod:Bool):Bool {
        _p._expr1(_x.x, (7 : GoInt), _depth);
        _p._print(Go.toInterface(Go.asInterface((53 : stdgo.go.token.Token.Token))));
        {
            var _line:GoInt = _p._lineFor(_x.sel.pos());
            if (_p._pos.isValid() && (_p._pos.line < _line)) {
                _p._print(Go.toInterface((62 : T_whiteSpace)), Go.toInterface((10 : T_whiteSpace)));
                _p._setPos(_x.sel.pos());
                _p._print(Go.toInterface(Go.asInterface(_x.sel)));
                if (!_isMethod) {
                    _p._print(Go.toInterface((60 : T_whiteSpace)));
                };
                return true;
            };
        };
        _p._setPos(_x.sel.pos());
        _p._print(Go.toInterface(Go.asInterface(_x.sel)));
        return false;
    }
    @:keep
    static public function _possibleSelectorExpr( _p:Ref<T_printer>, _expr:stdgo.go.ast.Ast.Expr, _prec1:GoInt, _depth:GoInt):Bool {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_expr) : Ref<stdgo.go.ast.Ast.SelectorExpr>)) : Ref<stdgo.go.ast.Ast.SelectorExpr>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.ast.Ast.SelectorExpr>), ok : false };
            }, _x = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _p._selectorExpr(_x, _depth, true);
            };
        };
        _p._expr1(_expr, _prec1, _depth);
        return false;
    }
    @:keep
    static public function _expr1( _p:Ref<T_printer>, _expr:stdgo.go.ast.Ast.Expr, _prec1:GoInt, _depth:GoInt):Void {
        _p._setPos(_expr.pos());
        {
            final __type__ = _expr;
            if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BadExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.BadExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BadExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BadExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BadExpr>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(("BadExpr" : GoString)));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Ident>))) {
                var _x:Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface(_x)));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BinaryExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                if (_depth < (1 : GoInt)) {
                    _p._internalError(Go.toInterface(("depth < 1:" : GoString)), Go.toInterface(_depth));
                    _depth = (1 : GoInt);
                };
                _p._binaryExpr(_x, _prec1, _cutoff(_x, _depth), _depth);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.KeyValueExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.KeyValueExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.KeyValueExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.KeyValueExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.KeyValueExpr>) : __type__.__underlying__().value;
                _p._expr(_x.key);
                _p._setPos(_x.colon);
                _p._print(Go.toInterface(Go.asInterface((58 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                _p._expr(_x.value);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.StarExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.StarExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.StarExpr>) : __type__.__underlying__().value;
                {};
                if ((6 : GoInt) < _prec1) {
                    _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))));
                    _p._print(Go.toInterface(Go.asInterface((14 : stdgo.go.token.Token.Token))));
                    _p._expr(_x.x);
                    _p._print(Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
                } else {
                    _p._print(Go.toInterface(Go.asInterface((14 : stdgo.go.token.Token.Token))));
                    _p._expr(_x.x);
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.UnaryExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.UnaryExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.UnaryExpr>) : __type__.__underlying__().value;
                {};
                if ((6 : GoInt) < _prec1) {
                    _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))));
                    _p._expr(Go.asInterface(_x));
                    _p._print(Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
                } else {
                    _p._print(Go.toInterface(Go.asInterface(_x.op)));
                    if (_x.op == ((79 : stdgo.go.token.Token.Token))) {
                        _p._print(Go.toInterface((32 : T_whiteSpace)));
                    };
                    _p._expr1(_x.x, (6 : GoInt), _depth);
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BasicLit>))) {
                var _x:Ref<stdgo.go.ast.Ast.BasicLit> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__().value;
                if (_p.config.mode & (("1073741824" : GoUInt) : Mode) != ((("0" : GoUInt) : Mode))) {
                    _x = _normalizedNumber(_x);
                };
                _p._print(Go.toInterface(Go.asInterface(_x)));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.FuncLit>))) {
                var _x:Ref<stdgo.go.ast.Ast.FuncLit> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncLit>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.FuncLit>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncLit>) : __type__.__underlying__().value;
                _p._setPos(_x.type.pos());
                _p._print(Go.toInterface(Go.asInterface((71 : stdgo.go.token.Token.Token))));
                var _startCol:GoInt = _p._out.column - (("func" : GoString).length);
                _p._signature(_x.type);
                _p._funcBody(_p._distanceFrom(_x.type.pos(), _startCol), (32 : T_whiteSpace), _x.body);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ParenExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.ParenExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_x.x) : Ref<stdgo.go.ast.Ast.ParenExpr>)) : Ref<stdgo.go.ast.Ast.ParenExpr>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.ast.Ast.ParenExpr>), ok : false };
                    }, _16 = __tmp__.value, _hasParens = __tmp__.ok;
                    if (_hasParens) {
                        _p._expr0(_x.x, _depth);
                    } else {
                        _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))));
                        _p._expr0(_x.x, _reduceDepth(_depth));
                        _p._setPos(_x.rparen);
                        _p._print(Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
                    };
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SelectorExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                _p._selectorExpr(_x, _depth, false);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.TypeAssertExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.TypeAssertExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.TypeAssertExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.TypeAssertExpr>) : __type__.__underlying__().value;
                _p._expr1(_x.x, (7 : GoInt), _depth);
                _p._print(Go.toInterface(Go.asInterface((53 : stdgo.go.token.Token.Token))));
                _p._setPos(_x.lparen);
                _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))));
                if (_x.type != null) {
                    _p._expr(_x.type);
                } else {
                    _p._print(Go.toInterface(Go.asInterface((84 : stdgo.go.token.Token.Token))));
                };
                _p._setPos(_x.rparen);
                _p._print(Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.IndexExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.IndexExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IndexExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.IndexExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IndexExpr>) : __type__.__underlying__().value;
                _p._expr1(_x.x, (7 : GoInt), (1 : GoInt));
                _p._setPos(_x.lbrack);
                _p._print(Go.toInterface(Go.asInterface((50 : stdgo.go.token.Token.Token))));
                _p._expr0(_x.index, _depth + (1 : GoInt));
                _p._setPos(_x.rbrack);
                _p._print(Go.toInterface(Go.asInterface((55 : stdgo.go.token.Token.Token))));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.IndexListExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.IndexListExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IndexListExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.IndexListExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IndexListExpr>) : __type__.__underlying__().value;
                _p._expr1(_x.x, (7 : GoInt), (1 : GoInt));
                _p._setPos(_x.lbrack);
                _p._print(Go.toInterface(Go.asInterface((50 : stdgo.go.token.Token.Token))));
                _p._exprList(_x.lbrack, _x.indices, _depth + (1 : GoInt), (("1" : GoUInt) : T_exprListMode), _x.rbrack, false);
                _p._setPos(_x.rbrack);
                _p._print(Go.toInterface(Go.asInterface((55 : stdgo.go.token.Token.Token))));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.SliceExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.SliceExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SliceExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.SliceExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.SliceExpr>) : __type__.__underlying__().value;
                _p._expr1(_x.x, (7 : GoInt), (1 : GoInt));
                _p._setPos(_x.lbrack);
                _p._print(Go.toInterface(Go.asInterface((50 : stdgo.go.token.Token.Token))));
                var _indices = (new Slice<stdgo.go.ast.Ast.Expr>(0, 0, _x.low, _x.high) : Slice<stdgo.go.ast.Ast.Expr>);
                if (_x.max != null) {
                    _indices = _indices.__appendref__(_x.max);
                };
                var _needsBlanks:Bool = false;
                if (_depth <= (1 : GoInt)) {
                    var _indexCount:GoInt = (0 : GoInt);
                    var _hasBinaries:Bool = false;
                    for (_17 => _x in _indices) {
                        if (_x != null) {
                            _indexCount++;
                            if (_isBinary(_x)) {
                                _hasBinaries = true;
                            };
                        };
                    };
                    if ((_indexCount > (1 : GoInt)) && _hasBinaries) {
                        _needsBlanks = true;
                    };
                };
                for (_i => _x in _indices) {
                    if (_i > (0 : GoInt)) {
                        if ((_indices[(_i - (1 : GoInt) : GoInt)] != null) && _needsBlanks) {
                            _p._print(Go.toInterface((32 : T_whiteSpace)));
                        };
                        _p._print(Go.toInterface(Go.asInterface((58 : stdgo.go.token.Token.Token))));
                        if ((_x != null) && _needsBlanks) {
                            _p._print(Go.toInterface((32 : T_whiteSpace)));
                        };
                    };
                    if (_x != null) {
                        _p._expr0(_x, _depth + (1 : GoInt));
                    };
                };
                _p._setPos(_x.rbrack);
                _p._print(Go.toInterface(Go.asInterface((55 : stdgo.go.token.Token.Token))));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.CallExpr>))) {
                var _x:Ref<stdgo.go.ast.Ast.CallExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.CallExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CallExpr>) : __type__.__underlying__().value;
                if ((_x.args.length) > (1 : GoInt)) {
                    _depth++;
                };
                var _wasIndented:Bool = false;
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_x.fun) : Ref<stdgo.go.ast.Ast.FuncType>)) : Ref<stdgo.go.ast.Ast.FuncType>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<stdgo.go.ast.Ast.FuncType>), ok : false };
                    }, _18 = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))));
                        _wasIndented = _p._possibleSelectorExpr(_x.fun, (7 : GoInt), _depth);
                        _p._print(Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
                    } else {
                        _wasIndented = _p._possibleSelectorExpr(_x.fun, (7 : GoInt), _depth);
                    };
                };
                _p._setPos(_x.lparen);
                _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))));
                if (_x.ellipsis.isValid()) {
                    _p._exprList(_x.lparen, _x.args, _depth, (("0" : GoUInt) : T_exprListMode), _x.ellipsis, false);
                    _p._setPos(_x.ellipsis);
                    _p._print(Go.toInterface(Go.asInterface((48 : stdgo.go.token.Token.Token))));
                    if (_x.rparen.isValid() && (_p._lineFor(_x.ellipsis) < _p._lineFor(_x.rparen))) {
                        _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))), Go.toInterface((12 : T_whiteSpace)));
                    };
                } else {
                    _p._exprList(_x.lparen, _x.args, _depth, (("1" : GoUInt) : T_exprListMode), _x.rparen, false);
                };
                _p._setPos(_x.rparen);
                _p._print(Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
                if (_wasIndented) {
                    _p._print(Go.toInterface((60 : T_whiteSpace)));
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.CompositeLit>))) {
                var _x:Ref<stdgo.go.ast.Ast.CompositeLit> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CompositeLit>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.CompositeLit>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.CompositeLit>) : __type__.__underlying__().value;
                if (_x.type != null) {
                    _p._expr1(_x.type, (7 : GoInt), _depth);
                };
                _p._level++;
                _p._setPos(_x.lbrace);
                _p._print(Go.toInterface(Go.asInterface((51 : stdgo.go.token.Token.Token))));
                _p._exprList(_x.lbrace, _x.elts, (1 : GoInt), (("1" : GoUInt) : T_exprListMode), _x.rbrace, _x.incomplete);
                var _mode:T_pmode = (2 : T_pmode);
                if ((_x.elts.length) > (0 : GoInt)) {
                    _mode = _mode | ((1 : T_pmode));
                };
                _p._print(Go.toInterface((62 : T_whiteSpace)), Go.toInterface((60 : T_whiteSpace)), Go.toInterface(_mode));
                _p._setPos(_x.rbrace);
                _p._print(Go.toInterface(Go.asInterface((56 : stdgo.go.token.Token.Token))), Go.toInterface(_mode));
                _p._level--;
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Ellipsis>))) {
                var _x:Ref<stdgo.go.ast.Ast.Ellipsis> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ellipsis>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Ellipsis>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ellipsis>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((48 : stdgo.go.token.Token.Token))));
                if (_x.elt != null) {
                    _p._expr(_x.elt);
                };
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ArrayType>))) {
                var _x:Ref<stdgo.go.ast.Ast.ArrayType> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ArrayType>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ArrayType>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ArrayType>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((50 : stdgo.go.token.Token.Token))));
                if (_x.len != null) {
                    _p._expr(_x.len);
                };
                _p._print(Go.toInterface(Go.asInterface((55 : stdgo.go.token.Token.Token))));
                _p._expr(_x.elt);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.StructType>))) {
                var _x:Ref<stdgo.go.ast.Ast.StructType> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.StructType>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.StructType>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.StructType>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((82 : stdgo.go.token.Token.Token))));
                _p._fieldList(_x.fields, true, _x.incomplete);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.FuncType>))) {
                var _x:Ref<stdgo.go.ast.Ast.FuncType> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncType>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.FuncType>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.FuncType>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((71 : stdgo.go.token.Token.Token))));
                _p._signature(_x);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.InterfaceType>))) {
                var _x:Ref<stdgo.go.ast.Ast.InterfaceType> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.InterfaceType>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.InterfaceType>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.InterfaceType>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((76 : stdgo.go.token.Token.Token))));
                _p._fieldList(_x.methods, false, _x.incomplete);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.MapType>))) {
                var _x:Ref<stdgo.go.ast.Ast.MapType> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.MapType>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.MapType>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.MapType>) : __type__.__underlying__().value;
                _p._print(Go.toInterface(Go.asInterface((77 : stdgo.go.token.Token.Token))), Go.toInterface(Go.asInterface((50 : stdgo.go.token.Token.Token))));
                _p._expr(_x.key);
                _p._print(Go.toInterface(Go.asInterface((55 : stdgo.go.token.Token.Token))));
                _p._expr(_x.value);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.ChanType>))) {
                var _x:Ref<stdgo.go.ast.Ast.ChanType> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ChanType>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.ChanType>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.ChanType>) : __type__.__underlying__().value;
                if (_x.dir == ((3 : stdgo.go.ast.Ast.ChanDir))) {
                    _p._print(Go.toInterface(Go.asInterface((63 : stdgo.go.token.Token.Token))));
                } else if (_x.dir == ((2 : stdgo.go.ast.Ast.ChanDir))) {
                    _p._print(Go.toInterface(Go.asInterface((36 : stdgo.go.token.Token.Token))), Go.toInterface(Go.asInterface((63 : stdgo.go.token.Token.Token))));
                } else if (_x.dir == ((1 : stdgo.go.ast.Ast.ChanDir))) {
                    _p._print(Go.toInterface(Go.asInterface((63 : stdgo.go.token.Token.Token))));
                    _p._setPos(_x.arrow);
                    _p._print(Go.toInterface(Go.asInterface((36 : stdgo.go.token.Token.Token))));
                };
                _p._print(Go.toInterface((32 : T_whiteSpace)));
                _p._expr(_x.value);
            } else {
                var _x:stdgo.go.ast.Ast.Expr = __type__ == null ? (null : stdgo.go.ast.Ast.Expr) : cast __type__;
                throw Go.toInterface(("unreachable" : GoString));
            };
        };
    }
    /**
        // Format the binary expression: decide the cutoff and then format.
        // Let's call depth == 1 Normal mode, and depth > 1 Compact mode.
        // (Algorithm suggestion by Russ Cox.)
        //
        // The precedences are:
        //
        //	5             *  /  %  <<  >>  &  &^
        //	4             +  -  |  ^
        //	3             ==  !=  <  <=  >  >=
        //	2             &&
        //	1             ||
        //
        // The only decision is whether there will be spaces around levels 4 and 5.
        // There are never spaces at level 6 (unary), and always spaces at levels 3 and below.
        //
        // To choose the cutoff, look at the whole expression but excluding primary
        // expressions (function calls, parenthesized exprs), and apply these rules:
        //
        //  1. If there is a binary operator with a right side unary operand
        //     that would clash without a space, the cutoff must be (in order):
        //
        //     /|*	6
        //     &&	6
        //     &^	6
        //     ++	5
        //     --	5
        //
        //     (Comparison operators always have spaces around them.)
        //
        //  2. If there is a mix of level 5 and level 4 operators, then the cutoff
        //     is 5 (use spaces to distinguish precedence) in Normal mode
        //     and 4 (never use spaces) in Compact mode.
        //
        //  3. If there are no level 4 operators or no level 5 operators, then the
        //     cutoff is 6 (always use spaces) in Normal mode
        //     and 4 (never use spaces) in Compact mode.
    **/
    @:keep
    static public function _binaryExpr( _p:Ref<T_printer>, _x:Ref<stdgo.go.ast.Ast.BinaryExpr>, _prec1:GoInt, _cutoff:GoInt, _depth:GoInt):Void {
        var _prec:GoInt = _x.op.precedence();
        if (_prec < _prec1) {
            _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))));
            _p._expr0(Go.asInterface(_x), _reduceDepth(_depth));
            _p._print(Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
            return;
        };
        var _printBlank:Bool = _prec < _cutoff;
        var _ws:T_whiteSpace = (62 : T_whiteSpace);
        _p._expr1(_x.x, _prec, _depth + _diffPrec(_x.x, _prec));
        if (_printBlank) {
            _p._print(Go.toInterface((32 : T_whiteSpace)));
        };
        var _xline:GoInt = _p._pos.line;
        var _yline:GoInt = _p._lineFor(_x.y.pos());
        _p._setPos(_x.opPos);
        _p._print(Go.toInterface(Go.asInterface(_x.op)));
        if (((_xline != _yline) && (_xline > (0 : GoInt))) && (_yline > (0 : GoInt))) {
            if (_p._linebreak(_yline, (1 : GoInt), _ws, true) > (0 : GoInt)) {
                _ws = (0 : T_whiteSpace);
                _printBlank = false;
            };
        };
        if (_printBlank) {
            _p._print(Go.toInterface((32 : T_whiteSpace)));
        };
        _p._expr1(_x.y, _prec + (1 : GoInt), _depth + (1 : GoInt));
        if (_ws == ((0 : T_whiteSpace))) {
            _p._print(Go.toInterface((60 : T_whiteSpace)));
        };
    }
    @:keep
    static public function _fieldList( _p:Ref<T_printer>, _fields:Ref<stdgo.go.ast.Ast.FieldList>, _isStruct:Bool, _isIncomplete:Bool):Void {
        var _lbrace:stdgo.go.token.Token.Pos = _fields.opening;
        var _list = _fields.list;
        var _rbrace:stdgo.go.token.Token.Pos = _fields.closing;
        var _hasComments:Bool = _isIncomplete || _p._commentBefore((_p._posFor(_rbrace) == null ? null : _p._posFor(_rbrace).__copy__()));
        var _srcIsOneLine:Bool = (_lbrace.isValid() && _rbrace.isValid()) && (_p._lineFor(_lbrace) == _p._lineFor(_rbrace));
        if (!_hasComments && _srcIsOneLine) {
            if ((_list.length) == ((0 : GoInt))) {
                _p._setPos(_lbrace);
                _p._print(Go.toInterface(Go.asInterface((51 : stdgo.go.token.Token.Token))));
                _p._setPos(_rbrace);
                _p._print(Go.toInterface(Go.asInterface((56 : stdgo.go.token.Token.Token))));
                return;
            } else if (_p._isOneLineFieldList(_list)) {
                _p._setPos(_lbrace);
                _p._print(Go.toInterface(Go.asInterface((51 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                var _f = _list[(0 : GoInt)];
                if (_isStruct) {
                    for (_i => _x in _f.names) {
                        if (_i > (0 : GoInt)) {
                            _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                        };
                        _p._expr(Go.asInterface(_x));
                    };
                    if ((_f.names.length) > (0 : GoInt)) {
                        _p._print(Go.toInterface((32 : T_whiteSpace)));
                    };
                    _p._expr(_f.type);
                } else {
                    if ((_f.names.length) > (0 : GoInt)) {
                        var _name = _f.names[(0 : GoInt)];
                        _p._expr(Go.asInterface(_name));
                        _p._signature((Go.typeAssert((Go.toInterface(_f.type) : Ref<stdgo.go.ast.Ast.FuncType>)) : Ref<stdgo.go.ast.Ast.FuncType>));
                    } else {
                        _p._expr(_f.type);
                    };
                };
                _p._print(Go.toInterface((32 : T_whiteSpace)));
                _p._setPos(_rbrace);
                _p._print(Go.toInterface(Go.asInterface((56 : stdgo.go.token.Token.Token))));
                return;
            };
        };
        _p._print(Go.toInterface((32 : T_whiteSpace)));
        _p._setPos(_lbrace);
        _p._print(Go.toInterface(Go.asInterface((51 : stdgo.go.token.Token.Token))), Go.toInterface((62 : T_whiteSpace)));
        if (_hasComments || (_list.length > (0 : GoInt))) {
            _p._print(Go.toInterface((12 : T_whiteSpace)));
        };
        if (_isStruct) {
            var _sep:T_whiteSpace = (11 : T_whiteSpace);
            if ((_list.length) == ((1 : GoInt))) {
                _sep = (32 : T_whiteSpace);
            };
            var _line:GoInt = (0 : GoInt);
            for (_i => _f in _list) {
                if (_i > (0 : GoInt)) {
                    _p._linebreak(_p._lineFor(_f.pos()), (1 : GoInt), (0 : T_whiteSpace), _p._linesFrom(_line) > (0 : GoInt));
                };
                var _extraTabs:GoInt = (0 : GoInt);
                _p._setComment(_f.doc);
                _p._recordLine(Go.pointer(_line));
                if ((_f.names.length) > (0 : GoInt)) {
                    _p._identList(_f.names, false);
                    _p._print(Go.toInterface(_sep));
                    _p._expr(_f.type);
                    _extraTabs = (1 : GoInt);
                } else {
                    _p._expr(_f.type);
                    _extraTabs = (2 : GoInt);
                };
                if (_f.tag != null) {
                    if ((_f.names.length > (0 : GoInt)) && (_sep == (11 : T_whiteSpace))) {
                        _p._print(Go.toInterface(_sep));
                    };
                    _p._print(Go.toInterface(_sep));
                    _p._expr(Go.asInterface(_f.tag));
                    _extraTabs = (0 : GoInt);
                };
                if (_f.comment != null) {
                    Go.cfor(_extraTabs > (0 : GoInt), _extraTabs--, {
                        _p._print(Go.toInterface(_sep));
                    });
                    _p._setComment(_f.comment);
                };
            };
            if (_isIncomplete) {
                if ((_list.length) > (0 : GoInt)) {
                    _p._print(Go.toInterface((12 : T_whiteSpace)));
                };
                _p._flush((_p._posFor(_rbrace) == null ? null : _p._posFor(_rbrace).__copy__()), (56 : stdgo.go.token.Token.Token));
                _p._setLineComment(("// contains filtered or unexported fields" : GoString));
            };
        } else {
            var _line:GoInt = (0 : GoInt);
            var _prev:Ref<stdgo.go.ast.Ast.Ident> = (null : Ref<stdgo.go.ast.Ast.Ident>);
            for (_i => _f in _list) {
                var _name:Ref<stdgo.go.ast.Ast.Ident> = (null : Ref<stdgo.go.ast.Ast.Ident>);
                if ((_f.names.length) > (0 : GoInt)) {
                    _name = _f.names[(0 : GoInt)];
                };
                if (_i > (0 : GoInt)) {
                    var _min:GoInt = (1 : GoInt);
                    if ((_prev != null) && (_name == _prev)) {
                        _min = (0 : GoInt);
                    };
                    _p._linebreak(_p._lineFor(_f.pos()), _min, (0 : T_whiteSpace), _p._linesFrom(_line) > (0 : GoInt));
                };
                _p._setComment(_f.doc);
                _p._recordLine(Go.pointer(_line));
                if (_name != null) {
                    _p._expr(Go.asInterface(_name));
                    _p._signature((Go.typeAssert((Go.toInterface(_f.type) : Ref<stdgo.go.ast.Ast.FuncType>)) : Ref<stdgo.go.ast.Ast.FuncType>));
                    _prev = null;
                } else {
                    _p._expr(_f.type);
                    _prev = null;
                };
                _p._setComment(_f.comment);
            };
            if (_isIncomplete) {
                if ((_list.length) > (0 : GoInt)) {
                    _p._print(Go.toInterface((12 : T_whiteSpace)));
                };
                _p._flush((_p._posFor(_rbrace) == null ? null : _p._posFor(_rbrace).__copy__()), (56 : stdgo.go.token.Token.Token));
                _p._setLineComment(("// contains filtered or unexported methods" : GoString));
            };
        };
        _p._print(Go.toInterface((60 : T_whiteSpace)), Go.toInterface((12 : T_whiteSpace)));
        _p._setPos(_rbrace);
        _p._print(Go.toInterface(Go.asInterface((56 : stdgo.go.token.Token.Token))));
    }
    @:keep
    static public function _setLineComment( _p:Ref<T_printer>, _text:GoString):Void {
        _p._setComment((({ list : (new Slice<Ref<stdgo.go.ast.Ast.Comment>>(0, 0, ({ slash : (0 : stdgo.go.token.Token.Pos), text : _text } : stdgo.go.ast.Ast.Comment)) : Slice<Ref<stdgo.go.ast.Ast.Comment>>) } : stdgo.go.ast.Ast.CommentGroup) : Ref<stdgo.go.ast.Ast.CommentGroup>));
    }
    @:keep
    static public function _isOneLineFieldList( _p:Ref<T_printer>, _list:Slice<Ref<stdgo.go.ast.Ast.Field>>):Bool {
        if ((_list.length) != ((1 : GoInt))) {
            return false;
        };
        var _f = _list[(0 : GoInt)];
        if ((_f.tag != null) || (_f.comment != null)) {
            return false;
        };
        {};
        var _namesSize:GoInt = _identListSize(_f.names, (30 : GoInt));
        if (_namesSize > (0 : GoInt)) {
            _namesSize = (1 : GoInt);
        };
        var _typeSize:GoInt = _p._nodeSize(_f.type, (30 : GoInt));
        return (_namesSize + _typeSize) <= (30 : GoInt);
    }
    @:keep
    static public function _signature( _p:Ref<T_printer>, _sig:Ref<stdgo.go.ast.Ast.FuncType>):Void {
        if (_sig.typeParams != null) {
            _p._parameters(_sig.typeParams, (1 : T_paramMode));
        };
        if (_sig.params != null) {
            _p._parameters(_sig.params, (0 : T_paramMode));
        } else {
            _p._print(Go.toInterface(Go.asInterface((49 : stdgo.go.token.Token.Token))), Go.toInterface(Go.asInterface((54 : stdgo.go.token.Token.Token))));
        };
        var _res = _sig.results;
        var _n:GoInt = _res.numFields();
        if (_n > (0 : GoInt)) {
            _p._print(Go.toInterface((32 : T_whiteSpace)));
            if ((_n == (1 : GoInt)) && (_res.list[(0 : GoInt)].names == null)) {
                _p._expr(_stripParensAlways(_res.list[(0 : GoInt)].type));
                return;
            };
            _p._parameters(_res, (0 : T_paramMode));
        };
    }
    @:keep
    static public function _parameters( _p:Ref<T_printer>, _fields:Ref<stdgo.go.ast.Ast.FieldList>, _mode:T_paramMode):Void {
        var _0:stdgo.go.token.Token.Token = (49 : stdgo.go.token.Token.Token), _1:stdgo.go.token.Token.Token = (54 : stdgo.go.token.Token.Token), _closeTok:stdgo.go.token.Token.Token = _1, _openTok:stdgo.go.token.Token.Token = _0;
        if (_mode != ((0 : T_paramMode))) {
            {
                final __tmp__0 = (50 : stdgo.go.token.Token.Token);
                final __tmp__1 = (55 : stdgo.go.token.Token.Token);
                _openTok = __tmp__0;
                _closeTok = __tmp__1;
            };
        };
        _p._setPos(_fields.opening);
        _p._print(Go.toInterface(Go.asInterface(_openTok)));
        if ((_fields.list.length) > (0 : GoInt)) {
            var _prevLine:GoInt = _p._lineFor(_fields.opening);
            var _ws:T_whiteSpace = (62 : T_whiteSpace);
            for (_i => _par in _fields.list) {
                var _parLineBeg:GoInt = _p._lineFor(_par.pos());
                var _parLineEnd:GoInt = _p._lineFor(_par.end());
                var _needsLinebreak:Bool = ((0 : GoInt) < _prevLine) && (_prevLine < _parLineBeg);
                if (_i > (0 : GoInt)) {
                    if (!_needsLinebreak) {
                        _p._setPos(_par.pos());
                    };
                    _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))));
                };
                if (_needsLinebreak && (_p._linebreak(_parLineBeg, (0 : GoInt), _ws, true) > (0 : GoInt))) {
                    _ws = (0 : T_whiteSpace);
                } else if (_i > (0 : GoInt)) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                };
                if ((_par.names.length) > (0 : GoInt)) {
                    _p._identList(_par.names, _ws == ((62 : T_whiteSpace)));
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                };
                _p._expr(_stripParensAlways(_par.type));
                _prevLine = _parLineEnd;
            };
            {
                var _closing:GoInt = _p._lineFor(_fields.closing);
                if (((0 : GoInt) < _prevLine) && (_prevLine < _closing)) {
                    _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))));
                    _p._linebreak(_closing, (0 : GoInt), (0 : T_whiteSpace), true);
                } else if (((_mode == (2 : T_paramMode)) && (_fields.numFields() == (1 : GoInt))) && _combinesWithName(_fields.list[(0 : GoInt)].type)) {
                    _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))));
                };
            };
            if (_ws == ((0 : T_whiteSpace))) {
                _p._print(Go.toInterface((60 : T_whiteSpace)));
            };
        };
        _p._setPos(_fields.closing);
        _p._print(Go.toInterface(Go.asInterface(_closeTok)));
    }
    /**
        // Print a list of expressions. If the list spans multiple
        // source lines, the original line breaks are respected between
        // expressions.
        //
        // TODO(gri) Consider rewriting this to be independent of []ast.Expr
        // so that we can use the algorithm for any kind of list
        //
        //	(e.g., pass list via a channel over which to range).
    **/
    @:keep
    static public function _exprList( _p:Ref<T_printer>, _prev0:stdgo.go.token.Token.Pos, _list:Slice<stdgo.go.ast.Ast.Expr>, _depth:GoInt, _mode:T_exprListMode, _next0:stdgo.go.token.Token.Pos, _isIncomplete:Bool):Void {
        if ((_list.length) == ((0 : GoInt))) {
            if (_isIncomplete) {
                var _prev:stdgo.go.token.Token.Position = (_p._posFor(_prev0) == null ? null : _p._posFor(_prev0).__copy__());
                var _next:stdgo.go.token.Token.Position = (_p._posFor(_next0) == null ? null : _p._posFor(_next0).__copy__());
                if (_prev.isValid() && (_prev.line == _next.line)) {
                    _p._print(Go.toInterface(("/* contains filtered or unexported fields */" : GoString)));
                } else {
                    _p._print(Go.toInterface((10 : T_whiteSpace)));
                    _p._print(Go.toInterface((62 : T_whiteSpace)), Go.toInterface(("// contains filtered or unexported fields" : GoString)), Go.toInterface((60 : T_whiteSpace)), Go.toInterface((10 : T_whiteSpace)));
                };
            };
            return;
        };
        var _prev:stdgo.go.token.Token.Position = (_p._posFor(_prev0) == null ? null : _p._posFor(_prev0).__copy__());
        var _next:stdgo.go.token.Token.Position = (_p._posFor(_next0) == null ? null : _p._posFor(_next0).__copy__());
        var _line:GoInt = _p._lineFor(_list[(0 : GoInt)].pos());
        var _endLine:GoInt = _p._lineFor(_list[((_list.length) - (1 : GoInt) : GoInt)].end());
        if ((_prev.isValid() && (_prev.line == _line)) && (_line == _endLine)) {
            for (_i => _x in _list) {
                if (_i > (0 : GoInt)) {
                    _p._setPos(_x.pos());
                    _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)));
                };
                _p._expr0(_x, _depth);
            };
            if (_isIncomplete) {
                _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))), Go.toInterface((32 : T_whiteSpace)), Go.toInterface(("/* contains filtered or unexported fields */" : GoString)));
            };
            return;
        };
        var _ws:T_whiteSpace = (0 : T_whiteSpace);
        if (_mode & (("2" : GoUInt) : T_exprListMode) == ((("0" : GoUInt) : T_exprListMode))) {
            _ws = (62 : T_whiteSpace);
        };
        var _prevBreak:GoInt = (-1 : GoInt);
        if ((_prev.isValid() && (_prev.line < _line)) && (_p._linebreak(_line, (0 : GoInt), _ws, true) > (0 : GoInt))) {
            _ws = (0 : T_whiteSpace);
            _prevBreak = (0 : GoInt);
        };
        var _size:GoInt = (0 : GoInt);
        var _lnsum:GoFloat64 = (0 : GoFloat64);
        var _count:GoInt = (0 : GoInt);
        var _prevLine:GoInt = _prev.line;
        for (_i => _x in _list) {
            _line = _p._lineFor(_x.pos());
            var _useFF:Bool = true;
            var _prevSize:GoInt = _size;
            {};
            _size = _p._nodeSize(_x, (1000000 : GoInt));
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_x) : Ref<stdgo.go.ast.Ast.KeyValueExpr>)) : Ref<stdgo.go.ast.Ast.KeyValueExpr>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.ast.Ast.KeyValueExpr>), ok : false };
            }, _pair = __tmp__.value, _isPair = __tmp__.ok;
            if (((_size <= (1000000 : GoInt)) && _prev.isValid()) && _next.isValid()) {
                if (_isPair) {
                    _size = _p._nodeSize(_pair.key, (1000000 : GoInt));
                };
            } else {
                _size = (0 : GoInt);
            };
            if ((_prevSize > (0 : GoInt)) && (_size > (0 : GoInt))) {
                {};
                if ((_count == (0 : GoInt)) || ((_prevSize <= (40 : GoInt)) && (_size <= (40 : GoInt)))) {
                    _useFF = false;
                } else {
                    {};
                    var _geomean:GoFloat64 = stdgo.math.Math.exp(_lnsum / (_count : GoFloat64));
                    var _ratio:GoFloat64 = (_size : GoFloat64) / _geomean;
                    _useFF = (((2.5 : GoFloat64) * _ratio) <= (1 : GoFloat64)) || ((2.5 : GoFloat64) <= _ratio);
                };
            };
            var _needsLinebreak:Bool = ((0 : GoInt) < _prevLine) && (_prevLine < _line);
            if (_i > (0 : GoInt)) {
                if (!_needsLinebreak) {
                    _p._setPos(_x.pos());
                };
                _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))));
                var _needsBlank:Bool = true;
                if (_needsLinebreak) {
                    var _nbreaks:GoInt = _p._linebreak(_line, (0 : GoInt), _ws, _useFF || ((_prevBreak + (1 : GoInt)) < _i));
                    if (_nbreaks > (0 : GoInt)) {
                        _ws = (0 : T_whiteSpace);
                        _prevBreak = _i;
                        _needsBlank = false;
                    };
                    if (_nbreaks > (1 : GoInt)) {
                        _lnsum = (0 : GoFloat64);
                        _count = (0 : GoInt);
                    };
                };
                if (_needsBlank) {
                    _p._print(Go.toInterface((32 : T_whiteSpace)));
                };
            };
            if ((((_list.length > (1 : GoInt)) && _isPair) && (_size > (0 : GoInt))) && _needsLinebreak) {
                _p._expr(_pair.key);
                _p._setPos(_pair.colon);
                _p._print(Go.toInterface(Go.asInterface((58 : stdgo.go.token.Token.Token))), Go.toInterface((11 : T_whiteSpace)));
                _p._expr(_pair.value);
            } else {
                _p._expr0(_x, _depth);
            };
            if (_size > (0 : GoInt)) {
                _lnsum = _lnsum + (stdgo.math.Math.log((_size : GoFloat64)));
                _count++;
            };
            _prevLine = _line;
        };
        if ((((_mode & (("1" : GoUInt) : T_exprListMode)) != (("0" : GoUInt) : T_exprListMode)) && _next.isValid()) && (_p._pos.line < _next.line)) {
            _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))));
            if (_isIncomplete) {
                _p._print(Go.toInterface((10 : T_whiteSpace)));
                _p._print(Go.toInterface(("// contains filtered or unexported fields" : GoString)));
            };
            if ((_ws == (0 : T_whiteSpace)) && ((_mode & (("2" : GoUInt) : T_exprListMode)) == (("0" : GoUInt) : T_exprListMode))) {
                _p._print(Go.toInterface((60 : T_whiteSpace)));
            };
            _p._print(Go.toInterface((12 : T_whiteSpace)));
            return;
        };
        if (_isIncomplete) {
            _p._print(Go.toInterface(Go.asInterface((52 : stdgo.go.token.Token.Token))), Go.toInterface((10 : T_whiteSpace)));
            _p._print(Go.toInterface(("// contains filtered or unexported fields" : GoString)), Go.toInterface((10 : T_whiteSpace)));
        };
        if ((_ws == (0 : T_whiteSpace)) && ((_mode & (("2" : GoUInt) : T_exprListMode)) == (("0" : GoUInt) : T_exprListMode))) {
            _p._print(Go.toInterface((60 : T_whiteSpace)));
        };
    }
    /**
        // If indent is set, a multi-line identifier list is indented after the
        // first linebreak encountered.
    **/
    @:keep
    static public function _identList( _p:Ref<T_printer>, _list:Slice<Ref<stdgo.go.ast.Ast.Ident>>, _indent:Bool):Void {
        var _xlist = new Slice<stdgo.go.ast.Ast.Expr>((_list.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_list.length : GoInt).toBasic()) (null : stdgo.go.ast.Ast.Expr)]);
        for (_i => _x in _list) {
            _xlist[(_i : GoInt)] = Go.asInterface(_x);
        };
        var _mode:T_exprListMode = ((0 : GoUInt) : T_exprListMode);
        if (!_indent) {
            _mode = (("2" : GoUInt) : T_exprListMode);
        };
        _p._exprList((0 : stdgo.go.token.Token.Pos), _xlist, (1 : GoInt), _mode, (0 : stdgo.go.token.Token.Pos), false);
    }
    /**
        // setComment sets g as the next comment if g != nil and if node comments
        // are enabled - this mode is used when printing source code fragments such
        // as exports only. It assumes that there is no pending comment in p.comments
        // and at most one pending comment in the p.comment cache.
    **/
    @:keep
    static public function _setComment( _p:Ref<T_printer>, _g:Ref<stdgo.go.ast.Ast.CommentGroup>):Void {
        if ((_g == null) || !_p._useNodeComments) {
            return;
        };
        if (_p._comments == null) {
            _p._comments = new Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (null : Ref<stdgo.go.ast.Ast.CommentGroup>)]);
        } else if (_p._commentInfo._cindex < (_p._comments.length)) {
            _p._flush((_p._posFor(_g.list[(0 : GoInt)].pos()) == null ? null : _p._posFor(_g.list[(0 : GoInt)].pos()).__copy__()), (0 : stdgo.go.token.Token.Token));
            _p._comments = (_p._comments.__slice__((0 : GoInt), (1 : GoInt)) : Slice<Ref<stdgo.go.ast.Ast.CommentGroup>>);
            _p._internalError(Go.toInterface(("setComment found pending comments" : GoString)));
        };
        _p._comments[(0 : GoInt)] = _g;
        _p._commentInfo._cindex = (0 : GoInt);
        if (_p._commentInfo._commentOffset == ((1073741824 : GoInt))) {
            _p._nextComment();
        };
    }
    /**
        // Print as many newlines as necessary (but at least min newlines) to get to
        // the current line. ws is printed before the first line break. If newSection
        // is set, the first line break is printed as formfeed. Returns 0 if no line
        // breaks were printed, returns 1 if there was exactly one newline printed,
        // and returns a value > 1 if there was a formfeed or more than one newline
        // printed.
        //
        // TODO(gri): linebreak may add too many lines if the next statement at "line"
        // is preceded by comments because the computation of n assumes
        // the current position before the comment and the target position
        // after the comment. Thus, after interspersing such comments, the
        // space taken up by them is not considered to reduce the number of
        // linebreaks. At the moment there is no easy way to know about
        // future (not yet interspersed) comments in this function.
    **/
    @:keep
    static public function _linebreak( _p:Ref<T_printer>, _line:GoInt, _min:GoInt, _ws:T_whiteSpace, _newSection:Bool):GoInt {
        var _nbreaks:GoInt = (0 : GoInt);
        var _n:GoInt = _nlimit(_line - _p._pos.line);
        if (_n < _min) {
            _n = _min;
        };
        if (_n > (0 : GoInt)) {
            _p._print(Go.toInterface(_ws));
            if (_newSection) {
                _p._print(Go.toInterface((12 : T_whiteSpace)));
                _n--;
                _nbreaks = (2 : GoInt);
            };
            _nbreaks = _nbreaks + (_n);
            Go.cfor(_n > (0 : GoInt), _n--, {
                _p._print(Go.toInterface((10 : T_whiteSpace)));
            });
        };
        return _nbreaks;
    }
    @:keep
    static public function _commentTextAt( _p:Ref<T_printer>, _start:GoInt):GoString {
        if ((_start < _p._output.length) && (_p._output[(_start : GoInt)] == (255 : GoUInt8))) {
            _start++;
        };
        var _pos:GoInt = _start;
        while (((_pos < _p._output.length) && (_p._output[(_pos : GoInt)] != (255 : GoUInt8))) && !_isNL(_p._output[(_pos : GoInt)])) {
            _pos++;
        };
        return ((_p._output.__slice__(_start, _pos) : Slice<GoUInt8>) : GoString);
    }
    @:keep
    static public function _lineAt( _p:Ref<T_printer>, _start:GoInt):Slice<GoByte> {
        var _pos:GoInt = _start;
        while ((_pos < _p._output.length) && !_isNL(_p._output[(_pos : GoInt)])) {
            _pos++;
        };
        if (_pos < (_p._output.length)) {
            _pos++;
        };
        return (_p._output.__slice__(_start, _pos) : Slice<GoUInt8>);
    }
    @:keep
    static public function _fixGoBuildLines( _p:Ref<T_printer>):Void {
        if ((_p._goBuild.length) + (_p._plusBuild.length) == ((0 : GoInt))) {
            return;
        };
        var _insert:GoInt = (0 : GoInt);
        {
            var _pos:GoInt = (0 : GoInt);
            while (true) {
                var _blank:Bool = true;
                while ((_pos < _p._output.length) && ((_p._output[(_pos : GoInt)] == (32 : GoUInt8)) || (_p._output[(_pos : GoInt)] == (9 : GoUInt8)))) {
                    _pos++;
                };
                if (((((_pos + (3 : GoInt)) < _p._output.length) && (_p._output[(_pos : GoInt)] == (255 : GoUInt8))) && (_p._output[(_pos + (1 : GoInt) : GoInt)] == (47 : GoUInt8))) && (_p._output[(_pos + (2 : GoInt) : GoInt)] == (47 : GoUInt8))) {
                    _blank = false;
                    while ((_pos < _p._output.length) && !_isNL(_p._output[(_pos : GoInt)])) {
                        _pos++;
                    };
                };
                if ((_pos >= _p._output.length) || !_isNL(_p._output[(_pos : GoInt)])) {
                    break;
                };
                _pos++;
                if (_blank) {
                    _insert = _pos;
                };
            };
        };
        if ((_p._goBuild.length > (0 : GoInt)) && (_p._goBuild[(0 : GoInt)] < _insert)) {
            _insert = _p._goBuild[(0 : GoInt)];
        } else if ((_p._plusBuild.length > (0 : GoInt)) && (_p._plusBuild[(0 : GoInt)] < _insert)) {
            _insert = _p._plusBuild[(0 : GoInt)];
        };
        var _x:stdgo.go.build.constraint.Constraint.Expr = (null : stdgo.go.build.constraint.Constraint.Expr);
        {
            var __switchIndex__ = -1;
            while (true) {
                if ((_p._goBuild.length) == ((0 : GoInt))) {
                    for (_160 => _pos in _p._plusBuild) {
                        var __tmp__ = stdgo.go.build.constraint.Constraint.parse(_p._commentTextAt(_pos)), _y:stdgo.go.build.constraint.Constraint.Expr = __tmp__._0, _err:Error = __tmp__._1;
                        if (_err != null) {
                            _x = (null : stdgo.go.build.constraint.Constraint.Expr);
                            break;
                        };
                        if (_x == null) {
                            _x = _y;
                        } else {
                            _x = Go.asInterface((({ x : _x, y : _y } : stdgo.go.build.constraint.Constraint.AndExpr) : Ref<stdgo.go.build.constraint.Constraint.AndExpr>));
                        };
                    };
                    break;
                } else if ((_p._goBuild.length) == ((1 : GoInt))) {
                    {
                        var __tmp__ = stdgo.go.build.constraint.Constraint.parse(_p._commentTextAt(_p._goBuild[(0 : GoInt)]));
                        _x = __tmp__._0;
                    };
                    break;
                };
                break;
            };
        };
        var _block:Slice<GoByte> = (null : Slice<GoUInt8>);
        if (_x == null) {
            for (_177 => _pos in _p._goBuild) {
                _block = _block.__appendref__(..._p._lineAt(_pos).__toArray__());
            };
            for (_186 => _pos in _p._plusBuild) {
                _block = _block.__appendref__(..._p._lineAt(_pos).__toArray__());
            };
        } else {
            _block = _block.__appendref__((255 : GoUInt8));
            _block = _block.__appendref__(...("//go:build " : GoString).__toArray__());
            _block = _block.__appendref__(...(_x.string() : GoString).__toArray__());
            _block = _block.__appendref__((255 : GoUInt8), (10 : GoUInt8));
            if ((_p._plusBuild.length) > (0 : GoInt)) {
                var __tmp__ = stdgo.go.build.constraint.Constraint.plusBuildLines(_x), _lines:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _lines = (new Slice<GoString>(0, 0, ("// +build error: " : GoString) + _err.error()) : Slice<GoString>);
                };
                for (_203 => _line in _lines) {
                    _block = _block.__appendref__((255 : GoUInt8));
                    _block = _block.__appendref__(..._line.__toArray__());
                    _block = _block.__appendref__((255 : GoUInt8), (10 : GoUInt8));
                };
            };
        };
        _block = _block.__appendref__((10 : GoUInt8));
        var _toDelete = (_p._goBuild.__append__(..._p._plusBuild.__toArray__()));
        stdgo.sort.Sort.ints(_toDelete);
        var _after:Slice<GoByte> = (null : Slice<GoUInt8>);
        var _start:GoInt = _insert;
        for (_220 => _end in _toDelete) {
            if (_end < _start) {
                continue;
            };
            _after = _appendLines(_after, (_p._output.__slice__(_start, _end) : Slice<GoUInt8>));
            _start = _end + (_p._lineAt(_end).length);
        };
        _after = _appendLines(_after, (_p._output.__slice__(_start) : Slice<GoUInt8>));
        {
            var _n:GoInt = (_after.length);
            if (((_n >= (2 : GoInt)) && _isNL(_after[(_n - (1 : GoInt) : GoInt)])) && _isNL(_after[(_n - (2 : GoInt) : GoInt)])) {
                _after = (_after.__slice__(0, _n - (1 : GoInt)) : Slice<GoUInt8>);
            };
        };
        _p._output = (_p._output.__slice__(0, _insert) : Slice<GoUInt8>);
        _p._output = _p._output.__appendref__(..._block.__toArray__());
        _p._output = _p._output.__appendref__(..._after.__toArray__());
    }
    @:embedded
    public static function _fprint( __self__:T_printer, _output:stdgo.io.Io.Writer, _fset_:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface, _nodeSizes:GoMap<stdgo.go.ast.Ast.Node, GoInt>):Error return __self__._fprint(_output, _fset_, _node, _nodeSizes);
    @:embedded
    public static function fprint( __self__:T_printer, _output:stdgo.io.Io.Writer, _fset_:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface):Error return __self__.fprint(_output, _fset_, _node);
}
class T_trimmer_asInterface {
    @:keep
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_data);
    @:keep
    public function _resetSpace():Void __self__.value._resetSpace();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_trimmer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.printer.Printer.T_trimmer_asInterface) class T_trimmer_static_extension {
    @:keep
    static public function write( _p:Ref<T_trimmer>, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        var _m:GoInt = (0 : GoInt);
        var _b:GoByte = (0 : GoUInt8);
        for (__key__ => __value__ in _data) {
            _b = __value__;
            _n = __key__;
            if (_b == ((11 : GoUInt8))) {
                _b = (9 : GoUInt8);
            };
            if (_p._state == ((0 : GoInt))) {
                if (_b == ((9 : GoUInt8)) || _b == ((32 : GoUInt8))) {
                    _p._space = _p._space.__appendref__(_b);
                } else if (_b == ((10 : GoUInt8)) || _b == ((12 : GoUInt8))) {
                    _p._resetSpace();
                    {
                        var __tmp__ = _p._output.write(_aNewline);
                        _err = __tmp__._1;
                    };
                } else if (_b == ((255 : GoUInt8))) {
                    {
                        var __tmp__ = _p._output.write(_p._space);
                        _err = __tmp__._1;
                    };
                    _p._state = (1 : GoInt);
                    _m = _n + (1 : GoInt);
                } else {
                    {
                        var __tmp__ = _p._output.write(_p._space);
                        _err = __tmp__._1;
                    };
                    _p._state = (2 : GoInt);
                    _m = _n;
                };
            } else if (_p._state == ((1 : GoInt))) {
                if (_b == ((255 : GoUInt8))) {
                    {
                        var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : Slice<GoUInt8>));
                        _err = __tmp__._1;
                    };
                    _p._resetSpace();
                };
            } else if (_p._state == ((2 : GoInt))) {
                if (_b == ((9 : GoUInt8)) || _b == ((32 : GoUInt8))) {
                    {
                        var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : Slice<GoUInt8>));
                        _err = __tmp__._1;
                    };
                    _p._resetSpace();
                    _p._space = _p._space.__appendref__(_b);
                } else if (_b == ((10 : GoUInt8)) || _b == ((12 : GoUInt8))) {
                    {
                        var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : Slice<GoUInt8>));
                        _err = __tmp__._1;
                    };
                    _p._resetSpace();
                    if (_err == null) {
                        {
                            var __tmp__ = _p._output.write(_aNewline);
                            _err = __tmp__._1;
                        };
                    };
                } else if (_b == ((255 : GoUInt8))) {
                    {
                        var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : Slice<GoUInt8>));
                        _err = __tmp__._1;
                    };
                    _p._state = (1 : GoInt);
                    _m = _n + (1 : GoInt);
                };
            } else {
                throw Go.toInterface(("unreachable" : GoString));
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        _n = (_data.length);
        if (_p._state == ((1 : GoInt)) || _p._state == ((2 : GoInt))) {
            {
                var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : Slice<GoUInt8>));
                _err = __tmp__._1;
            };
            _p._resetSpace();
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _resetSpace( _p:Ref<T_trimmer>):Void {
        _p._state = (0 : GoInt);
        _p._space = (_p._space.__slice__((0 : GoInt), (0 : GoInt)) : Slice<GoUInt8>);
    }
}
class Config_asInterface {
    /**
        // Fprint "pretty-prints" an AST node to output for a given configuration cfg.
        // Position information is interpreted relative to the file set fset.
        // The node type must be *ast.File, *CommentedNode, []ast.Decl, []ast.Stmt,
        // or assignment-compatible to ast.Expr, ast.Decl, ast.Spec, or ast.Stmt.
    **/
    @:keep
    public function fprint(_output:stdgo.io.Io.Writer, _fset:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface):Error return __self__.value.fprint(_output, _fset, _node);
    /**
        // fprint implements Fprint and takes a nodesSizes map for setting up the printer state.
    **/
    @:keep
    public function _fprint(_output:stdgo.io.Io.Writer, _fset:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface, _nodeSizes:GoMap<stdgo.go.ast.Ast.Node, GoInt>):Error return __self__.value._fprint(_output, _fset, _node, _nodeSizes);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Config>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.printer.Printer.Config_asInterface) class Config_static_extension {
    /**
        // Fprint "pretty-prints" an AST node to output for a given configuration cfg.
        // Position information is interpreted relative to the file set fset.
        // The node type must be *ast.File, *CommentedNode, []ast.Decl, []ast.Stmt,
        // or assignment-compatible to ast.Expr, ast.Decl, ast.Spec, or ast.Stmt.
    **/
    @:keep
    static public function fprint( _cfg:Ref<Config>, _output:stdgo.io.Io.Writer, _fset:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface):Error {
        return _cfg._fprint(_output, _fset, _node, (new GoObjectMap<stdgo.go.ast.Ast.Node, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.ast.Ast.Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }))) : GoMap<stdgo.go.ast.Ast.Node, GoInt>));
    }
    /**
        // fprint implements Fprint and takes a nodesSizes map for setting up the printer state.
    **/
    @:keep
    static public function _fprint( _cfg:Ref<Config>, _output:stdgo.io.Io.Writer, _fset:Ref<stdgo.go.token.Token.FileSet>, _node:AnyInterface, _nodeSizes:GoMap<stdgo.go.ast.Ast.Node, GoInt>):Error {
        var __deferstack__:Array<Void -> Void> = [];
        var _err:Error = (null : Error);
        var _p = _newPrinter(_cfg, _fset, _nodeSizes);
        try {
            __deferstack__.unshift(() -> _p._free());
            {
                _err = _p._printNode(_node);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            _p._impliedSemi = false;
            _p._flush(({ offset : (1073741824 : GoInt), line : (1073741824 : GoInt) } : stdgo.go.token.Token.Position), (1 : stdgo.go.token.Token.Token));
            _p._fixGoBuildLines();
            _output = Go.asInterface((({ _output : _output } : T_trimmer) : Ref<T_trimmer>));
            if (_cfg.mode & (("1" : GoUInt) : Mode) == ((("0" : GoUInt) : Mode))) {
                var _minwidth:GoInt = _cfg.tabwidth;
                var _padchar:GoUInt8 = ((9 : GoUInt8) : GoByte);
                if (_cfg.mode & (("4" : GoUInt) : Mode) != ((("0" : GoUInt) : Mode))) {
                    _padchar = (32 : GoUInt8);
                };
                var _twmode:GoUInt = ("8" : GoUInt);
                if (_cfg.mode & (("2" : GoUInt) : Mode) != ((("0" : GoUInt) : Mode))) {
                    _minwidth = (0 : GoInt);
                    _twmode = _twmode | (("16" : GoUInt));
                };
                _output = Go.asInterface(stdgo.text.tabwriter.Tabwriter.newWriter(_output, _minwidth, _cfg.tabwidth, (1 : GoInt), _padchar, _twmode));
            };
            {
                {
                    var __tmp__ = _output.write(_p._output);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_output) : Ref<stdgo.text.tabwriter.Tabwriter.Writer>)) : Ref<stdgo.text.tabwriter.Tabwriter.Writer>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.text.tabwriter.Tabwriter.Writer>), ok : false };
                }, _tw = __tmp__.value, _16 = __tmp__.ok;
                if (_tw != null) {
                    _err = _tw.flush();
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _err;
        };
    }
}
class T_limitWriter_asInterface {
    @:keep
    public function write(_buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_limitWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.printer.Printer.T_limitWriter_asInterface) class T_limitWriter_static_extension {
    @:keep
    static public function write( _l:Ref<T_limitWriter>, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        _n = (_buf.length);
        if (_n >= _l._remaining) {
            _n = _l._remaining;
            _err = stdgo.io.Io.eof;
            _l._errCount++;
        };
        _l._remaining = _l._remaining - (_n);
        return { _0 : _n, _1 : _err };
    }
}
class T_visitor_asInterface {
    @:keep
    public function visit(_n:stdgo.go.ast.Ast.Node):stdgo.go.ast.Ast.Visitor return __self__.value.visit(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_visitor>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.printer.Printer.T_visitor_asInterface) class T_visitor_static_extension {
    @:keep
    static public function visit( _v:T_visitor, _n:stdgo.go.ast.Ast.Node):stdgo.go.ast.Ast.Visitor {
        var _w:stdgo.go.ast.Ast.Visitor = (null : stdgo.go.ast.Ast.Visitor);
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_n) : Ref<stdgo.go.ast.Ast.Ident>)) : Ref<stdgo.go.ast.Ast.Ident>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.ast.Ast.Ident>), ok : false };
            }, _ident = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _v.__send__(_ident);
            };
        };
        return Go.asInterface(_v);
    }
}
