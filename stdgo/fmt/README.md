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
    	end_4101340 = len(format)
    	argNum_4101360 = 0
    	afterIndex_4101431 = false
    	p.reordered = false
    	gotoNext = 4101522
    	_ = gotoNext == 4101522
    	i_4101539 = 0
    	formatLoopBreak = false
    	gotoNext = 4101535
    	_ = gotoNext == 4101535
    	if !formatLoopBreak && (i_4101539 < end_4101340) {
    		gotoNext = 4101556
    		_ = gotoNext == 4101556
    		p.goodArgNum = true
    		lasti_4101582 = i_4101539
    		_ = 0
    		gotoNext = 4101595
    		_ = gotoNext == 4101595
    		if i_4101539 < end_4101340 && format[i_4101539] != 37 {
    			gotoNext = 4101627
    			_ = gotoNext == 4101627
    			i_4101539++
    			gotoNext = 4101595
    		} else {
    			gotoNext = 4101642
}
    		_ = gotoNext == 4101642
    		if i_4101539 > lasti_4101582 {
    			gotoNext = 4101655
    			_ = gotoNext == 4101655
    			p.buf.writeString(format[lasti_4101582:i_4101539])
    			gotoNext = 4101701
    		} else {
    			gotoNext = 4101701
}
    		_ = gotoNext == 4101701
    		if i_4101539 >= end_4101340 {
    			gotoNext = 4101713
    			_ = gotoNext == 4101713
    			gotoNext = 4105366
    			gotoNext = 4101789
    		} else {
    			gotoNext = 4101789
}
    		_ = gotoNext == 4101789
    		i_4101539++
    		p.fmt.clearflags()
    		gotoNext = 4101839
    		_ = gotoNext == 4101839
    		_ = 0
    		simpleFormatBreak = false
    		gotoNext = 4101855
    		_ = gotoNext == 4101855
    		if !simpleFormatBreak && (i_4101539 < end_4101340) {
    			gotoNext = 4101874
    			_ = gotoNext == 4101874
    			c_4101879 = format[i_4101539]
    			_ = 0
    			gotoNext = 4101897
    			_ = gotoNext == 4101897
    			switch c_4101879 {
    			case 35:
    				gotoNext = 4101911
    				_ = gotoNext == 4101911
    				p.fmt.sharp = true
    				gotoNext = 4101870
    			case 48:
    				gotoNext = 4101947
    				_ = gotoNext == 4101947
    				p.fmt.zero = !p.fmt.minus
    				gotoNext = 4101870
    			case 43:
    				gotoNext = 4102030
    				_ = gotoNext == 4102030
    				p.fmt.plus = true
    				gotoNext = 4101870
    			case 45:
    				gotoNext = 4102065
    				_ = gotoNext == 4102065
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4101870
    			case 32:
    				gotoNext = 4102163
    				_ = gotoNext == 4102163
    				p.fmt.space = true
    				gotoNext = 4101870
    			default:
    				gotoNext = 4102199
    				_ = gotoNext == 4102199
    				if 97 <= c_4101879 && c_4101879 <= 122 && argNum_4101360 < len(a) {
    					gotoNext = 4102376
    					_ = gotoNext == 4102376
    					_ = 0
    					gotoNext = 4102383
    					_ = gotoNext == 4102383
    					switch c_4101879 {
    					case 119:
    						gotoNext = 4102399
    						_ = gotoNext == 4102399
    						p.wrappedErrs = append(p.wrappedErrs, argNum_4101360)
    						gotoNext = 4102484
    						gotoNext = 4102669
    					case 118:
    						gotoNext = 4102484
    						_ = gotoNext == 4102484
    						p.fmt.sharpV = p.fmt.sharp
    						p.fmt.sharp = false
    						p.fmt.plusV = p.fmt.plus
    						p.fmt.plus = false
    						gotoNext = 4102669
    					default:
    						gotoNext = 4102669
}
    					_ = gotoNext == 4102669
    					p.printArg(a[argNum_4101360], rune(c_4101879))
    					argNum_4101360++
    					i_4101539++
    					gotoNext = 4101535
    					gotoNext = 4102834
    				} else {
    					gotoNext = 4102834
}
    				_ = gotoNext == 4102834
    				simpleFormatBreak = true
    				gotoNext = 4101855
    				gotoNext = 4101870
}
    			_ = gotoNext == 4101870
    			i_4101539++
    			gotoNext = 4101855
    		} else {
    			gotoNext = 4102909
}
    		_ = gotoNext == 4102909
    		argNum_4101360, i_4101539, afterIndex_4101431 = p.argNumber(argNum_4101360, format, i_4101539, len(a))
    		if i_4101539 < end_4101340 && format[i_4101539] == 42 {
    			gotoNext = 4103029
    			_ = gotoNext == 4103029
    			i_4101539++
    			p.fmt.wid, p.fmt.widPresent, argNum_4101360 = intFromArg(a, argNum_4101360)
    			if !p.fmt.widPresent {
    				gotoNext = 4103126
    				_ = gotoNext == 4103126
    				p.buf.writeString("%!(BADWIDTH)")
    				gotoNext = 4103269
    			} else {
    				gotoNext = 4103269
}
    			_ = gotoNext == 4103269
    			if p.fmt.wid < 0 {
    				gotoNext = 4103286
    				_ = gotoNext == 4103286
    				p.fmt.wid = -p.fmt.wid
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4103408
    			} else {
    				gotoNext = 4103408
}
    			_ = gotoNext == 4103408
    			afterIndex_4101431 = false
    			gotoNext = 4103614
    		} else {
    			gotoNext = 4103436
    			_ = gotoNext == 4103436
    			p.fmt.wid, p.fmt.widPresent, i_4101539 = parsenum(format, i_4101539, end_4101340)
    			if afterIndex_4101431 && p.fmt.widPresent {
    				gotoNext = 4103536
    				_ = gotoNext == 4103536
    				p.goodArgNum = false
    				gotoNext = 4103614
    			} else {
    				gotoNext = 4103614
}
    			gotoNext = 4103614
}
    		_ = gotoNext == 4103614
    		if i_4101539+1 < end_4101340 && format[i_4101539] == 46 {
    			gotoNext = 4103647
    			_ = gotoNext == 4103647
    			i_4101539++
    			if afterIndex_4101431 {
    				gotoNext = 4103673
    				_ = gotoNext == 4103673
    				p.goodArgNum = false
    				gotoNext = 4103721
    			} else {
    				gotoNext = 4103721
}
    			_ = gotoNext == 4103721
    			argNum_4101360, i_4101539, afterIndex_4101431 = p.argNumber(argNum_4101360, format, i_4101539, len(a))
    			if i_4101539 < end_4101340 && format[i_4101539] == 42 {
    				gotoNext = 4103818
    				_ = gotoNext == 4103818
    				i_4101539++
    				p.fmt.prec, p.fmt.precPresent, argNum_4101360 = intFromArg(a, argNum_4101360)
    				if p.fmt.prec < 0 {
    					gotoNext = 4103969
    					_ = gotoNext == 4103969
    					p.fmt.prec = 0
    					p.fmt.precPresent = false
    					gotoNext = 4104032
    				} else {
    					gotoNext = 4104032
}
    				_ = gotoNext == 4104032
    				if !p.fmt.precPresent {
    					gotoNext = 4104054
    					_ = gotoNext == 4104054
    					p.buf.writeString("%!(BADPREC)")
    					gotoNext = 4104104
    				} else {
    					gotoNext = 4104104
}
    				_ = gotoNext == 4104104
    				afterIndex_4101431 = false
    				gotoNext = 4104295
    			} else {
    				gotoNext = 4104133
    				_ = gotoNext == 4104133
    				p.fmt.prec, p.fmt.precPresent, i_4101539 = parsenum(format, i_4101539, end_4101340)
    				if !p.fmt.precPresent {
    					gotoNext = 4104225
    					_ = gotoNext == 4104225
    					p.fmt.prec = 0
    					p.fmt.precPresent = true
    					gotoNext = 4104295
    				} else {
    					gotoNext = 4104295
}
    				gotoNext = 4104295
}
    			gotoNext = 4104295
    		} else {
    			gotoNext = 4104295
}
    		_ = gotoNext == 4104295
    		if !afterIndex_4101431 {
    			gotoNext = 4104310
    			_ = gotoNext == 4104310
    			argNum_4101360, i_4101539, afterIndex_4101431 = p.argNumber(argNum_4101360, format, i_4101539, len(a))
    			gotoNext = 4104385
    		} else {
    			gotoNext = 4104385
}
    		_ = gotoNext == 4104385
    		if i_4101539 >= end_4101340 {
    			gotoNext = 4104397
    			_ = gotoNext == 4104397
    			p.buf.writeString("%!(NOVERB)")
    			gotoNext = 4105366
    			gotoNext = 4104450
    		} else {
    			gotoNext = 4104450
}
    		_ = gotoNext == 4104450
    		verb_4104450, size_4104456 = rune(format[i_4101539]), 1
    		if verb_4104450 >= 128 {
    			gotoNext = 4104510
    			_ = gotoNext == 4104510
    			verb_4104450, size_4104456 = utf8.DecodeRuneInString(format[i_4101539:])
    			gotoNext = 4104570
    		} else {
    			gotoNext = 4104570
}
    		_ = gotoNext == 4104570
    		i_4101539 += size_4104456
    		_ = 0
    		gotoNext = 4104583
    		_ = gotoNext == 4104583
    		switch {
    		case verb_4104450 == 37:
    			gotoNext = 4104594
    			_ = gotoNext == 4104594
    			p.buf.writeByte(37)
    			gotoNext = 4105366
    		case !p.goodArgNum:
    			gotoNext = 4104704
    			_ = gotoNext == 4104704
    			p.badArgNum(verb_4104450)
    			gotoNext = 4105366
    		case argNum_4101360 >= len(a):
    			gotoNext = 4104747
    			_ = gotoNext == 4104747
    			p.missingArg(verb_4104450)
    			gotoNext = 4105366
    		case verb_4104450 == 119:
    			gotoNext = 4104850
    			_ = gotoNext == 4104850
    			p.wrappedErrs = append(p.wrappedErrs, argNum_4101360)
    			gotoNext = 4104934
    			gotoNext = 4105366
    		case verb_4104450 == 118:
    			gotoNext = 4104934
    			_ = gotoNext == 4104934
    			p.fmt.sharpV = p.fmt.sharp
    			p.fmt.sharp = false
    			p.fmt.plusV = p.fmt.plus
    			p.fmt.plus = false
    			gotoNext = 4105114
    			gotoNext = 4105366
    		default:
    			gotoNext = 4105114
    			_ = gotoNext == 4105114
    			p.printArg(a[argNum_4101360], verb_4104450)
    			argNum_4101360++
    			gotoNext = 4105366
}
    		gotoNext = 4101535
    	} else {
    		gotoNext = 4105366
}
    	_ = gotoNext == 4105366
    	if !p.reordered && argNum_4101360 < len(a) {
    		gotoNext = 4105401
    		_ = gotoNext == 4105401
    		p.fmt.clearflags()
    		p.buf.writeString("%!(EXTRA ")
    		if 0 < len(a[argNum_4101360:]) {
    			gotoNext = 4105728
    			_ = gotoNext == 4105728
    			i_4105463, arg_4105466 = 0, a[argNum_4101360:][0]
    			gotoNext = 4105729
    			_ = gotoNext == 4105729
    			if i_4105463 < len(a[argNum_4101360:]) {
    				gotoNext = 4105490
    				_ = gotoNext == 4105490
    				arg_4105466 = a[argNum_4101360:][i_4105463]
    				if i_4105463 > 0 {
    					gotoNext = 4105504
    					_ = gotoNext == 4105504
    					p.buf.writeString(", ")
    					gotoNext = 4105554
    				} else {
    					gotoNext = 4105554
}
    				_ = gotoNext == 4105554
    				if arg_4105466 == nil {
    					gotoNext = 4105568
    					_ = gotoNext == 4105568
    					p.buf.writeString("<nil>")
    					gotoNext = 4105463
    				} else {
    					gotoNext = 4105618
    					_ = gotoNext == 4105618
    					p.buf.writeString(reflect.TypeOf(arg_4105466).String())
    					p.buf.writeByte(61)
    					p.printArg(arg_4105466, 118)
    					gotoNext = 4105463
}
    				_ = gotoNext == 4105463
    				i_4105463++
    				gotoNext = 4105729
    			} else {
    				gotoNext = 4105733
}
    			gotoNext = 4105733
    		} else {
    			gotoNext = 4105733
}
    		_ = gotoNext == 4105733
    		p.buf.writeByte(41)
    		gotoNext = 4105757
    	} else {
    		gotoNext = 4105757
}
    	_ = gotoNext == 4105757
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


