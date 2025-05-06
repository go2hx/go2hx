package stdgo._internal.go.scanner;
@:structInit @:using(stdgo._internal.go.scanner.Scanner_scanner_static_extension.Scanner_static_extension) class Scanner {
    public var _file : stdgo.Ref<stdgo._internal.go.token.Token_file.File> = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
    public var _dir : stdgo.GoString = "";
    public var _src : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _err : stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler = (null : stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler);
    public var _mode : stdgo._internal.go.scanner.Scanner_mode.Mode = ((0 : stdgo.GoUInt) : stdgo._internal.go.scanner.Scanner_mode.Mode);
    public var _ch : stdgo.GoInt32 = 0;
    public var _offset : stdgo.GoInt = 0;
    public var _rdOffset : stdgo.GoInt = 0;
    public var _lineOffset : stdgo.GoInt = 0;
    public var _insertSemi : Bool = false;
    public var _nlPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var errorCount : stdgo.GoInt = 0;
    public function new(?_file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, ?_dir:stdgo.GoString, ?_src:stdgo.Slice<stdgo.GoUInt8>, ?_err:stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler, ?_mode:stdgo._internal.go.scanner.Scanner_mode.Mode, ?_ch:stdgo.GoInt32, ?_offset:stdgo.GoInt, ?_rdOffset:stdgo.GoInt, ?_lineOffset:stdgo.GoInt, ?_insertSemi:Bool, ?_nlPos:stdgo._internal.go.token.Token_pos.Pos, ?errorCount:stdgo.GoInt) {
        if (_file != null) this._file = _file;
        if (_dir != null) this._dir = _dir;
        if (_src != null) this._src = _src;
        if (_err != null) this._err = _err;
        if (_mode != null) this._mode = _mode;
        if (_ch != null) this._ch = _ch;
        if (_offset != null) this._offset = _offset;
        if (_rdOffset != null) this._rdOffset = _rdOffset;
        if (_lineOffset != null) this._lineOffset = _lineOffset;
        if (_insertSemi != null) this._insertSemi = _insertSemi;
        if (_nlPos != null) this._nlPos = _nlPos;
        if (errorCount != null) this.errorCount = errorCount;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Scanner(
_file,
_dir,
_src,
_err,
_mode,
_ch,
_offset,
_rdOffset,
_lineOffset,
_insertSemi,
_nlPos,
errorCount);
    }
}
