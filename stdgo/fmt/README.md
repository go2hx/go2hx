# Module: `stdgo.fmt`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void`](<#function-_errorhandler>)

- [`function _getField(_v:stdgo._internal.reflect.Value, _i:stdgo.GoInt):Void`](<#function-_getfield>)

- [`function _hasX(_s:stdgo.GoString):Void`](<#function-_hasx>)

- [`function _hexDigit(_d:stdgo.GoRune):Void`](<#function-_hexdigit>)

- [`function _indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void`](<#function-_indexrune>)

- [`function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):Void`](<#function-_intfromarg>)

- [`function _isSpace(_r:stdgo.GoRune):Void`](<#function-_isspace>)

- [`function _newPrinter():Void`](<#function-_newprinter>)

- [`function _newScanState(_r:stdgo._internal.io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):Void`](<#function-_newscanstate>)

- [`function _notSpace(_r:stdgo.GoRune):Void`](<#function-_notspace>)

- [`function _parseArgNumber(_format:stdgo.GoString):Void`](<#function-_parseargnumber>)

- [`function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):Void`](<#function-_parsenum>)

- [`function _tooLarge(_x:stdgo.GoInt):Void`](<#function-_toolarge>)

- [`function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-append>)

- [`function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-appendf>)

- [`function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-appendln>)

- [`function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-errorf>)

- [`function formatString(_state:stdgo.fmt.State, _verb:stdgo.GoRune):Void`](<#function-formatstring>)

- [`function fprint(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fprint>)

- [`function fprintf(_w:stdgo._internal.io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fprintf>)

- [`function fprintln(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fprintln>)

- [`function fscan(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fscan>)

- [`function fscanf(_r:stdgo._internal.io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fscanf>)

- [`function fscanln(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fscanln>)

- [`function print(_a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-print>)

- [`function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-printf>)

- [`function println(_a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-println>)

- [`function scan(_a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-scan>)

- [`function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-scanf>)

- [`function scanln(_a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-scanln>)

- [`function sprint(_a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-sprint>)

- [`function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-sprintf>)

- [`function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-sprintln>)

- [`function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-sscan>)

- [`function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-sscanf>)

- [`function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-sscanln>)

- [typedef Formatter](<#typedef-formatter>)

- [typedef GoStringer](<#typedef-gostringer>)

- [typedef ScanState](<#typedef-scanstate>)

- [typedef Scanner](<#typedef-scanner>)

- [typedef State](<#typedef-state>)

- [typedef Stringer](<#typedef-stringer>)

- [typedef T\_buffer](<#typedef-t_buffer>)

- [typedef T\_buffer\_asInterface](<#typedef-t_buffer_asinterface>)

- [typedef T\_buffer\_static\_extension](<#typedef-t_buffer_static_extension>)

- [typedef T\_fmt](<#typedef-t_fmt>)

- [typedef T\_fmtFlags](<#typedef-t_fmtflags>)

- [typedef T\_fmt\_asInterface](<#typedef-t_fmt_asinterface>)

- [typedef T\_fmt\_static\_extension](<#typedef-t_fmt_static_extension>)

- [typedef T\_pp](<#typedef-t_pp>)

- [typedef T\_pp\_asInterface](<#typedef-t_pp_asinterface>)

- [typedef T\_pp\_static\_extension](<#typedef-t_pp_static_extension>)

- [typedef T\_readRune](<#typedef-t_readrune>)

- [typedef T\_readRune\_asInterface](<#typedef-t_readrune_asinterface>)

- [typedef T\_readRune\_static\_extension](<#typedef-t_readrune_static_extension>)

- [typedef T\_scanError](<#typedef-t_scanerror>)

- [typedef T\_ss](<#typedef-t_ss>)

- [typedef T\_ss\_asInterface](<#typedef-t_ss_asinterface>)

- [typedef T\_ss\_static\_extension](<#typedef-t_ss_static_extension>)

- [typedef T\_ssave](<#typedef-t_ssave>)

- [typedef T\_stringReader](<#typedef-t_stringreader>)

- [typedef T\_stringReader\_asInterface](<#typedef-t_stringreader_asinterface>)

- [typedef T\_stringReader\_static\_extension](<#typedef-t_stringreader_static_extension>)

- [typedef T\_wrapError](<#typedef-t_wraperror>)

- [typedef T\_wrapError\_asInterface](<#typedef-t_wraperror_asinterface>)

- [typedef T\_wrapError\_static\_extension](<#typedef-t_wraperror_static_extension>)

- [typedef T\_wrapErrors](<#typedef-t_wraperrors>)

- [typedef T\_wrapErrors\_asInterface](<#typedef-t_wraperrors_asinterface>)

- [typedef T\_wrapErrors\_static\_extension](<#typedef-t_wraperrors_static_extension>)

# Variables


```haxe
import stdgo.fmt.Fmt
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _badIndexString:Dynamic
```


```haxe
var _badPrecString:Dynamic
```


```haxe
var _badWidthString:Dynamic
```


```haxe
var _binaryDigits:Dynamic
```


```haxe
var _commaSpaceString:Dynamic
```


```haxe
var _decimalDigits:Dynamic
```


```haxe
var _eof:Dynamic
```


```haxe
var _errBool:Dynamic
```


```haxe
var _errComplex:Dynamic
```


```haxe
var _exponent:Dynamic
```


```haxe
var _extraString:Dynamic
```


```haxe
var _floatVerbs:Dynamic
```


```haxe
var _hexadecimalDigits:Dynamic
```


```haxe
var _hugeWid:Dynamic
```


```haxe
var _intBits:Dynamic
```


```haxe
var _invReflectString:Dynamic
```


```haxe
var _ldigits:Dynamic
```


```haxe
var _mapString:Dynamic
```


```haxe
var _missingString:Dynamic
```


```haxe
var _nilAngleString:Dynamic
```


```haxe
var _nilParenString:Dynamic
```


```haxe
var _nilString:Dynamic
```


```haxe
var _noVerbString:Dynamic
```


```haxe
var _octalDigits:Dynamic
```


```haxe
var _panicString:Dynamic
```


```haxe
var _percentBangString:Dynamic
```


```haxe
var _period:Dynamic
```


```haxe
var _ppFree:Dynamic
```


```haxe
var _sign:Dynamic
```


```haxe
var _signed:Dynamic
```


```haxe
var _space:Dynamic
```


```haxe
var _ssFree:Dynamic
```


```haxe
var _udigits:Dynamic
```


```haxe
var _uintptrBits:Dynamic
```


```haxe
var _unsigned:Dynamic
```


```haxe
var isSpace:Dynamic
```


```haxe
var parsenum:Dynamic
```


# Functions


```haxe
import stdgo.fmt.Fmt
```


## function \_errorHandler


```haxe
function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void
```


[\(view code\)](<./Fmt.hx#L92>)


## function \_getField


```haxe
function _getField(_v:stdgo._internal.reflect.Value, _i:stdgo.GoInt):Void
```


[\(view code\)](<./Fmt.hx#L72>)


## function \_hasX


```haxe
function _hasX(_s:stdgo.GoString):Void
```


[\(view code\)](<./Fmt.hx#L90>)


## function \_hexDigit


```haxe
function _hexDigit(_d:stdgo.GoRune):Void
```


[\(view code\)](<./Fmt.hx#L91>)


## function \_indexRune


```haxe
function _indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Fmt.hx#L89>)


## function \_intFromArg


```haxe
function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):Void
```


[\(view code\)](<./Fmt.hx#L75>)


## function \_isSpace


```haxe
function _isSpace(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Fmt.hx#L86>)


## function \_newPrinter


```haxe
function _newPrinter():Void
```


[\(view code\)](<./Fmt.hx#L59>)


## function \_newScanState


```haxe
function _newScanState(_r:stdgo._internal.io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):Void
```


[\(view code\)](<./Fmt.hx#L88>)


## function \_notSpace


```haxe
function _notSpace(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Fmt.hx#L87>)


## function \_parseArgNumber


```haxe
function _parseArgNumber(_format:stdgo.GoString):Void
```


[\(view code\)](<./Fmt.hx#L76>)


## function \_parsenum


```haxe
function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):Void
```


[\(view code\)](<./Fmt.hx#L74>)


## function \_tooLarge


```haxe
function _tooLarge(_x:stdgo.GoInt):Void
```


[\(view code\)](<./Fmt.hx#L73>)


## function append


```haxe
function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L67>)


## function appendf


```haxe
function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L63>)


## function appendln


```haxe
function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L71>)


## function errorf


```haxe
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L57>)


## function formatString


```haxe
function formatString(_state:stdgo.fmt.State, _verb:stdgo.GoRune):Void
```


[\(view code\)](<./Fmt.hx#L58>)


## function fprint


```haxe
function fprint(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L64>)


## function fprintf


```haxe
function fprintf(_w:stdgo._internal.io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L60>)


## function fprintln


```haxe
function fprintln(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L68>)


## function fscan


```haxe
function fscan(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L83>)


## function fscanf


```haxe
function fscanf(_r:stdgo._internal.io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L85>)


## function fscanln


```haxe
function fscanln(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L84>)


## function print


```haxe
function print(_a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L65>)


## function printf


```haxe
function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L61>)


## function println


```haxe
function println(_a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L69>)


## function scan


```haxe
function scan(_a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L77>)


## function scanf


```haxe
function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L79>)


## function scanln


```haxe
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L78>)


## function sprint


```haxe
function sprint(_a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L66>)


## function sprintf


```haxe
function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L62>)


## function sprintln


```haxe
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L70>)


## function sscan


```haxe
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L80>)


## function sscanf


```haxe
function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L82>)


## function sscanln


```haxe
function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Fmt.hx#L81>)


# Typedefs


```haxe
import stdgo.fmt.*
```


## typedef Formatter


```haxe
typedef Formatter = stdgo._internal.fmt.Formatter;
```


## typedef GoStringer


```haxe
typedef GoStringer = stdgo._internal.fmt.GoStringer;
```


## typedef ScanState


```haxe
typedef ScanState = stdgo._internal.fmt.ScanState;
```


## typedef Scanner


```haxe
typedef Scanner = stdgo._internal.fmt.Scanner;
```


## typedef State


```haxe
typedef State = stdgo._internal.fmt.State;
```


## typedef Stringer


```haxe
typedef Stringer = stdgo._internal.fmt.Stringer;
```


## typedef T\_buffer


```haxe
typedef T_buffer = stdgo._internal.fmt.T_buffer;
```


## typedef T\_buffer\_asInterface


```haxe
typedef T_buffer_asInterface = Dynamic;
```


## typedef T\_buffer\_static\_extension


```haxe
typedef T_buffer_static_extension = Dynamic;
```


## typedef T\_fmt


```haxe
typedef T_fmt = Dynamic;
```


## typedef T\_fmtFlags


```haxe
typedef T_fmtFlags = Dynamic;
```


## typedef T\_fmt\_asInterface


```haxe
typedef T_fmt_asInterface = Dynamic;
```


## typedef T\_fmt\_static\_extension


```haxe
typedef T_fmt_static_extension = Dynamic;
```


## typedef T\_pp


```haxe
typedef T_pp = Dynamic;
```


## typedef T\_pp\_asInterface


```haxe
typedef T_pp_asInterface = Dynamic;
```


## typedef T\_pp\_static\_extension


```haxe
typedef T_pp_static_extension = Dynamic;
```


## typedef T\_readRune


```haxe
typedef T_readRune = Dynamic;
```


## typedef T\_readRune\_asInterface


```haxe
typedef T_readRune_asInterface = Dynamic;
```


## typedef T\_readRune\_static\_extension


```haxe
typedef T_readRune_static_extension = Dynamic;
```


## typedef T\_scanError


```haxe
typedef T_scanError = Dynamic;
```


## typedef T\_ss


```haxe
typedef T_ss = Dynamic;
```


## typedef T\_ss\_asInterface


```haxe
typedef T_ss_asInterface = Dynamic;
```


## typedef T\_ss\_static\_extension


```haxe
typedef T_ss_static_extension = Dynamic;
```


## typedef T\_ssave


```haxe
typedef T_ssave = Dynamic;
```


## typedef T\_stringReader


```haxe
typedef T_stringReader = stdgo._internal.fmt.T_stringReader;
```


## typedef T\_stringReader\_asInterface


```haxe
typedef T_stringReader_asInterface = Dynamic;
```


## typedef T\_stringReader\_static\_extension


```haxe
typedef T_stringReader_static_extension = Dynamic;
```


## typedef T\_wrapError


```haxe
typedef T_wrapError = Dynamic;
```


## typedef T\_wrapError\_asInterface


```haxe
typedef T_wrapError_asInterface = Dynamic;
```


## typedef T\_wrapError\_static\_extension


```haxe
typedef T_wrapError_static_extension = Dynamic;
```


## typedef T\_wrapErrors


```haxe
typedef T_wrapErrors = Dynamic;
```


## typedef T\_wrapErrors\_asInterface


```haxe
typedef T_wrapErrors_asInterface = Dynamic;
```


## typedef T\_wrapErrors\_static\_extension


```haxe
typedef T_wrapErrors_static_extension = Dynamic;
```


