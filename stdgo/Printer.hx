package stdgo;
final rawFormat : Mode = stdgo._internal.go.printer.Printer_rawformat.rawFormat;
final tabIndent = stdgo._internal.go.printer.Printer_tabindent.tabIndent;
final useSpaces = stdgo._internal.go.printer.Printer_usespaces.useSpaces;
final sourcePos = stdgo._internal.go.printer.Printer_sourcepos.sourcePos;
@:structInit @:using(stdgo.go.printer.Printer.T_sizeCounter_static_extension) @:dox(hide) abstract T_sizeCounter(stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter) from stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter to stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter {
    public var _hasNewline(get, set) : Bool;
    function get__hasNewline():Bool return this._hasNewline;
    function set__hasNewline(v:Bool):Bool {
        this._hasNewline = v;
        return v;
    }
    public var _size(get, set) : StdTypes.Int;
    function get__size():StdTypes.Int return this._size;
    function set__size(v:StdTypes.Int):StdTypes.Int {
        this._size = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_hasNewline:Bool, ?_size:StdTypes.Int) this = new stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter(_hasNewline, (_size : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.printer.Printer.T_commentInfo_static_extension) @:dox(hide) abstract T_commentInfo(stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo) from stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo to stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo {
    public var _cindex(get, set) : StdTypes.Int;
    function get__cindex():StdTypes.Int return this._cindex;
    function set__cindex(v:StdTypes.Int):StdTypes.Int {
        this._cindex = (v : stdgo.GoInt);
        return v;
    }
    public var _comment(get, set) : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup;
    function get__comment():stdgo._internal.go.ast.Ast_commentgroup.CommentGroup return this._comment;
    function set__comment(v:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup):stdgo._internal.go.ast.Ast_commentgroup.CommentGroup {
        this._comment = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public var _commentOffset(get, set) : StdTypes.Int;
    function get__commentOffset():StdTypes.Int return this._commentOffset;
    function set__commentOffset(v:StdTypes.Int):StdTypes.Int {
        this._commentOffset = (v : stdgo.GoInt);
        return v;
    }
    public var _commentNewline(get, set) : Bool;
    function get__commentNewline():Bool return this._commentNewline;
    function set__commentNewline(v:Bool):Bool {
        this._commentNewline = v;
        return v;
    }
    public function new(?_cindex:StdTypes.Int, ?_comment:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup, ?_commentOffset:StdTypes.Int, ?_commentNewline:Bool) this = new stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo((_cindex : stdgo.GoInt), (_comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), (_commentOffset : stdgo.GoInt), _commentNewline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.printer.Printer.T_printer_static_extension) @:dox(hide) abstract T_printer(stdgo._internal.go.printer.Printer_t_printer.T_printer) from stdgo._internal.go.printer.Printer_t_printer.T_printer to stdgo._internal.go.printer.Printer_t_printer.T_printer {
    public var config(get, set) : Config;
    function get_config():Config return this.config;
    function set_config(v:Config):Config {
        this.config = v;
        return v;
    }
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var _output(get, set) : Array<std.UInt>;
    function get__output():Array<std.UInt> return [for (i in this._output) i];
    function set__output(v:Array<std.UInt>):Array<std.UInt> {
        this._output = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _indent(get, set) : StdTypes.Int;
    function get__indent():StdTypes.Int return this._indent;
    function set__indent(v:StdTypes.Int):StdTypes.Int {
        this._indent = (v : stdgo.GoInt);
        return v;
    }
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt);
        return v;
    }
    public var _mode(get, set) : T_pmode;
    function get__mode():T_pmode return this._mode;
    function set__mode(v:T_pmode):T_pmode {
        this._mode = v;
        return v;
    }
    public var _endAlignment(get, set) : Bool;
    function get__endAlignment():Bool return this._endAlignment;
    function set__endAlignment(v:Bool):Bool {
        this._endAlignment = v;
        return v;
    }
    public var _impliedSemi(get, set) : Bool;
    function get__impliedSemi():Bool return this._impliedSemi;
    function set__impliedSemi(v:Bool):Bool {
        this._impliedSemi = v;
        return v;
    }
    public var _lastTok(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get__lastTok():stdgo._internal.go.token.Token_token.Token return this._lastTok;
    function set__lastTok(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this._lastTok = v;
        return v;
    }
    public var _prevOpen(get, set) : stdgo._internal.go.token.Token_token.Token;
    function get__prevOpen():stdgo._internal.go.token.Token_token.Token return this._prevOpen;
    function set__prevOpen(v:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        this._prevOpen = v;
        return v;
    }
    public var _wsbuf(get, set) : Array<T_whiteSpace>;
    function get__wsbuf():Array<T_whiteSpace> return [for (i in this._wsbuf) i];
    function set__wsbuf(v:Array<T_whiteSpace>):Array<T_whiteSpace> {
        this._wsbuf = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>);
        return v;
    }
    public var _goBuild(get, set) : Array<StdTypes.Int>;
    function get__goBuild():Array<StdTypes.Int> return [for (i in this._goBuild) i];
    function set__goBuild(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._goBuild = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _plusBuild(get, set) : Array<StdTypes.Int>;
    function get__plusBuild():Array<StdTypes.Int> return [for (i in this._plusBuild) i];
    function set__plusBuild(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._plusBuild = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_position.Position;
    function get__pos():stdgo._internal.go.token.Token_position.Position return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_position.Position):stdgo._internal.go.token.Token_position.Position {
        this._pos = v;
        return v;
    }
    public var _out(get, set) : stdgo._internal.go.token.Token_position.Position;
    function get__out():stdgo._internal.go.token.Token_position.Position return this._out;
    function set__out(v:stdgo._internal.go.token.Token_position.Position):stdgo._internal.go.token.Token_position.Position {
        this._out = v;
        return v;
    }
    public var _last(get, set) : stdgo._internal.go.token.Token_position.Position;
    function get__last():stdgo._internal.go.token.Token_position.Position return this._last;
    function set__last(v:stdgo._internal.go.token.Token_position.Position):stdgo._internal.go.token.Token_position.Position {
        this._last = v;
        return v;
    }
    public var _linePtr(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get__linePtr():stdgo.Pointer<StdTypes.Int> return this._linePtr;
    function set__linePtr(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this._linePtr = v;
        return v;
    }
    public var _sourcePosErr(get, set) : stdgo.Error;
    function get__sourcePosErr():stdgo.Error return this._sourcePosErr;
    function set__sourcePosErr(v:stdgo.Error):stdgo.Error {
        this._sourcePosErr = (v : stdgo.Error);
        return v;
    }
    public var _comments(get, set) : Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>;
    function get__comments():Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> return [for (i in this._comments) i];
    function set__comments(v:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> {
        this._comments = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        return v;
    }
    public var _useNodeComments(get, set) : Bool;
    function get__useNodeComments():Bool return this._useNodeComments;
    function set__useNodeComments(v:Bool):Bool {
        this._useNodeComments = v;
        return v;
    }
    public var _commentInfo(get, set) : T_commentInfo;
    function get__commentInfo():T_commentInfo return this._commentInfo;
    function set__commentInfo(v:T_commentInfo):T_commentInfo {
        this._commentInfo = v;
        return v;
    }
    public var _nodeSizes(get, set) : Map<stdgo._internal.go.ast.Ast_node.Node, StdTypes.Int>;
    function get__nodeSizes():Map<stdgo._internal.go.ast.Ast_node.Node, StdTypes.Int> return {
        final __obj__:Map<stdgo._internal.go.ast.Ast_node.Node, StdTypes.Int> = [];
        for (key => value in this._nodeSizes) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__nodeSizes(v:Map<stdgo._internal.go.ast.Ast_node.Node, StdTypes.Int>):Map<stdgo._internal.go.ast.Ast_node.Node, StdTypes.Int> {
        this._nodeSizes = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var _cachedPos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__cachedPos():stdgo._internal.go.token.Token_pos.Pos return this._cachedPos;
    function set__cachedPos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._cachedPos = v;
        return v;
    }
    public var _cachedLine(get, set) : StdTypes.Int;
    function get__cachedLine():StdTypes.Int return this._cachedLine;
    function set__cachedLine(v:StdTypes.Int):StdTypes.Int {
        this._cachedLine = (v : stdgo.GoInt);
        return v;
    }
    public function new(?config:Config, ?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_output:Array<std.UInt>, ?_indent:StdTypes.Int, ?_level:StdTypes.Int, ?_mode:T_pmode, ?_endAlignment:Bool, ?_impliedSemi:Bool, ?_lastTok:stdgo._internal.go.token.Token_token.Token, ?_prevOpen:stdgo._internal.go.token.Token_token.Token, ?_wsbuf:Array<T_whiteSpace>, ?_goBuild:Array<StdTypes.Int>, ?_plusBuild:Array<StdTypes.Int>, ?_pos:stdgo._internal.go.token.Token_position.Position, ?_out:stdgo._internal.go.token.Token_position.Position, ?_last:stdgo._internal.go.token.Token_position.Position, ?_linePtr:stdgo.Pointer<StdTypes.Int>, ?_sourcePosErr:stdgo.Error, ?_comments:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?_useNodeComments:Bool, ?_commentInfo:T_commentInfo, ?_nodeSizes:Map<stdgo._internal.go.ast.Ast_node.Node, StdTypes.Int>, ?_cachedPos:stdgo._internal.go.token.Token_pos.Pos, ?_cachedLine:StdTypes.Int) this = new stdgo._internal.go.printer.Printer_t_printer.T_printer(
config,
(_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>),
([for (i in _output) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_indent : stdgo.GoInt),
(_level : stdgo.GoInt),
_mode,
_endAlignment,
_impliedSemi,
_lastTok,
_prevOpen,
([for (i in _wsbuf) i] : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>),
([for (i in _goBuild) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in _plusBuild) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
_pos,
_out,
_last,
_linePtr,
(_sourcePosErr : stdgo.Error),
([for (i in _comments) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>),
_useNodeComments,
_commentInfo,
{
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>();
        for (key => value in _nodeSizes) {
            __obj__[key] = (value : stdgo.GoInt);
        };
        __obj__;
    },
_cachedPos,
(_cachedLine : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.printer.Printer.T_trimmer_static_extension) @:dox(hide) abstract T_trimmer(stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer) from stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer to stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer {
    public var _output(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__output():stdgo._internal.io.Io_writer.Writer return this._output;
    function set__output(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._output = v;
        return v;
    }
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = (v : stdgo.GoInt);
        return v;
    }
    public var _space(get, set) : Array<std.UInt>;
    function get__space():Array<std.UInt> return [for (i in this._space) i];
    function set__space(v:Array<std.UInt>):Array<std.UInt> {
        this._space = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_output:stdgo._internal.io.Io_writer.Writer, ?_state:StdTypes.Int, ?_space:Array<std.UInt>) this = new stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer(_output, (_state : stdgo.GoInt), ([for (i in _space) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.printer.Printer.Config_static_extension) abstract Config(stdgo._internal.go.printer.Printer_config.Config) from stdgo._internal.go.printer.Printer_config.Config to stdgo._internal.go.printer.Printer_config.Config {
    public var mode(get, set) : Mode;
    function get_mode():Mode return this.mode;
    function set_mode(v:Mode):Mode {
        this.mode = v;
        return v;
    }
    public var tabwidth(get, set) : StdTypes.Int;
    function get_tabwidth():StdTypes.Int return this.tabwidth;
    function set_tabwidth(v:StdTypes.Int):StdTypes.Int {
        this.tabwidth = (v : stdgo.GoInt);
        return v;
    }
    public var indent(get, set) : StdTypes.Int;
    function get_indent():StdTypes.Int return this.indent;
    function set_indent(v:StdTypes.Int):StdTypes.Int {
        this.indent = (v : stdgo.GoInt);
        return v;
    }
    public function new(?mode:Mode, ?tabwidth:StdTypes.Int, ?indent:StdTypes.Int) this = new stdgo._internal.go.printer.Printer_config.Config(mode, (tabwidth : stdgo.GoInt), (indent : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.printer.Printer.CommentedNode_static_extension) abstract CommentedNode(stdgo._internal.go.printer.Printer_commentednode.CommentedNode) from stdgo._internal.go.printer.Printer_commentednode.CommentedNode to stdgo._internal.go.printer.Printer_commentednode.CommentedNode {
    public var node(get, set) : stdgo.AnyInterface;
    function get_node():stdgo.AnyInterface return this.node;
    function set_node(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.node = (v : stdgo.AnyInterface);
        return v;
    }
    public var comments(get, set) : Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>;
    function get_comments():Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> return [for (i in this.comments) i];
    function set_comments(v:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> {
        this.comments = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        return v;
    }
    public function new(?node:stdgo.AnyInterface, ?comments:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) this = new stdgo._internal.go.printer.Printer_commentednode.CommentedNode((node : stdgo.AnyInterface), ([for (i in comments) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.printer.Printer.T_entry_static_extension) @:dox(hide) abstract T_entry(stdgo._internal.go.printer.Printer_t_entry.T_entry) from stdgo._internal.go.printer.Printer_t_entry.T_entry to stdgo._internal.go.printer.Printer_t_entry.T_entry {
    public var _source(get, set) : String;
    function get__source():String return this._source;
    function set__source(v:String):String {
        this._source = (v : stdgo.GoString);
        return v;
    }
    public var _golden(get, set) : String;
    function get__golden():String return this._golden;
    function set__golden(v:String):String {
        this._golden = (v : stdgo.GoString);
        return v;
    }
    public var _mode(get, set) : T_checkMode;
    function get__mode():T_checkMode return this._mode;
    function set__mode(v:T_checkMode):T_checkMode {
        this._mode = v;
        return v;
    }
    public function new(?_source:String, ?_golden:String, ?_mode:T_checkMode) this = new stdgo._internal.go.printer.Printer_t_entry.T_entry((_source : stdgo.GoString), (_golden : stdgo.GoString), _mode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.printer.Printer.T_limitWriter_static_extension) @:dox(hide) abstract T_limitWriter(stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter) from stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter to stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter {
    public var _remaining(get, set) : StdTypes.Int;
    function get__remaining():StdTypes.Int return this._remaining;
    function set__remaining(v:StdTypes.Int):StdTypes.Int {
        this._remaining = (v : stdgo.GoInt);
        return v;
    }
    public var _errCount(get, set) : StdTypes.Int;
    function get__errCount():StdTypes.Int return this._errCount;
    function set__errCount(v:StdTypes.Int):StdTypes.Int {
        this._errCount = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_remaining:StdTypes.Int, ?_errCount:StdTypes.Int) this = new stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter((_remaining : stdgo.GoInt), (_errCount : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_exprListMode = stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode;
@:dox(hide) typedef T_paramMode = stdgo._internal.go.printer.Printer_t_parammode.T_paramMode;
@:dox(hide) typedef T_whiteSpace = stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace;
@:dox(hide) typedef T_pmode = stdgo._internal.go.printer.Printer_t_pmode.T_pmode;
typedef Mode = stdgo._internal.go.printer.Printer_mode.Mode;
@:dox(hide) typedef T_checkMode = stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode;
@:dox(hide) typedef T_visitor = stdgo._internal.go.printer.Printer_t_visitor.T_visitor;
@:dox(hide) typedef T_sizeCounterPointer = stdgo._internal.go.printer.Printer_t_sizecounterpointer.T_sizeCounterPointer;
@:dox(hide) class T_sizeCounter_static_extension {
    static public function write(_c:T_sizeCounter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.go.printer.Printer_t_sizecounter_static_extension.T_sizeCounter_static_extension.write(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_commentInfoPointer = stdgo._internal.go.printer.Printer_t_commentinfopointer.T_commentInfoPointer;
@:dox(hide) class T_commentInfo_static_extension {

}
@:dox(hide) typedef T_printerPointer = stdgo._internal.go.printer.Printer_t_printerpointer.T_printerPointer;
@:dox(hide) class T_printer_static_extension {
    static public function _free(_p:T_printer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._free(_p);
    }
    static public function _printNode(_p:T_printer, _node:stdgo.AnyInterface):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _node = (_node : stdgo.AnyInterface);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._printNode(_p, _node);
    }
    static public function _flush(_p:T_printer, _next:stdgo._internal.go.token.Token_position.Position, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Tuple<Bool, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return {
            final obj = stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._flush(_p, _next, _tok);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _print(_p:T_printer, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._print(_p, ...[for (i in _args) i]);
    }
    static public function _setPos(_p:T_printer, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._setPos(_p, _pos);
    }
    static public function _writeWhitespace(_p:T_printer, _n:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._writeWhitespace(_p, _n);
    }
    static public function _intersperseComments(_p:T_printer, _next:stdgo._internal.go.token.Token_position.Position, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Tuple<Bool, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return {
            final obj = stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._intersperseComments(_p, _next, _tok);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _containsLinebreak(_p:T_printer):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._containsLinebreak(_p);
    }
    static public function _writeCommentSuffix(_p:T_printer, _needsLinebreak:Bool):stdgo.Tuple<Bool, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return {
            final obj = stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._writeCommentSuffix(_p, _needsLinebreak);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeComment(_p:T_printer, _comment:stdgo._internal.go.ast.Ast_comment.Comment):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _comment = (_comment : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._writeComment(_p, _comment);
    }
    static public function _writeCommentPrefix(_p:T_printer, _pos:stdgo._internal.go.token.Token_position.Position, _next:stdgo._internal.go.token.Token_position.Position, _prev:stdgo._internal.go.ast.Ast_comment.Comment, _tok:stdgo._internal.go.token.Token_token.Token):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _prev = (_prev : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._writeCommentPrefix(_p, _pos, _next, _prev, _tok);
    }
    static public function _writeString(_p:T_printer, _pos:stdgo._internal.go.token.Token_position.Position, _s:String, _isLit:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._writeString(_p, _pos, _s, _isLit);
    }
    static public function _writeByte(_p:T_printer, _ch:std.UInt, _n:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _ch = (_ch : stdgo.GoUInt8);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._writeByte(_p, _ch, _n);
    }
    static public function _writeIndent(_p:T_printer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._writeIndent(_p);
    }
    static public function _writeLineDirective(_p:T_printer, _pos:stdgo._internal.go.token.Token_position.Position):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._writeLineDirective(_p, _pos);
    }
    static public function _lineFor(_p:T_printer, _pos:stdgo._internal.go.token.Token_pos.Pos):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._lineFor(_p, _pos);
    }
    static public function _posFor(_p:T_printer, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._posFor(_p, _pos);
    }
    static public function _linesFrom(_p:T_printer, _line:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._linesFrom(_p, _line);
    }
    static public function _recordLine(_p:T_printer, _linePtr:stdgo.Pointer<StdTypes.Int>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._recordLine(_p, _linePtr);
    }
    static public function _commentSizeBefore(_p:T_printer, _next:stdgo._internal.go.token.Token_position.Position):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._commentSizeBefore(_p, _next);
    }
    static public function _commentBefore(_p:T_printer, _next:stdgo._internal.go.token.Token_position.Position):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._commentBefore(_p, _next);
    }
    static public function _nextComment(_p:T_printer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._nextComment(_p);
    }
    static public function _commentsHaveNewline(_p:T_printer, _list:Array<stdgo._internal.go.ast.Ast_comment.Comment>):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._commentsHaveNewline(_p, _list);
    }
    static public function _internalError(_p:T_printer, _msg:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._internalError(_p, ...[for (i in _msg) i]);
    }
    static public function _file(_p:T_printer, _src:stdgo._internal.go.ast.Ast_file.File):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _src = (_src : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._file(_p, _src);
    }
    static public function _declList(_p:T_printer, _list:Array<stdgo._internal.go.ast.Ast_decl.Decl>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._declList(_p, _list);
    }
    static public function _decl(_p:T_printer, _decl:stdgo._internal.go.ast.Ast_decl.Decl):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._decl(_p, _decl);
    }
    static public function _funcDecl(_p:T_printer, _d:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _d = (_d : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._funcDecl(_p, _d);
    }
    static public function _distanceFrom(_p:T_printer, _startPos:stdgo._internal.go.token.Token_pos.Pos, _startOutCol:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _startOutCol = (_startOutCol : stdgo.GoInt);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._distanceFrom(_p, _startPos, _startOutCol);
    }
    static public function _funcBody(_p:T_printer, _headerSize:StdTypes.Int, _sep:T_whiteSpace, _b:stdgo._internal.go.ast.Ast_blockstmt.BlockStmt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _headerSize = (_headerSize : stdgo.GoInt);
        final _b = (_b : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._funcBody(_p, _headerSize, _sep, _b);
    }
    static public function _bodySize(_p:T_printer, _b:stdgo._internal.go.ast.Ast_blockstmt.BlockStmt, _maxSize:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _b = (_b : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        final _maxSize = (_maxSize : stdgo.GoInt);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._bodySize(_p, _b, _maxSize);
    }
    static public function _numLines(_p:T_printer, _n:stdgo._internal.go.ast.Ast_node.Node):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._numLines(_p, _n);
    }
    static public function _nodeSize(_p:T_printer, _n:stdgo._internal.go.ast.Ast_node.Node, _maxSize:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _maxSize = (_maxSize : stdgo.GoInt);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._nodeSize(_p, _n, _maxSize);
    }
    static public function _genDecl(_p:T_printer, _d:stdgo._internal.go.ast.Ast_gendecl.GenDecl):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _d = (_d : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._genDecl(_p, _d);
    }
    static public function _spec(_p:T_printer, _spec:stdgo._internal.go.ast.Ast_spec.Spec, _n:StdTypes.Int, _doIndent:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._spec(_p, _spec, _n, _doIndent);
    }
    static public function _valueSpec(_p:T_printer, _s:stdgo._internal.go.ast.Ast_valuespec.ValueSpec, _keepType:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _s = (_s : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._valueSpec(_p, _s, _keepType);
    }
    static public function _stmt(_p:T_printer, _stmt:stdgo._internal.go.ast.Ast_stmt.Stmt, _nextIsRBrace:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._stmt(_p, _stmt, _nextIsRBrace);
    }
    static public function _indentList(_p:T_printer, _list:Array<stdgo._internal.go.ast.Ast_expr.Expr>):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._indentList(_p, _list);
    }
    static public function _controlClause(_p:T_printer, _isForStmt:Bool, _init:stdgo._internal.go.ast.Ast_stmt.Stmt, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _post:stdgo._internal.go.ast.Ast_stmt.Stmt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._controlClause(_p, _isForStmt, _init, _expr, _post);
    }
    static public function _block(_p:T_printer, _b:stdgo._internal.go.ast.Ast_blockstmt.BlockStmt, _nindent:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _b = (_b : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        final _nindent = (_nindent : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._block(_p, _b, _nindent);
    }
    static public function _stmtList(_p:T_printer, _list:Array<stdgo._internal.go.ast.Ast_stmt.Stmt>, _nindent:StdTypes.Int, _nextIsRBrace:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        final _nindent = (_nindent : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._stmtList(_p, _list, _nindent, _nextIsRBrace);
    }
    static public function _expr(_p:T_printer, _x:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._expr(_p, _x);
    }
    static public function _expr0(_p:T_printer, _x:stdgo._internal.go.ast.Ast_expr.Expr, _depth:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _depth = (_depth : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._expr0(_p, _x, _depth);
    }
    static public function _selectorExpr(_p:T_printer, _x:stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr, _depth:StdTypes.Int, _isMethod:Bool):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>);
        final _depth = (_depth : stdgo.GoInt);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._selectorExpr(_p, _x, _depth, _isMethod);
    }
    static public function _possibleSelectorExpr(_p:T_printer, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:StdTypes.Int, _depth:StdTypes.Int):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _prec1 = (_prec1 : stdgo.GoInt);
        final _depth = (_depth : stdgo.GoInt);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._possibleSelectorExpr(_p, _expr, _prec1, _depth);
    }
    static public function _expr1(_p:T_printer, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:StdTypes.Int, _depth:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _prec1 = (_prec1 : stdgo.GoInt);
        final _depth = (_depth : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._expr1(_p, _expr, _prec1, _depth);
    }
    static public function _binaryExpr(_p:T_printer, _x:stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr, _prec1:StdTypes.Int, _cutoff:StdTypes.Int, _depth:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _x = (_x : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>);
        final _prec1 = (_prec1 : stdgo.GoInt);
        final _cutoff = (_cutoff : stdgo.GoInt);
        final _depth = (_depth : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._binaryExpr(_p, _x, _prec1, _cutoff, _depth);
    }
    static public function _fieldList(_p:T_printer, _fields:stdgo._internal.go.ast.Ast_fieldlist.FieldList, _isStruct:Bool, _isIncomplete:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _fields = (_fields : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._fieldList(_p, _fields, _isStruct, _isIncomplete);
    }
    static public function _setLineComment(_p:T_printer, _text:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _text = (_text : stdgo.GoString);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._setLineComment(_p, _text);
    }
    static public function _isOneLineFieldList(_p:T_printer, _list:Array<stdgo._internal.go.ast.Ast_field.Field>):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._isOneLineFieldList(_p, _list);
    }
    static public function _signature(_p:T_printer, _sig:stdgo._internal.go.ast.Ast_functype.FuncType):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _sig = (_sig : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._signature(_p, _sig);
    }
    static public function _parameters(_p:T_printer, _fields:stdgo._internal.go.ast.Ast_fieldlist.FieldList, _mode:T_paramMode):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _fields = (_fields : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._parameters(_p, _fields, _mode);
    }
    static public function _exprList(_p:T_printer, _prev0:stdgo._internal.go.token.Token_pos.Pos, _list:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _depth:StdTypes.Int, _mode:T_exprListMode, _next0:stdgo._internal.go.token.Token_pos.Pos, _isIncomplete:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        final _depth = (_depth : stdgo.GoInt);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._exprList(_p, _prev0, _list, _depth, _mode, _next0, _isIncomplete);
    }
    static public function _identList(_p:T_printer, _list:Array<stdgo._internal.go.ast.Ast_ident.Ident>, _indent:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._identList(_p, _list, _indent);
    }
    static public function _setComment(_p:T_printer, _g:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _g = (_g : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._setComment(_p, _g);
    }
    static public function _linebreak(_p:T_printer, _line:StdTypes.Int, _min:StdTypes.Int, _ws:T_whiteSpace, _newSection:Bool):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _line = (_line : stdgo.GoInt);
        final _min = (_min : stdgo.GoInt);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._linebreak(_p, _line, _min, _ws, _newSection);
    }
    static public function _commentTextAt(_p:T_printer, _start:StdTypes.Int):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _start = (_start : stdgo.GoInt);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._commentTextAt(_p, _start);
    }
    static public function _lineAt(_p:T_printer, _start:StdTypes.Int):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        final _start = (_start : stdgo.GoInt);
        return [for (i in stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._lineAt(_p, _start)) i];
    }
    static public function _fixGoBuildLines(_p:T_printer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>);
        stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._fixGoBuildLines(_p);
    }
    public static function _fprint(__self__:stdgo._internal.go.printer.Printer_t_printer.T_printer, _0:stdgo._internal.io.Io_writer.Writer, _1:stdgo._internal.go.token.Token_fileset.FileSet, _2:stdgo.AnyInterface, _3:Map<stdgo._internal.go.ast.Ast_node.Node, StdTypes.Int>):stdgo.Error {
        final _1 = (_1 : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _2 = (_2 : stdgo.AnyInterface);
        final _3 = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>();
            for (key => value in _3) {
                __obj__[key] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension._fprint(__self__, _0, _1, _2, _3);
    }
    public static function fprint(__self__:stdgo._internal.go.printer.Printer_t_printer.T_printer, _0:stdgo._internal.io.Io_writer.Writer, _1:stdgo._internal.go.token.Token_fileset.FileSet, _2:stdgo.AnyInterface):stdgo.Error {
        final _1 = (_1 : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _2 = (_2 : stdgo.AnyInterface);
        return stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension.fprint(__self__, _0, _1, _2);
    }
}
@:dox(hide) typedef T_trimmerPointer = stdgo._internal.go.printer.Printer_t_trimmerpointer.T_trimmerPointer;
@:dox(hide) class T_trimmer_static_extension {
    static public function write(_p:T_trimmer, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.go.printer.Printer_t_trimmer_static_extension.T_trimmer_static_extension.write(_p, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _resetSpace(_p:T_trimmer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer>);
        stdgo._internal.go.printer.Printer_t_trimmer_static_extension.T_trimmer_static_extension._resetSpace(_p);
    }
}
typedef ConfigPointer = stdgo._internal.go.printer.Printer_configpointer.ConfigPointer;
class Config_static_extension {
    static public function fprint(_cfg:Config, _output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _node:stdgo.AnyInterface):stdgo.Error {
        final _cfg = (_cfg : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>);
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _node = (_node : stdgo.AnyInterface);
        return stdgo._internal.go.printer.Printer_config_static_extension.Config_static_extension.fprint(_cfg, _output, _fset, _node);
    }
    static public function _fprint(_cfg:Config, _output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _node:stdgo.AnyInterface, _nodeSizes:Map<stdgo._internal.go.ast.Ast_node.Node, StdTypes.Int>):stdgo.Error {
        final _cfg = (_cfg : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>);
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _node = (_node : stdgo.AnyInterface);
        final _nodeSizes = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>();
            for (key => value in _nodeSizes) {
                __obj__[key] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return stdgo._internal.go.printer.Printer_config_static_extension.Config_static_extension._fprint(_cfg, _output, _fset, _node, _nodeSizes);
    }
}
typedef CommentedNodePointer = stdgo._internal.go.printer.Printer_commentednodepointer.CommentedNodePointer;
class CommentedNode_static_extension {

}
@:dox(hide) typedef T_entryPointer = stdgo._internal.go.printer.Printer_t_entrypointer.T_entryPointer;
@:dox(hide) class T_entry_static_extension {

}
@:dox(hide) typedef T_limitWriterPointer = stdgo._internal.go.printer.Printer_t_limitwriterpointer.T_limitWriterPointer;
@:dox(hide) class T_limitWriter_static_extension {
    static public function write(_l:T_limitWriter, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.go.printer.Printer_t_limitwriter_static_extension.T_limitWriter_static_extension.write(_l, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_exprListModePointer = stdgo._internal.go.printer.Printer_t_exprlistmodepointer.T_exprListModePointer;
@:dox(hide) class T_exprListMode_static_extension {

}
@:dox(hide) typedef T_paramModePointer = stdgo._internal.go.printer.Printer_t_parammodepointer.T_paramModePointer;
@:dox(hide) class T_paramMode_static_extension {

}
@:dox(hide) typedef T_whiteSpacePointer = stdgo._internal.go.printer.Printer_t_whitespacepointer.T_whiteSpacePointer;
@:dox(hide) class T_whiteSpace_static_extension {

}
@:dox(hide) typedef T_pmodePointer = stdgo._internal.go.printer.Printer_t_pmodepointer.T_pmodePointer;
@:dox(hide) class T_pmode_static_extension {

}
typedef ModePointer = stdgo._internal.go.printer.Printer_modepointer.ModePointer;
class Mode_static_extension {

}
@:dox(hide) typedef T_checkModePointer = stdgo._internal.go.printer.Printer_t_checkmodepointer.T_checkModePointer;
@:dox(hide) class T_checkMode_static_extension {

}
@:dox(hide) typedef T_visitorPointer = stdgo._internal.go.printer.Printer_t_visitorpointer.T_visitorPointer;
@:dox(hide) class T_visitor_static_extension {
    static public function visit(_v:T_visitor, _n:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor {
        return stdgo._internal.go.printer.Printer_t_visitor_static_extension.T_visitor_static_extension.visit(_v, _n);
    }
}
/**
    * Package printer implements printing of AST nodes.
**/
class Printer {
    static public inline function benchmarkPrintFile(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.go.printer.Printer_benchmarkprintfile.benchmarkPrintFile(_b);
    }
    static public inline function benchmarkPrintDecl(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.go.printer.Printer_benchmarkprintdecl.benchmarkPrintDecl(_b);
    }
    /**
        * Fprint "pretty-prints" an AST node to output.
        * It calls Config.Fprint with default settings.
        * Note that gofmt uses tabs for indentation but spaces for alignment;
        * use format.Node (package go/format) for output that matches gofmt.
    **/
    static public inline function fprint(_output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _node:stdgo.AnyInterface):stdgo.Error {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _node = (_node : stdgo.AnyInterface);
        return stdgo._internal.go.printer.Printer_fprint.fprint(_output, _fset, _node);
    }
    static public inline function testFiles(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testfiles.testFiles(_t);
    }
    /**
        * TestLineComments, using a simple test case, checks that consecutive line
        * comments are properly terminated with a newline even if the AST position
        * information is incorrect.
    **/
    static public inline function testLineComments(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testlinecomments.testLineComments(_t);
    }
    /**
        * Verify that the printer doesn't crash if the AST contains BadXXX nodes.
    **/
    static public inline function testBadNodes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testbadnodes.testBadNodes(_t);
    }
    /**
        * Verify that the printer produces a correct program
        * even if the position information of comments introducing newlines
        * is incorrect.
    **/
    static public inline function testBadComments(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testbadcomments.testBadComments(_t);
    }
    /**
        * Verify that the SourcePos mode emits correct //line directives
        * by testing that position information for matching identifiers
        * is maintained.
    **/
    static public inline function testSourcePos(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testsourcepos.testSourcePos(_t);
    }
    /**
        * Verify that the SourcePos mode doesn't emit unnecessary //line directives
        * before empty lines.
    **/
    static public inline function testIssue5945(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testissue5945.testIssue5945(_t);
    }
    static public inline function testDeclLists(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testdecllists.testDeclLists(_t);
    }
    static public inline function testStmtLists(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_teststmtlists.testStmtLists(_t);
    }
    static public inline function testBaseIndent(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testbaseindent.testBaseIndent(_t);
    }
    /**
        * TestFuncType tests that an ast.FuncType with a nil Params field
        * can be printed (per go/ast specification). Test case for issue 3870.
    **/
    static public inline function testFuncType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testfunctype.testFuncType(_t);
    }
    /**
        * Test whether the printer stops writing after the first error
    **/
    static public inline function testWriteErrors(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testwriteerrors.testWriteErrors(_t);
    }
    /**
        * TextX is a skeleton test that can be filled in for debugging one-off cases.
        * Do not remove.
    **/
    static public inline function testX(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testx.testX(_t);
    }
    static public inline function testCommentedNode(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testcommentednode.testCommentedNode(_t);
    }
    static public inline function testIssue11151(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testissue11151.testIssue11151(_t);
    }
    /**
        * If a declaration has multiple specifications, a parenthesized
        * declaration must be printed even if Lparen is token.NoPos.
    **/
    static public inline function testParenthesizedDecl(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testparenthesizeddecl.testParenthesizedDecl(_t);
    }
    /**
        * Verify that we don't print a newline between "return" and its results, as
        * that would incorrectly cause a naked return.
    **/
    static public inline function testIssue32854(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testissue32854.testIssue32854(_t);
    }
    static public inline function testSourcePosNewline(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.printer.Printer_testsourceposnewline.testSourcePosNewline(_t);
    }
}
