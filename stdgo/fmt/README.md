# Module: `stdgo.fmt`

[(view library index)](../stdgo.md)


# Overview


# Index


- [`function isSpace()`](<#function-isspace>)

- [`function parsenum(:stdgo.GoString, :stdgo.GoInt, :stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-parsenum>)

- [class Fmt](<#class-fmt>)

  - [`function append(_b:Array<UInt>, _a:haxe.Rest<stdgo.AnyInterface>):Array<UInt>`](<#fmt-function-append>)

  - [`function appendf(_b:Array<UInt>, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):Array<UInt>`](<#fmt-function-appendf>)

  - [`function appendln(_b:Array<UInt>, _a:haxe.Rest<stdgo.AnyInterface>):Array<UInt>`](<#fmt-function-appendln>)

  - [`function errorf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error`](<#fmt-function-errorf>)

  - [`function formatString(_state:stdgo.fmt.State, _verb:Int):String`](<#fmt-function-formatstring>)

  - [`function fprint(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-fprint>)

  - [`function fprintf(_w:stdgo._internal.io.Writer, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-fprintf>)

  - [`function fprintln(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-fprintln>)

  - [`function fscan(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-fscan>)

  - [`function fscanf(_r:stdgo._internal.io.Reader, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-fscanf>)

  - [`function fscanln(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-fscanln>)

  - [`function print(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-print>)

  - [`function printf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-printf>)

  - [`function println(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-println>)

  - [`function scan(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-scan>)

  - [`function scanf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-scanf>)

  - [`function scanln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-scanln>)

  - [`function sprint(_a:haxe.Rest<stdgo.AnyInterface>):String`](<#fmt-function-sprint>)

  - [`function sprintf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):String`](<#fmt-function-sprintf>)

  - [`function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):String`](<#fmt-function-sprintln>)

  - [`function sscan(_str:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-sscan>)

  - [`function sscanf(_str:String, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-sscanf>)

  - [`function sscanln(_str:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>`](<#fmt-function-sscanln>)

- [typedef Formatter](<#typedef-formatter>)

- [typedef GoStringer](<#typedef-gostringer>)

- [typedef ScanState](<#typedef-scanstate>)

- [typedef Scanner](<#typedef-scanner>)

- [typedef State](<#typedef-state>)

- [typedef Stringer](<#typedef-stringer>)

- [typedef T\_buffer](<#typedef-t_buffer>)

- [typedef T\_stringReader](<#typedef-t_stringreader>)

- [abstract T\_wrapError](<#abstract-t_wraperror>)

- [abstract T\_wrapErrors](<#abstract-t_wraperrors>)

- [abstract T\_fmtFlags](<#abstract-t_fmtflags>)

- [abstract T\_fmt](<#abstract-t_fmt>)

- [abstract T\_pp](<#abstract-t_pp>)

- [abstract T\_scanError](<#abstract-t_scanerror>)

- [abstract T\_ss](<#abstract-t_ss>)

- [abstract T\_ssave](<#abstract-t_ssave>)

- [abstract T\_readRune](<#abstract-t_readrune>)

# Functions


```haxe
import stdgo.fmt.Fmt
```


## function isSpace


```haxe
function isSpace()
```


[\(view code\)](<./Fmt.hx>)


## function parsenum


```haxe
function parsenum(:stdgo.GoString, :stdgo.GoInt, :stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx>)


# Classes


```haxe
import stdgo.fmt.*
```


## class Fmt


```
{
    	end_4129040 = len(format)
    	argNum_4129060 = 0
    	afterIndex_4129131 = false
    	p.reordered = false
    	gotoNext = 4129222
    	_ = gotoNext == 4129222
    	i_4129239 = 0
    	formatLoopBreak = false
    	gotoNext = 4129235
    	_ = gotoNext == 4129235
    	if !formatLoopBreak && (i_4129239 < end_4129040) {
    		gotoNext = 4129256
    		_ = gotoNext == 4129256
    		p.goodArgNum = true
    		lasti_4129282 = i_4129239
    		_ = 0
    		gotoNext = 4129295
    		_ = gotoNext == 4129295
    		if i_4129239 < end_4129040 && format[i_4129239] != 37 {
    			gotoNext = 4129327
    			_ = gotoNext == 4129327
    			i_4129239++
    			gotoNext = 4129295
    		} else {
    			gotoNext = 4129342
}
    		_ = gotoNext == 4129342
    		if i_4129239 > lasti_4129282 {
    			gotoNext = 4129355
    			_ = gotoNext == 4129355
    			p.buf.writeString(format[lasti_4129282:i_4129239])
    			gotoNext = 4129401
    		} else {
    			gotoNext = 4129401
}
    		_ = gotoNext == 4129401
    		if i_4129239 >= end_4129040 {
    			gotoNext = 4129413
    			_ = gotoNext == 4129413
    			gotoNext = 4133066
    			gotoNext = 4129489
    		} else {
    			gotoNext = 4129489
}
    		_ = gotoNext == 4129489
    		i_4129239++
    		p.fmt.clearflags()
    		gotoNext = 4129539
    		_ = gotoNext == 4129539
    		_ = 0
    		simpleFormatBreak = false
    		gotoNext = 4129555
    		_ = gotoNext == 4129555
    		if !simpleFormatBreak && (i_4129239 < end_4129040) {
    			gotoNext = 4129574
    			_ = gotoNext == 4129574
    			c_4129579 = format[i_4129239]
    			_ = 0
    			gotoNext = 4129597
    			_ = gotoNext == 4129597
    			switch c_4129579 {
    			case 35:
    				gotoNext = 4129611
    				_ = gotoNext == 4129611
    				p.fmt.sharp = true
    				gotoNext = 4129570
    			case 48:
    				gotoNext = 4129647
    				_ = gotoNext == 4129647
    				p.fmt.zero = !p.fmt.minus
    				gotoNext = 4129570
    			case 43:
    				gotoNext = 4129730
    				_ = gotoNext == 4129730
    				p.fmt.plus = true
    				gotoNext = 4129570
    			case 45:
    				gotoNext = 4129765
    				_ = gotoNext == 4129765
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4129570
    			case 32:
    				gotoNext = 4129863
    				_ = gotoNext == 4129863
    				p.fmt.space = true
    				gotoNext = 4129570
    			default:
    				gotoNext = 4129899
    				_ = gotoNext == 4129899
    				if 97 <= c_4129579 && c_4129579 <= 122 && argNum_4129060 < len(a) {
    					gotoNext = 4130076
    					_ = gotoNext == 4130076
    					_ = 0
    					gotoNext = 4130083
    					_ = gotoNext == 4130083
    					switch c_4129579 {
    					case 119:
    						gotoNext = 4130099
    						_ = gotoNext == 4130099
    						p.wrappedErrs = append(p.wrappedErrs, argNum_4129060)
    						gotoNext = 4130184
    						gotoNext = 4130369
    					case 118:
    						gotoNext = 4130184
    						_ = gotoNext == 4130184
    						p.fmt.sharpV = p.fmt.sharp
    						p.fmt.sharp = false
    						p.fmt.plusV = p.fmt.plus
    						p.fmt.plus = false
    						gotoNext = 4130369
    					default:
    						gotoNext = 4130369
}
    					_ = gotoNext == 4130369
    					p.printArg(a[argNum_4129060], rune(c_4129579))
    					argNum_4129060++
    					i_4129239++
    					gotoNext = 4129235
    					gotoNext = 4130534
    				} else {
    					gotoNext = 4130534
}
    				_ = gotoNext == 4130534
    				simpleFormatBreak = true
    				gotoNext = 4129555
    				gotoNext = 4129570
}
    			_ = gotoNext == 4129570
    			i_4129239++
    			gotoNext = 4129555
    		} else {
    			gotoNext = 4130609
}
    		_ = gotoNext == 4130609
    		argNum_4129060, i_4129239, afterIndex_4129131 = p.argNumber(argNum_4129060, format, i_4129239, len(a))
    		if i_4129239 < end_4129040 && format[i_4129239] == 42 {
    			gotoNext = 4130729
    			_ = gotoNext == 4130729
    			i_4129239++
    			p.fmt.wid, p.fmt.widPresent, argNum_4129060 = intFromArg(a, argNum_4129060)
    			if !p.fmt.widPresent {
    				gotoNext = 4130826
    				_ = gotoNext == 4130826
    				p.buf.writeString("%!(BADWIDTH)")
    				gotoNext = 4130969
    			} else {
    				gotoNext = 4130969
}
    			_ = gotoNext == 4130969
    			if p.fmt.wid < 0 {
    				gotoNext = 4130986
    				_ = gotoNext == 4130986
    				p.fmt.wid = -p.fmt.wid
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4131108
    			} else {
    				gotoNext = 4131108
}
    			_ = gotoNext == 4131108
    			afterIndex_4129131 = false
    			gotoNext = 4131314
    		} else {
    			gotoNext = 4131136
    			_ = gotoNext == 4131136
    			p.fmt.wid, p.fmt.widPresent, i_4129239 = parsenum(format, i_4129239, end_4129040)
    			if afterIndex_4129131 && p.fmt.widPresent {
    				gotoNext = 4131236
    				_ = gotoNext == 4131236
    				p.goodArgNum = false
    				gotoNext = 4131314
    			} else {
    				gotoNext = 4131314
}
    			gotoNext = 4131314
}
    		_ = gotoNext == 4131314
    		if i_4129239+1 < end_4129040 && format[i_4129239] == 46 {
    			gotoNext = 4131347
    			_ = gotoNext == 4131347
    			i_4129239++
    			if afterIndex_4129131 {
    				gotoNext = 4131373
    				_ = gotoNext == 4131373
    				p.goodArgNum = false
    				gotoNext = 4131421
    			} else {
    				gotoNext = 4131421
}
    			_ = gotoNext == 4131421
    			argNum_4129060, i_4129239, afterIndex_4129131 = p.argNumber(argNum_4129060, format, i_4129239, len(a))
    			if i_4129239 < end_4129040 && format[i_4129239] == 42 {
    				gotoNext = 4131518
    				_ = gotoNext == 4131518
    				i_4129239++
    				p.fmt.prec, p.fmt.precPresent, argNum_4129060 = intFromArg(a, argNum_4129060)
    				if p.fmt.prec < 0 {
    					gotoNext = 4131669
    					_ = gotoNext == 4131669
    					p.fmt.prec = 0
    					p.fmt.precPresent = false
    					gotoNext = 4131732
    				} else {
    					gotoNext = 4131732
}
    				_ = gotoNext == 4131732
    				if !p.fmt.precPresent {
    					gotoNext = 4131754
    					_ = gotoNext == 4131754
    					p.buf.writeString("%!(BADPREC)")
    					gotoNext = 4131804
    				} else {
    					gotoNext = 4131804
}
    				_ = gotoNext == 4131804
    				afterIndex_4129131 = false
    				gotoNext = 4131995
    			} else {
    				gotoNext = 4131833
    				_ = gotoNext == 4131833
    				p.fmt.prec, p.fmt.precPresent, i_4129239 = parsenum(format, i_4129239, end_4129040)
    				if !p.fmt.precPresent {
    					gotoNext = 4131925
    					_ = gotoNext == 4131925
    					p.fmt.prec = 0
    					p.fmt.precPresent = true
    					gotoNext = 4131995
    				} else {
    					gotoNext = 4131995
}
    				gotoNext = 4131995
}
    			gotoNext = 4131995
    		} else {
    			gotoNext = 4131995
}
    		_ = gotoNext == 4131995
    		if !afterIndex_4129131 {
    			gotoNext = 4132010
    			_ = gotoNext == 4132010
    			argNum_4129060, i_4129239, afterIndex_4129131 = p.argNumber(argNum_4129060, format, i_4129239, len(a))
    			gotoNext = 4132085
    		} else {
    			gotoNext = 4132085
}
    		_ = gotoNext == 4132085
    		if i_4129239 >= end_4129040 {
    			gotoNext = 4132097
    			_ = gotoNext == 4132097
    			p.buf.writeString("%!(NOVERB)")
    			gotoNext = 4133066
    			gotoNext = 4132150
    		} else {
    			gotoNext = 4132150
}
    		_ = gotoNext == 4132150
    		verb_4132150, size_4132156 = rune(format[i_4129239]), 1
    		if verb_4132150 >= 128 {
    			gotoNext = 4132210
    			_ = gotoNext == 4132210
    			verb_4132150, size_4132156 = utf8.DecodeRuneInString(format[i_4129239:])
    			gotoNext = 4132270
    		} else {
    			gotoNext = 4132270
}
    		_ = gotoNext == 4132270
    		i_4129239 += size_4132156
    		_ = 0
    		gotoNext = 4132283
    		_ = gotoNext == 4132283
    		switch {
    		case verb_4132150 == 37:
    			gotoNext = 4132294
    			_ = gotoNext == 4132294
    			p.buf.writeByte(37)
    			gotoNext = 4133066
    		case !p.goodArgNum:
    			gotoNext = 4132404
    			_ = gotoNext == 4132404
    			p.badArgNum(verb_4132150)
    			gotoNext = 4133066
    		case argNum_4129060 >= len(a):
    			gotoNext = 4132447
    			_ = gotoNext == 4132447
    			p.missingArg(verb_4132150)
    			gotoNext = 4133066
    		case verb_4132150 == 119:
    			gotoNext = 4132550
    			_ = gotoNext == 4132550
    			p.wrappedErrs = append(p.wrappedErrs, argNum_4129060)
    			gotoNext = 4132634
    			gotoNext = 4133066
    		case verb_4132150 == 118:
    			gotoNext = 4132634
    			_ = gotoNext == 4132634
    			p.fmt.sharpV = p.fmt.sharp
    			p.fmt.sharp = false
    			p.fmt.plusV = p.fmt.plus
    			p.fmt.plus = false
    			gotoNext = 4132814
    			gotoNext = 4133066
    		default:
    			gotoNext = 4132814
    			_ = gotoNext == 4132814
    			p.printArg(a[argNum_4129060], verb_4132150)
    			argNum_4129060++
    			gotoNext = 4133066
}
    		gotoNext = 4129235
    	} else {
    		gotoNext = 4133066
}
    	_ = gotoNext == 4133066
    	if !p.reordered && argNum_4129060 < len(a) {
    		gotoNext = 4133101
    		_ = gotoNext == 4133101
    		p.fmt.clearflags()
    		p.buf.writeString("%!(EXTRA ")
    		if 0 < len(a[argNum_4129060:]) {
    			gotoNext = 4133428
    			_ = gotoNext == 4133428
    			i_4133163, arg_4133166 = 0, a[argNum_4129060:][0]
    			gotoNext = 4133429
    			_ = gotoNext == 4133429
    			if i_4133163 < len(a[argNum_4129060:]) {
    				gotoNext = 4133190
    				_ = gotoNext == 4133190
    				arg_4133166 = a[argNum_4129060:][i_4133163]
    				if i_4133163 > 0 {
    					gotoNext = 4133204
    					_ = gotoNext == 4133204
    					p.buf.writeString(", ")
    					gotoNext = 4133254
    				} else {
    					gotoNext = 4133254
}
    				_ = gotoNext == 4133254
    				if arg_4133166 == nil {
    					gotoNext = 4133268
    					_ = gotoNext == 4133268
    					p.buf.writeString("<nil>")
    					gotoNext = 4133163
    				} else {
    					gotoNext = 4133318
    					_ = gotoNext == 4133318
    					p.buf.writeString(reflect.TypeOf(arg_4133166).String())
    					p.buf.writeByte(61)
    					p.printArg(arg_4133166, 118)
    					gotoNext = 4133163
}
    				_ = gotoNext == 4133163
    				i_4133163++
    				gotoNext = 4133429
    			} else {
    				gotoNext = 4133433
}
    			gotoNext = 4133433
    		} else {
    			gotoNext = 4133433
}
    		_ = gotoNext == 4133433
    		p.buf.writeByte(41)
    		gotoNext = 4133457
    	} else {
    		gotoNext = 4133457
}
    	_ = gotoNext == 4133457
    	gotoNext = -1
    }
```
### Fmt function append


```haxe
function append(_b:Array<UInt>, _a:haxe.Rest<stdgo.AnyInterface>):Array<UInt>
```


```
Append formats using the default formats for its operands, appends the result to
        the byte slice, and returns the updated slice.
```
[\(view code\)](<./Fmt.hx#L1251>)


### Fmt function appendf


```haxe
function appendf(_b:Array<UInt>, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):Array<UInt>
```


```
Appendf formats according to a format specifier, appends the result to the byte
        slice, and returns the updated slice.
```
[\(view code\)](<./Fmt.hx#L1214>)


### Fmt function appendln


```haxe
function appendln(_b:Array<UInt>, _a:haxe.Rest<stdgo.AnyInterface>):Array<UInt>
```


```
Appendln formats using the default formats for its operands, appends the result
        to the byte slice, and returns the updated slice. Spaces are always added
        between operands and a newline is appended.
```
[\(view code\)](<./Fmt.hx#L1289>)


### Fmt function errorf


```haxe
function errorf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error
```


```
Errorf formats according to a format specifier and returns the string as a
        value that satisfies error.
```

If the format specifier includes a %w verb with an error operand,
the returned error will implement an Unwrap method returning the operand.
If there is more than one %w verb, the returned error will implement an
Unwrap method returning a \[\]error containing all the %w operands in the
order they appear in the arguments.
It is invalid to supply the %w verb with an operand that does not implement
the error interface. The %w verb is otherwise a synonym for %v.  

[\(view code\)](<./Fmt.hx#L1170>)


### Fmt function formatString


```haxe
function formatString(_state:stdgo.fmt.State, _verb:Int):String
```


```
FormatString returns a string representing the fully qualified formatting
        directive captured by the State, followed by the argument verb. (State does not
        itself contain the verb.) The result has a leading percent sign followed by any
        flags, the width, and the precision. Missing flags, width, and precision are
        omitted. This function allows a Formatter to reconstruct the original
        directive triggering the call to Format.
```
[\(view code\)](<./Fmt.hx#L1181>)


### Fmt function fprint


```haxe
function fprint(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Fprint formats using the default formats for its operands and writes to w.
        Spaces are added between operands when neither is a string.
        It returns the number of bytes written and any write error encountered.
```
[\(view code\)](<./Fmt.hx#L1223>)


### Fmt function fprintf


```haxe
function fprintf(_w:stdgo._internal.io.Writer, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Fprintf formats according to a format specifier and writes to w.
        It returns the number of bytes written and any write error encountered.
```
[\(view code\)](<./Fmt.hx#L1188>)


### Fmt function fprintln


```haxe
function fprintln(_w:stdgo._internal.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Fprintln formats using the default formats for its operands and writes to w.
        Spaces are always added between operands and a newline is appended.
        It returns the number of bytes written and any write error encountered.
```
[\(view code\)](<./Fmt.hx#L1260>)


### Fmt function fscan


```haxe
function fscan(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Fscan scans text read from r, storing successive space-separated
        values into successive arguments. Newlines count as space. It
        returns the number of items successfully scanned. If that is less
        than the number of arguments, err will report why.
```
[\(view code\)](<./Fmt.hx#L1370>)


### Fmt function fscanf


```haxe
function fscanf(_r:stdgo._internal.io.Reader, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Fscanf scans text read from r, storing successive space-separated
        values into successive arguments as determined by the format. It
        returns the number of items successfully parsed.
        Newlines in the input must match newlines in the format.
```
[\(view code\)](<./Fmt.hx#L1392>)


### Fmt function fscanln


```haxe
function fscanln(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Fscanln is similar to Fscan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
```
[\(view code\)](<./Fmt.hx#L1380>)


### Fmt function print


```haxe
function print(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Print formats using the default formats for its operands and writes to standard output.
        Spaces are added between operands when neither is a string.
        It returns the number of bytes written and any write error encountered.
```
[\(view code\)](<./Fmt.hx#L1234>)


### Fmt function printf


```haxe
function printf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Printf formats according to a format specifier and writes to standard output.
        It returns the number of bytes written and any write error encountered.
```
[\(view code\)](<./Fmt.hx#L1198>)


### Fmt function println


```haxe
function println(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Println formats using the default formats for its operands and writes to standard output.
        Spaces are always added between operands and a newline is appended.
        It returns the number of bytes written and any write error encountered.
```
[\(view code\)](<./Fmt.hx#L1271>)


### Fmt function scan


```haxe
function scan(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Scan scans text read from standard input, storing successive
        space-separated values into successive arguments. Newlines count
        as space. It returns the number of items successfully scanned.
        If that is less than the number of arguments, err will report why.
```
[\(view code\)](<./Fmt.hx#L1299>)


### Fmt function scanf


```haxe
function scanf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Scanf scans text read from standard input, storing successive
        space-separated values into successive arguments as determined by
        the format. It returns the number of items successfully scanned.
        If that is less than the number of arguments, err will report why.
        Newlines in the input must match newlines in the format.
        The one exception: the verb %c always scans the next rune in the
        input, even if it is a space (or tab etc.) or newline.
```
[\(view code\)](<./Fmt.hx#L1324>)


### Fmt function scanln


```haxe
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Scanln is similar to Scan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
```
[\(view code\)](<./Fmt.hx#L1309>)


### Fmt function sprint


```haxe
function sprint(_a:haxe.Rest<stdgo.AnyInterface>):String
```


```
Sprint formats using the default formats for its operands and returns the resulting string.
        Spaces are added between operands when neither is a string.
```
[\(view code\)](<./Fmt.hx#L1244>)


### Fmt function sprintf


```haxe
function sprintf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):String
```



Sprintf formats according to a format specifier and returns the resulting string.  

[\(view code\)](<./Fmt.hx#L1207>)


### Fmt function sprintln


```haxe
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):String
```


```
Sprintln formats using the default formats for its operands and returns the resulting string.
        Spaces are always added between operands and a newline is appended.
```
[\(view code\)](<./Fmt.hx#L1281>)


### Fmt function sscan


```haxe
function sscan(_str:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Sscan scans the argument string, storing successive space-separated
        values into successive arguments. Newlines count as space. It
        returns the number of items successfully scanned. If that is less
        than the number of arguments, err will report why.
```
[\(view code\)](<./Fmt.hx#L1336>)


### Fmt function sscanf


```haxe
function sscanf(_str:String, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Sscanf scans the argument string, storing successive space-separated
        values into successive arguments as determined by the format. It
        returns the number of items successfully parsed.
        Newlines in the input must match newlines in the format.
```
[\(view code\)](<./Fmt.hx#L1358>)


### Fmt function sscanln


```haxe
function sscanln(_str:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Int, stdgo.Error>
```


```
Sscanln is similar to Sscan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
```
[\(view code\)](<./Fmt.hx#L1346>)


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


## typedef T\_stringReader


```haxe
typedef T_stringReader = stdgo._internal.fmt.T_stringReader;
```


# Abstracts


## abstract T\_wrapError


[\(view file containing code\)](<./Fmt.hx>)


## abstract T\_wrapErrors


[\(view file containing code\)](<./Fmt.hx>)


## abstract T\_fmtFlags


[\(view file containing code\)](<./Fmt.hx>)


## abstract T\_fmt


[\(view file containing code\)](<./Fmt.hx>)


## abstract T\_pp


[\(view file containing code\)](<./Fmt.hx>)


## abstract T\_scanError


[\(view file containing code\)](<./Fmt.hx>)


## abstract T\_ss


[\(view file containing code\)](<./Fmt.hx>)


## abstract T\_ssave


[\(view file containing code\)](<./Fmt.hx>)


## abstract T\_readRune


[\(view file containing code\)](<./Fmt.hx>)


