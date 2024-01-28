package stdgo.fmt;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _ppFree : Dynamic;
@:invalid var _space : Dynamic;
@:invalid var _ssFree : Dynamic;
@:invalid var _errComplex : Dynamic;
@:invalid var _errBool : Dynamic;
@:invalid var isSpace : Dynamic;
@:invalid var parsenum : Dynamic;
@:invalid var _ldigits : Dynamic;
@:invalid var _udigits : Dynamic;
@:invalid var _signed : Dynamic;
@:invalid var _unsigned : Dynamic;
@:invalid var _commaSpaceString : Dynamic;
@:invalid var _nilAngleString : Dynamic;
@:invalid var _nilParenString : Dynamic;
@:invalid var _nilString : Dynamic;
@:invalid var _mapString : Dynamic;
@:invalid var _percentBangString : Dynamic;
@:invalid var _missingString : Dynamic;
@:invalid var _badIndexString : Dynamic;
@:invalid var _panicString : Dynamic;
@:invalid var _extraString : Dynamic;
@:invalid var _badWidthString : Dynamic;
@:invalid var _badPrecString : Dynamic;
@:invalid var _noVerbString : Dynamic;
@:invalid var _invReflectString : Dynamic;
@:invalid var _eof : Dynamic;
@:invalid var _binaryDigits : Dynamic;
@:invalid var _octalDigits : Dynamic;
@:invalid var _decimalDigits : Dynamic;
@:invalid var _hexadecimalDigits : Dynamic;
@:invalid var _sign : Dynamic;
@:invalid var _period : Dynamic;
@:invalid var _exponent : Dynamic;
@:invalid var _floatVerbs : Dynamic;
@:invalid var _hugeWid : Dynamic;
@:invalid var _intBits : Dynamic;
@:invalid var _uintptrBits : Dynamic;
typedef State = stdgo._internal.fmt.Fmt.State;
typedef Formatter = stdgo._internal.fmt.Fmt.Formatter;
typedef Stringer = stdgo._internal.fmt.Fmt.Stringer;
typedef GoStringer = stdgo._internal.fmt.Fmt.GoStringer;
typedef ScanState = stdgo._internal.fmt.Fmt.ScanState;
typedef Scanner = stdgo._internal.fmt.Fmt.Scanner;
@:invalid typedef T_wrapError = Dynamic;
@:invalid typedef T_wrapErrors = Dynamic;
@:invalid typedef T_fmtFlags = Dynamic;
@:invalid typedef T_fmt = Dynamic;
@:invalid typedef T_pp = Dynamic;
@:invalid typedef T_scanError = Dynamic;
@:invalid typedef T_ss = Dynamic;
@:invalid typedef T_ssave = Dynamic;
@:invalid typedef T_readRune = Dynamic;
typedef T_buffer = stdgo._internal.fmt.Fmt.T_buffer;
typedef T_stringReader = stdgo._internal.fmt.Fmt.T_stringReader;
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function formatString(_state:State, _verb:stdgo.GoRune):Void {}
function _newPrinter():Void {}
function fprintf(_w:stdgo._internal.io.Io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function fprint(_w:stdgo._internal.io.Io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function print(_a:haxe.Rest<stdgo.AnyInterface>):Void {}
function sprint(_a:haxe.Rest<stdgo.AnyInterface>):Void {}
function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function fprintln(_w:stdgo._internal.io.Io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function println(_a:haxe.Rest<stdgo.AnyInterface>):Void {}
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):Void {}
function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function _getField(_v:stdgo._internal.reflect.Reflect.Value, _i:stdgo.GoInt):Void {}
function _tooLarge(_x:stdgo.GoInt):Void {}
function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):Void {}
function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):Void {}
function _parseArgNumber(_format:stdgo.GoString):Void {}
function scan(_a:haxe.Rest<stdgo.AnyInterface>):Void {}
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):Void {}
function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function fscan(_r:stdgo._internal.io.Io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function fscanln(_r:stdgo._internal.io.Io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function fscanf(_r:stdgo._internal.io.Io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {}
function _isSpace(_r:stdgo.GoRune):Void {}
function _notSpace(_r:stdgo.GoRune):Void {}
function _newScanState(_r:stdgo._internal.io.Io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):Void {}
function _indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void {}
function _hasX(_s:stdgo.GoString):Void {}
function _hexDigit(_d:stdgo.GoRune):Void {}
function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void {}
@:invalid typedef T_wrapError_asInterface = Dynamic;
@:invalid typedef T_wrapError_static_extension = Dynamic;
@:invalid typedef T_wrapErrors_asInterface = Dynamic;
@:invalid typedef T_wrapErrors_static_extension = Dynamic;
@:invalid typedef T_fmt_asInterface = Dynamic;
@:invalid typedef T_fmt_static_extension = Dynamic;
@:invalid typedef T_pp_asInterface = Dynamic;
@:invalid typedef T_pp_static_extension = Dynamic;
@:invalid typedef T_ss_asInterface = Dynamic;
@:invalid typedef T_ss_static_extension = Dynamic;
@:invalid typedef T_readRune_asInterface = Dynamic;
@:invalid typedef T_readRune_static_extension = Dynamic;
@:invalid typedef T_buffer_asInterface = Dynamic;
@:invalid typedef T_buffer_static_extension = Dynamic;
@:invalid typedef T_stringReader_asInterface = Dynamic;
@:invalid typedef T_stringReader_static_extension = Dynamic;
