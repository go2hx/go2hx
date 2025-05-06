package stdgo._internal.go.printer;
@:structInit @:using(stdgo._internal.go.printer.Printer_t_printer_static_extension.T_printer_static_extension) class T_printer {
    @:embedded
    public var config : stdgo._internal.go.printer.Printer_config.Config = ({} : stdgo._internal.go.printer.Printer_config.Config);
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _output : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _indent : stdgo.GoInt = 0;
    public var _level : stdgo.GoInt = 0;
    public var _mode : stdgo._internal.go.printer.Printer_t_pmode.T_pmode = ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode);
    public var _endAlignment : Bool = false;
    public var _impliedSemi : Bool = false;
    public var _lastTok : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var _prevOpen : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var _wsbuf : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace> = (null : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>);
    public var _goBuild : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _plusBuild : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _pos : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public var _out : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public var _last : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public var _linePtr : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _sourcePosErr : stdgo.Error = (null : stdgo.Error);
    public var _comments : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
    public var _useNodeComments : Bool = false;
    @:embedded
    public var _commentInfo : stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo = ({} : stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo);
    public var _nodeSizes : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>);
    public var _cachedPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _cachedLine : stdgo.GoInt = 0;
    public function new(?config:stdgo._internal.go.printer.Printer_config.Config, ?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_output:stdgo.Slice<stdgo.GoUInt8>, ?_indent:stdgo.GoInt, ?_level:stdgo.GoInt, ?_mode:stdgo._internal.go.printer.Printer_t_pmode.T_pmode, ?_endAlignment:Bool, ?_impliedSemi:Bool, ?_lastTok:stdgo._internal.go.token.Token_token.Token, ?_prevOpen:stdgo._internal.go.token.Token_token.Token, ?_wsbuf:stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>, ?_goBuild:stdgo.Slice<stdgo.GoInt>, ?_plusBuild:stdgo.Slice<stdgo.GoInt>, ?_pos:stdgo._internal.go.token.Token_position.Position, ?_out:stdgo._internal.go.token.Token_position.Position, ?_last:stdgo._internal.go.token.Token_position.Position, ?_linePtr:stdgo.Pointer<stdgo.GoInt>, ?_sourcePosErr:stdgo.Error, ?_comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>, ?_useNodeComments:Bool, ?_commentInfo:stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo, ?_nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>, ?_cachedPos:stdgo._internal.go.token.Token_pos.Pos, ?_cachedLine:stdgo.GoInt) {
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
        if (_sourcePosErr != null) this._sourcePosErr = _sourcePosErr;
        if (_comments != null) this._comments = _comments;
        if (_useNodeComments != null) this._useNodeComments = _useNodeComments;
        if (_commentInfo != null) this._commentInfo = _commentInfo;
        if (_nodeSizes != null) this._nodeSizes = _nodeSizes;
        if (_cachedPos != null) this._cachedPos = _cachedPos;
        if (_cachedLine != null) this._cachedLine = _cachedLine;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var fprint(get, never) : (stdgo._internal.io.Io_writer.Writer, stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, stdgo.AnyInterface) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_fprint():(stdgo._internal.io.Io_writer.Writer, stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, stdgo.AnyInterface) -> stdgo.Error return @:check32 this.config.fprint;
    public var _fprint(get, never) : (stdgo._internal.io.Io_writer.Writer, stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, stdgo.AnyInterface, stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__fprint():(stdgo._internal.io.Io_writer.Writer, stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, stdgo.AnyInterface, stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>) -> stdgo.Error return @:check32 this.config._fprint;
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
_sourcePosErr,
_comments,
_useNodeComments,
_commentInfo,
_nodeSizes,
_cachedPos,
_cachedLine);
    }
}
