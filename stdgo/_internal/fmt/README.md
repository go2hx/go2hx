# Module: `stdgo._internal.fmt`

[(view library index)](../../stdgo.md)


# Overview



# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void`](<#function-_errorhandler>)

- [`function _getField(_v:stdgo._internal.reflect.Value, _i:stdgo.GoInt):stdgo._internal.reflect.Value`](<#function-_getfield>)

- [`function _hasX(_s:stdgo.GoString):Bool`](<#function-_hasx>)

- [`function _hexDigit(_d:stdgo.GoRune):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_hexdigit>)

- [`function _indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt`](<#function-_indexrune>)

- [`function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_intfromarg>)

- [`function _isSpace(_r:stdgo.GoRune):Bool`](<#function-_isspace>)

- [`function _newPrinter():stdgo.Ref<stdgo._internal.fmt.T_pp>`](<#function-_newprinter>)

- [`function _newScanState(_r:stdgo._internal.io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{
	_1:stdgo._internal.fmt.T_ssave;
	_0:stdgo.Ref<stdgo._internal.fmt.T_ss>;
}`](<#function-_newscanstate>)

- [`function _notSpace(_r:stdgo.GoRune):Bool`](<#function-_notspace>)

- [`function _parseArgNumber(_format:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-_parseargnumber>)

- [`function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_parsenum>)

- [`function _tooLarge(_x:stdgo.GoInt):Bool`](<#function-_toolarge>)

- [`function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-append>)

- [`function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-appendf>)

- [`function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-appendln>)

- [`function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error`](<#function-errorf>)

- [`function formatString(_state:stdgo._internal.fmt.State, _verb:stdgo.GoRune):stdgo.GoString`](<#function-formatstring>)

- [`function fprint(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fprint>)

- [`function fprintf(_w:stdgo._internal.io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fprintf>)

- [`function fprintln(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fprintln>)

- [`function fscan(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fscan>)

- [`function fscanf(_r:stdgo._internal.io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fscanf>)

- [`function fscanln(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fscanln>)

- [`function isSpace()`](<#function-isspace>)

- [`function parsenum(:stdgo.GoString, :stdgo.GoInt, :stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-parsenum>)

- [`function print(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-print>)

- [`function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-printf>)

- [`function println(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-println>)

- [`function scan(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-scan>)

- [`function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-scanf>)

- [`function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-scanln>)

- [`function sprint(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprint>)

- [`function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprintf>)

- [`function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprintln>)

- [`function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sscan>)

- [`function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sscanf>)

- [`function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sscanln>)

- [typedef Formatter](<#typedef-formatter>)

- [typedef GoStringer](<#typedef-gostringer>)

- [typedef ScanState](<#typedef-scanstate>)

- [typedef Scanner](<#typedef-scanner>)

- [typedef State](<#typedef-state>)

- [typedef Stringer](<#typedef-stringer>)

- [typedef T\_buffer](<#typedef-t_buffer>)

- [typedef T\_stringReader](<#typedef-t_stringreader>)

# Examples


- [`exampleErrorf`](<#exampleerrorf>)

- [`exampleFprint`](<#examplefprint>)

- [`exampleFprintf`](<#examplefprintf>)

- [`exampleFprintln`](<#examplefprintln>)

- [`exampleFscanf`](<#examplefscanf>)

- [`exampleFscanln`](<#examplefscanln>)

- [`exampleGoStringer`](<#examplegostringer>)

- [`examplePrint`](<#exampleprint>)

- [`examplePrintf`](<#exampleprintf>)

- [`examplePrintln`](<#exampleprintln>)

- [`exampleSprint`](<#examplesprint>)

- [`exampleSprintf`](<#examplesprintf>)

- [`exampleSprintln`](<#examplesprintln>)

- [`exampleSscanf`](<#examplesscanf>)

- [`exampleStringer`](<#examplestringer>)

# Constants


```haxe
import stdgo._internal.fmt.Fmt
```


```haxe
final _badIndexString:stdgo.GoString = (("(BADINDEX)" : stdgo.GoString))
```


```haxe
final _badPrecString:stdgo.GoString = (("%!(BADPREC)" : stdgo.GoString))
```


```haxe
final _badWidthString:stdgo.GoString = (("%!(BADWIDTH)" : stdgo.GoString))
```


```haxe
final _binaryDigits:stdgo.GoString = (("01" : stdgo.GoString))
```


```haxe
final _commaSpaceString:stdgo.GoString = ((", " : stdgo.GoString))
```


```haxe
final _decimalDigits:stdgo.GoString = (("0123456789" : stdgo.GoString))
```


```haxe
final _eof:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _exponent:stdgo.GoString = (("eEpP" : stdgo.GoString))
```


```haxe
final _extraString:stdgo.GoString = (("%!(EXTRA " : stdgo.GoString))
```


```haxe
final _floatVerbs:stdgo.GoString = (("beEfFgGv" : stdgo.GoString))
```


```haxe
final _hexadecimalDigits:stdgo.GoString = (("0123456789aAbBcCdDeEfF" : stdgo.GoString))
```


```haxe
final _hugeWid:stdgo.GoUInt64 = ((1073741824i64 : stdgo.GoUInt64))
```


```haxe
final _intBits:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final _invReflectString:stdgo.GoString = (("<invalid reflect.Value>" : stdgo.GoString))
```


```haxe
final _ldigits:stdgo.GoString = (("0123456789abcdefx" : stdgo.GoString))
```


```haxe
final _mapString:stdgo.GoString = (("map[" : stdgo.GoString))
```


```haxe
final _missingString:stdgo.GoString = (("(MISSING)" : stdgo.GoString))
```


```haxe
final _nilAngleString:stdgo.GoString = (("<nil>" : stdgo.GoString))
```


```haxe
final _nilParenString:stdgo.GoString = (("(nil)" : stdgo.GoString))
```


```haxe
final _nilString:stdgo.GoString = (("nil" : stdgo.GoString))
```


```haxe
final _noVerbString:stdgo.GoString = (("%!(NOVERB)" : stdgo.GoString))
```


```haxe
final _octalDigits:stdgo.GoString = (("01234567" : stdgo.GoString))
```


```haxe
final _panicString:stdgo.GoString = (("(PANIC=" : stdgo.GoString))
```


```haxe
final _percentBangString:stdgo.GoString = (("%!" : stdgo.GoString))
```


```haxe
final _period:stdgo.GoString = (("." : stdgo.GoString))
```


```haxe
final _sign:stdgo.GoString = (("+-" : stdgo.GoString))
```


```haxe
final _signed:Bool = true
```


```haxe
final _udigits:stdgo.GoString = (("0123456789ABCDEFX" : stdgo.GoString))
```


```haxe
final _uintptrBits:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final _unsigned:Bool = false
```


# Variables


```haxe
import stdgo._internal.fmt.Fmt
```


```haxe
var _errBool:stdgo.Error
```


```haxe
var _errComplex:stdgo.Error
```


```haxe
var _ppFree:stdgo._internal.sync.Pool
```


```haxe
var _space:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt16>>
```


```haxe
var _ssFree:stdgo._internal.sync.Pool
```


# Functions


```haxe
import stdgo._internal.fmt.Fmt
```


## function \_errorHandler


```haxe
function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void
```


[\(view code\)](<./Fmt.hx#L760>)


## function \_getField


```haxe
function _getField(_v:stdgo._internal.reflect.Value, _i:stdgo.GoInt):stdgo._internal.reflect.Value
```


[\(view code\)](<./Fmt.hx#L529>)


## function \_hasX


```haxe
function _hasX(_s:stdgo.GoString):Bool
```


[\(view code\)](<./Fmt.hx#L735>)


## function \_hexDigit


```haxe
function _hexDigit(_d:stdgo.GoRune):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L746>)


## function \_indexRune


```haxe
function _indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt
```


[\(view code\)](<./Fmt.hx#L727>)


## function \_intFromArg


```haxe
function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L557>)


## function \_isSpace


```haxe
function _isSpace(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Fmt.hx#L684>)


## function \_newPrinter


```haxe
function _newPrinter():stdgo.Ref<stdgo._internal.fmt.T_pp>
```


[\(view code\)](<./Fmt.hx#L419>)


## function \_newScanState


```haxe
function _newScanState(_r:stdgo._internal.io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{
	_1:stdgo._internal.fmt.T_ssave;
	_0:stdgo.Ref<stdgo._internal.fmt.T_ss>;
}
```


[\(view code\)](<./Fmt.hx#L702>)


## function \_notSpace


```haxe
function _notSpace(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Fmt.hx#L699>)


## function \_parseArgNumber


```haxe
function _parseArgNumber(_format:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L599>)


## function \_parsenum


```haxe
function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L540>)


## function \_tooLarge


```haxe
function _tooLarge(_x:stdgo.GoInt):Bool
```


[\(view code\)](<./Fmt.hx#L536>)


## function append


```haxe
function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Fmt.hx#L487>)


## function appendf


```haxe
function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Fmt.hx#L453>)


## function appendln


```haxe
function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Fmt.hx#L521>)


## function errorf


```haxe
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error
```


### exampleErrorf


<details><summary></summary>
<p>


```haxe
function exampleErrorf():Void {
        {};
        var _err = (stdgo._internal.fmt.Fmt.errorf(("user %q (id %d) not found" : stdgo.GoString), stdgo.Go.toInterface(("bueller" : stdgo.GoString)), stdgo.Go.toInterface((17 : stdgo.GoInt))) : stdgo.Error);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_err.error()));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L347>)


## function formatString


```haxe
function formatString(_state:stdgo._internal.fmt.State, _verb:stdgo.GoRune):stdgo.GoString
```


[\(view code\)](<./Fmt.hx#L395>)


## function fprint


```haxe
function fprint(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### exampleFprint


<details><summary></summary>
<p>


```haxe
function exampleFprint():Void {
        {};
        var __tmp__ = stdgo._internal.fmt.Fmt.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Fprint: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(_n), stdgo.Go.toInterface((" bytes written.\n" : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L461>)


## function fprintf


```haxe
function fprintf(_w:stdgo._internal.io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### exampleFprintf


<details><summary></summary>
<p>


```haxe
function exampleFprintf():Void {
        {};
        var __tmp__ = stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), ("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Fprintf: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%d bytes written.\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L427>)


## function fprintln


```haxe
function fprintln(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### exampleFprintln


<details><summary></summary>
<p>


```haxe
function exampleFprintln():Void {
        {};
        var __tmp__ = stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Fprintln: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(("bytes written." : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L495>)


## function fscan


```haxe
function fscan(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L648>)


## function fscanf


```haxe
function fscanf(_r:stdgo._internal.io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### exampleFscanf


<details><summary></summary>
<p>


```haxe
function exampleFscanf():Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:Bool = false, __2:stdgo.GoString = ("" : stdgo.GoString);
var _s = __2, _b = __1, _i = __0;
        var _r = stdgo._internal.strings.Strings.newReader(("5 true gophers" : stdgo.GoString));
        var __tmp__ = stdgo._internal.fmt.Fmt.fscanf(stdgo.Go.asInterface(_r), ("%d %t %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)), stdgo.Go.toInterface(stdgo.Go.pointer(_s))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Fscanf: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_s));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_n));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L672>)


## function fscanln


```haxe
function fscanln(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### exampleFscanln


<details><summary></summary>
<p>


```haxe
function exampleFscanln():Void {
        var _s = ("dmr 1771 1.61803398875\n\tken 271828 3.14159" : stdgo.GoString);
        var _r = stdgo._internal.strings.Strings.newReader(_s?.__copy__());
        var _a:stdgo.GoString = ("" : stdgo.GoString);
        var _b:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        while (true) {
            var __tmp__ = stdgo._internal.fmt.Fmt.fscanln(stdgo.Go.asInterface(_r), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)), stdgo.Go.toInterface(stdgo.Go.pointer(_c))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                break;
            };
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            stdgo._internal.fmt.Fmt.printf(("%d: %s, %d, %f\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_c));
        };
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L660>)


## function isSpace


```haxe
function isSpace()
```


[\(view code\)](<./Fmt.hx#L42>)


## function parsenum


```haxe
function parsenum(:stdgo.GoString, :stdgo.GoInt, :stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L43>)


## function print


```haxe
function print(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### examplePrint


<details><summary></summary>
<p>


```haxe
function examplePrint():Void {
        {};
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L474>)


## function printf


```haxe
function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### examplePrintf


<details><summary></summary>
<p>


```haxe
function examplePrintf():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L440>)


## function println


```haxe
function println(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### examplePrintln


<details><summary></summary>
<p>


```haxe
function examplePrintln():Void {
        {};
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L508>)


## function scan


```haxe
function scan(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L618>)


## function scanf


```haxe
function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L628>)


## function scanln


```haxe
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L623>)


## function sprint


```haxe
function sprint(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```


### exampleSprint


<details><summary></summary>
<p>


```haxe
function exampleSprint():Void {
        {};
        var _s = (stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString)))?.__copy__() : stdgo.GoString);
        stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _s?.__copy__());
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L479>)


## function sprintf


```haxe
function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```


### exampleSprintf


<details><summary></summary>
<p>


```haxe
function exampleSprintf():Void {
        {};
        var _s = (stdgo._internal.fmt.Fmt.sprintf(("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
        stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _s?.__copy__());
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L445>)


## function sprintln


```haxe
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```


### exampleSprintln


<details><summary></summary>
<p>


```haxe
function exampleSprintln():Void {
        {};
        var _s = (stdgo._internal.fmt.Fmt.sprintln(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString)))?.__copy__() : stdgo.GoString);
        stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _s?.__copy__());
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L513>)


## function sscan


```haxe
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L633>)


## function sscanf


```haxe
function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### exampleSscanf


<details><summary></summary>
<p>


```haxe
function exampleSscanf():Void {
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        var _age:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.fmt.Fmt.sscanf(("Kim is 22 years old" : stdgo.GoString), ("%s is %d years old" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_name)), stdgo.Go.toInterface(stdgo.Go.pointer(_age))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.fmt.Fmt.printf(("%d: %s, %d\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_age));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L643>)


## function sscanln


```haxe
function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L638>)


# Typedefs


```haxe
import stdgo._internal.fmt.*
```


## typedef Formatter


```haxe
typedef Formatter = {
	public function format(_f:stdgo._internal.fmt.State, _verb:stdgo.GoRune):Void;
};
```


## typedef GoStringer


```haxe
typedef GoStringer = {
	public function goString():stdgo.GoString;
};
```


## typedef ScanState


```haxe
typedef ScanState = {
	public function width():{
		_1:Bool;
		_0:stdgo.GoInt;
	};	// Width returns the value of the width option and whether it has been set. The unit is Unicode code points.
	public function unreadRune():stdgo.Error;	// UnreadRune causes the next call to ReadRune to return the same rune.
	public function token(_skipSpace:Bool, _f:()):{
		_1:stdgo.Error;
		_0:stdgo.Slice<stdgo.GoByte>;
	};	// Token skips space in the input if skipSpace is true, then returns the run of Unicode code points c satisfying f(c). If f is nil, !unicode.IsSpace(c) is used; that is, the token will hold non-space characters. Newlines are treated appropriately for the operation being performed; see the package documentation for more information. The returned slice points to shared data that may be overwritten by the next call to Token, a call to a Scan function using the ScanState as input, or when the calling Scan method returns.
	public function skipSpace():Void;	// SkipSpace skips space in the input. Newlines are treated appropriately for the operation being performed; see the package documentation for more information.
	public function readRune():{
		_2:stdgo.Error;
		_1:stdgo.GoInt;
		_0:stdgo.GoRune;
	};	// ReadRune reads the next rune (Unicode code point) from the input. If invoked during Scanln, Fscanln, or Sscanln, ReadRune() will return EOF after returning the first '\n' or when reading beyond the specified width.
	public function read(_buf:stdgo.Slice<stdgo.GoByte>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};	// Because ReadRune is implemented by the interface, Read should never be called by the scanning routines and a valid implementation of ScanState may choose always to return an error from Read.
};
```


## typedef Scanner


```haxe
typedef Scanner = {
	public function scan(_state:stdgo._internal.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error;
};
```


## typedef State


```haxe
typedef State = {
	public function write(_b:stdgo.Slice<stdgo.GoByte>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};	// Write is the function to call to emit formatted output to be printed.
	public function width():{
		_1:Bool;
		_0:stdgo.GoInt;
	};	// Width returns the value of the width option and whether it has been set.
	public function precision():{
		_1:Bool;
		_0:stdgo.GoInt;
	};	// Precision returns the value of the precision option and whether it has been set.
	public function flag(_c:stdgo.GoInt):Bool;	// Flag reports whether the flag c, a character, has been set.
};
```


## typedef Stringer


```haxe
typedef Stringer = {
	public function string():stdgo.GoString;
};
```


## typedef T\_buffer


```haxe
typedef T_buffer = stdgo.Slice<stdgo.GoUInt8>;
```


## typedef T\_stringReader


```haxe
typedef T_stringReader = stdgo.GoString;
```


