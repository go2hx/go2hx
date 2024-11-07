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
    	end_4064740 = len(format)
    	argNum_4064760 = 0
    	afterIndex_4064831 = false
    	p.reordered = false
    	gotoNext = 4064922
    	_ = gotoNext == 4064922
    	i_4064939 = 0
    	formatLoopBreak = false
    	gotoNext = 4064935
    	_ = gotoNext == 4064935
    	if !formatLoopBreak && (i_4064939 < end_4064740) {
    		gotoNext = 4064956
    		_ = gotoNext == 4064956
    		p.goodArgNum = true
    		lasti_4064982 = i_4064939
    		_ = 0
    		gotoNext = 4064995
    		_ = gotoNext == 4064995
    		if i_4064939 < end_4064740 && format[i_4064939] != 37 {
    			gotoNext = 4065027
    			_ = gotoNext == 4065027
    			i_4064939++
    			gotoNext = 4064995
    		} else {
    			gotoNext = 4065042
}
    		_ = gotoNext == 4065042
    		if i_4064939 > lasti_4064982 {
    			gotoNext = 4065055
    			_ = gotoNext == 4065055
    			p.buf.writeString(format[lasti_4064982:i_4064939])
    			gotoNext = 4065101
    		} else {
    			gotoNext = 4065101
}
    		_ = gotoNext == 4065101
    		if i_4064939 >= end_4064740 {
    			gotoNext = 4065113
    			_ = gotoNext == 4065113
    			gotoNext = 4068766
    			gotoNext = 4065189
    		} else {
    			gotoNext = 4065189
}
    		_ = gotoNext == 4065189
    		i_4064939++
    		p.fmt.clearflags()
    		gotoNext = 4065239
    		_ = gotoNext == 4065239
    		_ = 0
    		simpleFormatBreak = false
    		gotoNext = 4065255
    		_ = gotoNext == 4065255
    		if !simpleFormatBreak && (i_4064939 < end_4064740) {
    			gotoNext = 4065274
    			_ = gotoNext == 4065274
    			c_4065279 = format[i_4064939]
    			_ = 0
    			gotoNext = 4065297
    			_ = gotoNext == 4065297
    			switch c_4065279 {
    			case 35:
    				gotoNext = 4065311
    				_ = gotoNext == 4065311
    				p.fmt.sharp = true
    				gotoNext = 4065270
    			case 48:
    				gotoNext = 4065347
    				_ = gotoNext == 4065347
    				p.fmt.zero = !p.fmt.minus
    				gotoNext = 4065270
    			case 43:
    				gotoNext = 4065430
    				_ = gotoNext == 4065430
    				p.fmt.plus = true
    				gotoNext = 4065270
    			case 45:
    				gotoNext = 4065465
    				_ = gotoNext == 4065465
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4065270
    			case 32:
    				gotoNext = 4065563
    				_ = gotoNext == 4065563
    				p.fmt.space = true
    				gotoNext = 4065270
    			default:
    				gotoNext = 4065599
    				_ = gotoNext == 4065599
    				if 97 <= c_4065279 && c_4065279 <= 122 && argNum_4064760 < len(a) {
    					gotoNext = 4065776
    					_ = gotoNext == 4065776
    					_ = 0
    					gotoNext = 4065783
    					_ = gotoNext == 4065783
    					switch c_4065279 {
    					case 119:
    						gotoNext = 4065799
    						_ = gotoNext == 4065799
    						p.wrappedErrs = append(p.wrappedErrs, argNum_4064760)
    						gotoNext = 4065884
    						gotoNext = 4066069
    					case 118:
    						gotoNext = 4065884
    						_ = gotoNext == 4065884
    						p.fmt.sharpV = p.fmt.sharp
    						p.fmt.sharp = false
    						p.fmt.plusV = p.fmt.plus
    						p.fmt.plus = false
    						gotoNext = 4066069
    					default:
    						gotoNext = 4066069
}
    					_ = gotoNext == 4066069
    					p.printArg(a[argNum_4064760], rune(c_4065279))
    					argNum_4064760++
    					i_4064939++
    					gotoNext = 4064935
    					gotoNext = 4066234
    				} else {
    					gotoNext = 4066234
}
    				_ = gotoNext == 4066234
    				simpleFormatBreak = true
    				gotoNext = 4065255
    				gotoNext = 4065270
}
    			_ = gotoNext == 4065270
    			i_4064939++
    			gotoNext = 4065255
    		} else {
    			gotoNext = 4066309
}
    		_ = gotoNext == 4066309
    		argNum_4064760, i_4064939, afterIndex_4064831 = p.argNumber(argNum_4064760, format, i_4064939, len(a))
    		if i_4064939 < end_4064740 && format[i_4064939] == 42 {
    			gotoNext = 4066429
    			_ = gotoNext == 4066429
    			i_4064939++
    			p.fmt.wid, p.fmt.widPresent, argNum_4064760 = intFromArg(a, argNum_4064760)
    			if !p.fmt.widPresent {
    				gotoNext = 4066526
    				_ = gotoNext == 4066526
    				p.buf.writeString("%!(BADWIDTH)")
    				gotoNext = 4066669
    			} else {
    				gotoNext = 4066669
}
    			_ = gotoNext == 4066669
    			if p.fmt.wid < 0 {
    				gotoNext = 4066686
    				_ = gotoNext == 4066686
    				p.fmt.wid = -p.fmt.wid
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4066808
    			} else {
    				gotoNext = 4066808
}
    			_ = gotoNext == 4066808
    			afterIndex_4064831 = false
    			gotoNext = 4067014
    		} else {
    			gotoNext = 4066836
    			_ = gotoNext == 4066836
    			p.fmt.wid, p.fmt.widPresent, i_4064939 = parsenum(format, i_4064939, end_4064740)
    			if afterIndex_4064831 && p.fmt.widPresent {
    				gotoNext = 4066936
    				_ = gotoNext == 4066936
    				p.goodArgNum = false
    				gotoNext = 4067014
    			} else {
    				gotoNext = 4067014
}
    			gotoNext = 4067014
}
    		_ = gotoNext == 4067014
    		if i_4064939+1 < end_4064740 && format[i_4064939] == 46 {
    			gotoNext = 4067047
    			_ = gotoNext == 4067047
    			i_4064939++
    			if afterIndex_4064831 {
    				gotoNext = 4067073
    				_ = gotoNext == 4067073
    				p.goodArgNum = false
    				gotoNext = 4067121
    			} else {
    				gotoNext = 4067121
}
    			_ = gotoNext == 4067121
    			argNum_4064760, i_4064939, afterIndex_4064831 = p.argNumber(argNum_4064760, format, i_4064939, len(a))
    			if i_4064939 < end_4064740 && format[i_4064939] == 42 {
    				gotoNext = 4067218
    				_ = gotoNext == 4067218
    				i_4064939++
    				p.fmt.prec, p.fmt.precPresent, argNum_4064760 = intFromArg(a, argNum_4064760)
    				if p.fmt.prec < 0 {
    					gotoNext = 4067369
    					_ = gotoNext == 4067369
    					p.fmt.prec = 0
    					p.fmt.precPresent = false
    					gotoNext = 4067432
    				} else {
    					gotoNext = 4067432
}
    				_ = gotoNext == 4067432
    				if !p.fmt.precPresent {
    					gotoNext = 4067454
    					_ = gotoNext == 4067454
    					p.buf.writeString("%!(BADPREC)")
    					gotoNext = 4067504
    				} else {
    					gotoNext = 4067504
}
    				_ = gotoNext == 4067504
    				afterIndex_4064831 = false
    				gotoNext = 4067695
    			} else {
    				gotoNext = 4067533
    				_ = gotoNext == 4067533
    				p.fmt.prec, p.fmt.precPresent, i_4064939 = parsenum(format, i_4064939, end_4064740)
    				if !p.fmt.precPresent {
    					gotoNext = 4067625
    					_ = gotoNext == 4067625
    					p.fmt.prec = 0
    					p.fmt.precPresent = true
    					gotoNext = 4067695
    				} else {
    					gotoNext = 4067695
}
    				gotoNext = 4067695
}
    			gotoNext = 4067695
    		} else {
    			gotoNext = 4067695
}
    		_ = gotoNext == 4067695
    		if !afterIndex_4064831 {
    			gotoNext = 4067710
    			_ = gotoNext == 4067710
    			argNum_4064760, i_4064939, afterIndex_4064831 = p.argNumber(argNum_4064760, format, i_4064939, len(a))
    			gotoNext = 4067785
    		} else {
    			gotoNext = 4067785
}
    		_ = gotoNext == 4067785
    		if i_4064939 >= end_4064740 {
    			gotoNext = 4067797
    			_ = gotoNext == 4067797
    			p.buf.writeString("%!(NOVERB)")
    			gotoNext = 4068766
    			gotoNext = 4067850
    		} else {
    			gotoNext = 4067850
}
    		_ = gotoNext == 4067850
    		verb_4067850, size_4067856 = rune(format[i_4064939]), 1
    		if verb_4067850 >= 128 {
    			gotoNext = 4067910
    			_ = gotoNext == 4067910
    			verb_4067850, size_4067856 = utf8.DecodeRuneInString(format[i_4064939:])
    			gotoNext = 4067970
    		} else {
    			gotoNext = 4067970
}
    		_ = gotoNext == 4067970
    		i_4064939 += size_4067856
    		_ = 0
    		gotoNext = 4067983
    		_ = gotoNext == 4067983
    		switch {
    		case verb_4067850 == 37:
    			gotoNext = 4067994
    			_ = gotoNext == 4067994
    			p.buf.writeByte(37)
    			gotoNext = 4068766
    		case !p.goodArgNum:
    			gotoNext = 4068104
    			_ = gotoNext == 4068104
    			p.badArgNum(verb_4067850)
    			gotoNext = 4068766
    		case argNum_4064760 >= len(a):
    			gotoNext = 4068147
    			_ = gotoNext == 4068147
    			p.missingArg(verb_4067850)
    			gotoNext = 4068766
    		case verb_4067850 == 119:
    			gotoNext = 4068250
    			_ = gotoNext == 4068250
    			p.wrappedErrs = append(p.wrappedErrs, argNum_4064760)
    			gotoNext = 4068334
    			gotoNext = 4068766
    		case verb_4067850 == 118:
    			gotoNext = 4068334
    			_ = gotoNext == 4068334
    			p.fmt.sharpV = p.fmt.sharp
    			p.fmt.sharp = false
    			p.fmt.plusV = p.fmt.plus
    			p.fmt.plus = false
    			gotoNext = 4068514
    			gotoNext = 4068766
    		default:
    			gotoNext = 4068514
    			_ = gotoNext == 4068514
    			p.printArg(a[argNum_4064760], verb_4067850)
    			argNum_4064760++
    			gotoNext = 4068766
}
    		gotoNext = 4064935
    	} else {
    		gotoNext = 4068766
}
    	_ = gotoNext == 4068766
    	if !p.reordered && argNum_4064760 < len(a) {
    		gotoNext = 4068801
    		_ = gotoNext == 4068801
    		p.fmt.clearflags()
    		p.buf.writeString("%!(EXTRA ")
    		if 0 < len(a[argNum_4064760:]) {
    			gotoNext = 4069128
    			_ = gotoNext == 4069128
    			i_4068863, arg_4068866 = 0, a[argNum_4064760:][0]
    			gotoNext = 4069129
    			_ = gotoNext == 4069129
    			if i_4068863 < len(a[argNum_4064760:]) {
    				gotoNext = 4068890
    				_ = gotoNext == 4068890
    				arg_4068866 = a[argNum_4064760:][i_4068863]
    				if i_4068863 > 0 {
    					gotoNext = 4068904
    					_ = gotoNext == 4068904
    					p.buf.writeString(", ")
    					gotoNext = 4068954
    				} else {
    					gotoNext = 4068954
}
    				_ = gotoNext == 4068954
    				if arg_4068866 == nil {
    					gotoNext = 4068968
    					_ = gotoNext == 4068968
    					p.buf.writeString("<nil>")
    					gotoNext = 4068863
    				} else {
    					gotoNext = 4069018
    					_ = gotoNext == 4069018
    					p.buf.writeString(reflect.TypeOf(arg_4068866).String())
    					p.buf.writeByte(61)
    					p.printArg(arg_4068866, 118)
    					gotoNext = 4068863
}
    				_ = gotoNext == 4068863
    				i_4068863++
    				gotoNext = 4069129
    			} else {
    				gotoNext = 4069133
}
    			gotoNext = 4069133
    		} else {
    			gotoNext = 4069133
}
    		_ = gotoNext == 4069133
    		p.buf.writeByte(41)
    		gotoNext = 4069157
    	} else {
    		gotoNext = 4069157
}
    	_ = gotoNext == 4069157
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


