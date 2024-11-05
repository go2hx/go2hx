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
    	end_4022413 = len(format)
    	argNum_4022433 = 0
    	afterIndex_4022504 = false
    	p.reordered = false
    	gotoNext = 4022595
    	_ = gotoNext == 4022595
    	i_4022612 = 0
    	formatLoopBreak = false
    	gotoNext = 4022608
    	_ = gotoNext == 4022608
    	if !formatLoopBreak && (i_4022612 < end_4022413) {
    		gotoNext = 4022629
    		_ = gotoNext == 4022629
    		p.goodArgNum = true
    		lasti_4022655 = i_4022612
    		_ = 0
    		gotoNext = 4022668
    		_ = gotoNext == 4022668
    		if i_4022612 < end_4022413 && format[i_4022612] != 37 {
    			gotoNext = 4022700
    			_ = gotoNext == 4022700
    			i_4022612++
    			gotoNext = 4022668
    		} else {
    			gotoNext = 4022715
}
    		_ = gotoNext == 4022715
    		if i_4022612 > lasti_4022655 {
    			gotoNext = 4022728
    			_ = gotoNext == 4022728
    			p.buf.writeString(format[lasti_4022655:i_4022612])
    			gotoNext = 4022774
    		} else {
    			gotoNext = 4022774
}
    		_ = gotoNext == 4022774
    		if i_4022612 >= end_4022413 {
    			gotoNext = 4022786
    			_ = gotoNext == 4022786
    			gotoNext = 4026439
    			gotoNext = 4022862
    		} else {
    			gotoNext = 4022862
}
    		_ = gotoNext == 4022862
    		i_4022612++
    		p.fmt.clearflags()
    		gotoNext = 4022912
    		_ = gotoNext == 4022912
    		_ = 0
    		simpleFormatBreak = false
    		gotoNext = 4022928
    		_ = gotoNext == 4022928
    		if !simpleFormatBreak && (i_4022612 < end_4022413) {
    			gotoNext = 4022947
    			_ = gotoNext == 4022947
    			c_4022952 = format[i_4022612]
    			_ = 0
    			gotoNext = 4022970
    			_ = gotoNext == 4022970
    			switch c_4022952 {
    			case 35:
    				gotoNext = 4022984
    				_ = gotoNext == 4022984
    				p.fmt.sharp = true
    				gotoNext = 4022943
    			case 48:
    				gotoNext = 4023020
    				_ = gotoNext == 4023020
    				p.fmt.zero = !p.fmt.minus
    				gotoNext = 4022943
    			case 43:
    				gotoNext = 4023103
    				_ = gotoNext == 4023103
    				p.fmt.plus = true
    				gotoNext = 4022943
    			case 45:
    				gotoNext = 4023138
    				_ = gotoNext == 4023138
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4022943
    			case 32:
    				gotoNext = 4023236
    				_ = gotoNext == 4023236
    				p.fmt.space = true
    				gotoNext = 4022943
    			default:
    				gotoNext = 4023272
    				_ = gotoNext == 4023272
    				if 97 <= c_4022952 && c_4022952 <= 122 && argNum_4022433 < len(a) {
    					gotoNext = 4023449
    					_ = gotoNext == 4023449
    					_ = 0
    					gotoNext = 4023456
    					_ = gotoNext == 4023456
    					switch c_4022952 {
    					case 119:
    						gotoNext = 4023472
    						_ = gotoNext == 4023472
    						p.wrappedErrs = append(p.wrappedErrs, argNum_4022433)
    						gotoNext = 4023557
    						gotoNext = 4023742
    					case 118:
    						gotoNext = 4023557
    						_ = gotoNext == 4023557
    						p.fmt.sharpV = p.fmt.sharp
    						p.fmt.sharp = false
    						p.fmt.plusV = p.fmt.plus
    						p.fmt.plus = false
    						gotoNext = 4023742
    					default:
    						gotoNext = 4023742
}
    					_ = gotoNext == 4023742
    					p.printArg(a[argNum_4022433], rune(c_4022952))
    					argNum_4022433++
    					i_4022612++
    					gotoNext = 4022608
    					gotoNext = 4023907
    				} else {
    					gotoNext = 4023907
}
    				_ = gotoNext == 4023907
    				simpleFormatBreak = true
    				gotoNext = 4022928
    				gotoNext = 4022943
}
    			_ = gotoNext == 4022943
    			i_4022612++
    			gotoNext = 4022928
    		} else {
    			gotoNext = 4023982
}
    		_ = gotoNext == 4023982
    		argNum_4022433, i_4022612, afterIndex_4022504 = p.argNumber(argNum_4022433, format, i_4022612, len(a))
    		if i_4022612 < end_4022413 && format[i_4022612] == 42 {
    			gotoNext = 4024102
    			_ = gotoNext == 4024102
    			i_4022612++
    			p.fmt.wid, p.fmt.widPresent, argNum_4022433 = intFromArg(a, argNum_4022433)
    			if !p.fmt.widPresent {
    				gotoNext = 4024199
    				_ = gotoNext == 4024199
    				p.buf.writeString("%!(BADWIDTH)")
    				gotoNext = 4024342
    			} else {
    				gotoNext = 4024342
}
    			_ = gotoNext == 4024342
    			if p.fmt.wid < 0 {
    				gotoNext = 4024359
    				_ = gotoNext == 4024359
    				p.fmt.wid = -p.fmt.wid
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4024481
    			} else {
    				gotoNext = 4024481
}
    			_ = gotoNext == 4024481
    			afterIndex_4022504 = false
    			gotoNext = 4024687
    		} else {
    			gotoNext = 4024509
    			_ = gotoNext == 4024509
    			p.fmt.wid, p.fmt.widPresent, i_4022612 = parsenum(format, i_4022612, end_4022413)
    			if afterIndex_4022504 && p.fmt.widPresent {
    				gotoNext = 4024609
    				_ = gotoNext == 4024609
    				p.goodArgNum = false
    				gotoNext = 4024687
    			} else {
    				gotoNext = 4024687
}
    			gotoNext = 4024687
}
    		_ = gotoNext == 4024687
    		if i_4022612+1 < end_4022413 && format[i_4022612] == 46 {
    			gotoNext = 4024720
    			_ = gotoNext == 4024720
    			i_4022612++
    			if afterIndex_4022504 {
    				gotoNext = 4024746
    				_ = gotoNext == 4024746
    				p.goodArgNum = false
    				gotoNext = 4024794
    			} else {
    				gotoNext = 4024794
}
    			_ = gotoNext == 4024794
    			argNum_4022433, i_4022612, afterIndex_4022504 = p.argNumber(argNum_4022433, format, i_4022612, len(a))
    			if i_4022612 < end_4022413 && format[i_4022612] == 42 {
    				gotoNext = 4024891
    				_ = gotoNext == 4024891
    				i_4022612++
    				p.fmt.prec, p.fmt.precPresent, argNum_4022433 = intFromArg(a, argNum_4022433)
    				if p.fmt.prec < 0 {
    					gotoNext = 4025042
    					_ = gotoNext == 4025042
    					p.fmt.prec = 0
    					p.fmt.precPresent = false
    					gotoNext = 4025105
    				} else {
    					gotoNext = 4025105
}
    				_ = gotoNext == 4025105
    				if !p.fmt.precPresent {
    					gotoNext = 4025127
    					_ = gotoNext == 4025127
    					p.buf.writeString("%!(BADPREC)")
    					gotoNext = 4025177
    				} else {
    					gotoNext = 4025177
}
    				_ = gotoNext == 4025177
    				afterIndex_4022504 = false
    				gotoNext = 4025368
    			} else {
    				gotoNext = 4025206
    				_ = gotoNext == 4025206
    				p.fmt.prec, p.fmt.precPresent, i_4022612 = parsenum(format, i_4022612, end_4022413)
    				if !p.fmt.precPresent {
    					gotoNext = 4025298
    					_ = gotoNext == 4025298
    					p.fmt.prec = 0
    					p.fmt.precPresent = true
    					gotoNext = 4025368
    				} else {
    					gotoNext = 4025368
}
    				gotoNext = 4025368
}
    			gotoNext = 4025368
    		} else {
    			gotoNext = 4025368
}
    		_ = gotoNext == 4025368
    		if !afterIndex_4022504 {
    			gotoNext = 4025383
    			_ = gotoNext == 4025383
    			argNum_4022433, i_4022612, afterIndex_4022504 = p.argNumber(argNum_4022433, format, i_4022612, len(a))
    			gotoNext = 4025458
    		} else {
    			gotoNext = 4025458
}
    		_ = gotoNext == 4025458
    		if i_4022612 >= end_4022413 {
    			gotoNext = 4025470
    			_ = gotoNext == 4025470
    			p.buf.writeString("%!(NOVERB)")
    			gotoNext = 4026439
    			gotoNext = 4025523
    		} else {
    			gotoNext = 4025523
}
    		_ = gotoNext == 4025523
    		verb_4025523, size_4025529 = rune(format[i_4022612]), 1
    		if verb_4025523 >= 128 {
    			gotoNext = 4025583
    			_ = gotoNext == 4025583
    			verb_4025523, size_4025529 = utf8.DecodeRuneInString(format[i_4022612:])
    			gotoNext = 4025643
    		} else {
    			gotoNext = 4025643
}
    		_ = gotoNext == 4025643
    		i_4022612 += size_4025529
    		_ = 0
    		gotoNext = 4025656
    		_ = gotoNext == 4025656
    		switch {
    		case verb_4025523 == 37:
    			gotoNext = 4025667
    			_ = gotoNext == 4025667
    			p.buf.writeByte(37)
    			gotoNext = 4026439
    		case !p.goodArgNum:
    			gotoNext = 4025777
    			_ = gotoNext == 4025777
    			p.badArgNum(verb_4025523)
    			gotoNext = 4026439
    		case argNum_4022433 >= len(a):
    			gotoNext = 4025820
    			_ = gotoNext == 4025820
    			p.missingArg(verb_4025523)
    			gotoNext = 4026439
    		case verb_4025523 == 119:
    			gotoNext = 4025923
    			_ = gotoNext == 4025923
    			p.wrappedErrs = append(p.wrappedErrs, argNum_4022433)
    			gotoNext = 4026007
    			gotoNext = 4026439
    		case verb_4025523 == 118:
    			gotoNext = 4026007
    			_ = gotoNext == 4026007
    			p.fmt.sharpV = p.fmt.sharp
    			p.fmt.sharp = false
    			p.fmt.plusV = p.fmt.plus
    			p.fmt.plus = false
    			gotoNext = 4026187
    			gotoNext = 4026439
    		default:
    			gotoNext = 4026187
    			_ = gotoNext == 4026187
    			p.printArg(a[argNum_4022433], verb_4025523)
    			argNum_4022433++
    			gotoNext = 4026439
}
    		gotoNext = 4022608
    	} else {
    		gotoNext = 4026439
}
    	_ = gotoNext == 4026439
    	if !p.reordered && argNum_4022433 < len(a) {
    		gotoNext = 4026474
    		_ = gotoNext == 4026474
    		p.fmt.clearflags()
    		p.buf.writeString("%!(EXTRA ")
    		if 0 < len(a[argNum_4022433:]) {
    			gotoNext = 4026801
    			_ = gotoNext == 4026801
    			i_4026536, arg_4026539 = 0, a[argNum_4022433:][0]
    			gotoNext = 4026802
    			_ = gotoNext == 4026802
    			if i_4026536 < len(a[argNum_4022433:]) {
    				gotoNext = 4026563
    				_ = gotoNext == 4026563
    				arg_4026539 = a[argNum_4022433:][i_4026536]
    				if i_4026536 > 0 {
    					gotoNext = 4026577
    					_ = gotoNext == 4026577
    					p.buf.writeString(", ")
    					gotoNext = 4026627
    				} else {
    					gotoNext = 4026627
}
    				_ = gotoNext == 4026627
    				if arg_4026539 == nil {
    					gotoNext = 4026641
    					_ = gotoNext == 4026641
    					p.buf.writeString("<nil>")
    					gotoNext = 4026536
    				} else {
    					gotoNext = 4026691
    					_ = gotoNext == 4026691
    					p.buf.writeString(reflect.TypeOf(arg_4026539).String())
    					p.buf.writeByte(61)
    					p.printArg(arg_4026539, 118)
    					gotoNext = 4026536
}
    				_ = gotoNext == 4026536
    				i_4026536++
    				gotoNext = 4026802
    			} else {
    				gotoNext = 4026806
}
    			gotoNext = 4026806
    		} else {
    			gotoNext = 4026806
}
    		_ = gotoNext == 4026806
    		p.buf.writeByte(41)
    		gotoNext = 4026830
    	} else {
    		gotoNext = 4026830
}
    	_ = gotoNext == 4026830
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


