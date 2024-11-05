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
    	end_4003773 = len(format)
    	argNum_4003793 = 0
    	afterIndex_4003864 = false
    	p.reordered = false
    	gotoNext = 4003955
    	_ = gotoNext == 4003955
    	i_4003972 = 0
    	formatLoopBreak = false
    	gotoNext = 4003968
    	_ = gotoNext == 4003968
    	if !formatLoopBreak && (i_4003972 < end_4003773) {
    		gotoNext = 4003989
    		_ = gotoNext == 4003989
    		p.goodArgNum = true
    		lasti_4004015 = i_4003972
    		_ = 0
    		gotoNext = 4004028
    		_ = gotoNext == 4004028
    		if i_4003972 < end_4003773 && format[i_4003972] != 37 {
    			gotoNext = 4004060
    			_ = gotoNext == 4004060
    			i_4003972++
    			gotoNext = 4004028
    		} else {
    			gotoNext = 4004075
}
    		_ = gotoNext == 4004075
    		if i_4003972 > lasti_4004015 {
    			gotoNext = 4004088
    			_ = gotoNext == 4004088
    			p.buf.writeString(format[lasti_4004015:i_4003972])
    			gotoNext = 4004134
    		} else {
    			gotoNext = 4004134
}
    		_ = gotoNext == 4004134
    		if i_4003972 >= end_4003773 {
    			gotoNext = 4004146
    			_ = gotoNext == 4004146
    			gotoNext = 4007799
    			gotoNext = 4004222
    		} else {
    			gotoNext = 4004222
}
    		_ = gotoNext == 4004222
    		i_4003972++
    		p.fmt.clearflags()
    		gotoNext = 4004272
    		_ = gotoNext == 4004272
    		_ = 0
    		simpleFormatBreak = false
    		gotoNext = 4004288
    		_ = gotoNext == 4004288
    		if !simpleFormatBreak && (i_4003972 < end_4003773) {
    			gotoNext = 4004307
    			_ = gotoNext == 4004307
    			c_4004312 = format[i_4003972]
    			_ = 0
    			gotoNext = 4004330
    			_ = gotoNext == 4004330
    			switch c_4004312 {
    			case 35:
    				gotoNext = 4004344
    				_ = gotoNext == 4004344
    				p.fmt.sharp = true
    				gotoNext = 4004303
    			case 48:
    				gotoNext = 4004380
    				_ = gotoNext == 4004380
    				p.fmt.zero = !p.fmt.minus
    				gotoNext = 4004303
    			case 43:
    				gotoNext = 4004463
    				_ = gotoNext == 4004463
    				p.fmt.plus = true
    				gotoNext = 4004303
    			case 45:
    				gotoNext = 4004498
    				_ = gotoNext == 4004498
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4004303
    			case 32:
    				gotoNext = 4004596
    				_ = gotoNext == 4004596
    				p.fmt.space = true
    				gotoNext = 4004303
    			default:
    				gotoNext = 4004632
    				_ = gotoNext == 4004632
    				if 97 <= c_4004312 && c_4004312 <= 122 && argNum_4003793 < len(a) {
    					gotoNext = 4004809
    					_ = gotoNext == 4004809
    					_ = 0
    					gotoNext = 4004816
    					_ = gotoNext == 4004816
    					switch c_4004312 {
    					case 119:
    						gotoNext = 4004832
    						_ = gotoNext == 4004832
    						p.wrappedErrs = append(p.wrappedErrs, argNum_4003793)
    						gotoNext = 4004917
    						gotoNext = 4005102
    					case 118:
    						gotoNext = 4004917
    						_ = gotoNext == 4004917
    						p.fmt.sharpV = p.fmt.sharp
    						p.fmt.sharp = false
    						p.fmt.plusV = p.fmt.plus
    						p.fmt.plus = false
    						gotoNext = 4005102
    					default:
    						gotoNext = 4005102
}
    					_ = gotoNext == 4005102
    					p.printArg(a[argNum_4003793], rune(c_4004312))
    					argNum_4003793++
    					i_4003972++
    					gotoNext = 4003968
    					gotoNext = 4005267
    				} else {
    					gotoNext = 4005267
}
    				_ = gotoNext == 4005267
    				simpleFormatBreak = true
    				gotoNext = 4004288
    				gotoNext = 4004303
}
    			_ = gotoNext == 4004303
    			i_4003972++
    			gotoNext = 4004288
    		} else {
    			gotoNext = 4005342
}
    		_ = gotoNext == 4005342
    		argNum_4003793, i_4003972, afterIndex_4003864 = p.argNumber(argNum_4003793, format, i_4003972, len(a))
    		if i_4003972 < end_4003773 && format[i_4003972] == 42 {
    			gotoNext = 4005462
    			_ = gotoNext == 4005462
    			i_4003972++
    			p.fmt.wid, p.fmt.widPresent, argNum_4003793 = intFromArg(a, argNum_4003793)
    			if !p.fmt.widPresent {
    				gotoNext = 4005559
    				_ = gotoNext == 4005559
    				p.buf.writeString("%!(BADWIDTH)")
    				gotoNext = 4005702
    			} else {
    				gotoNext = 4005702
}
    			_ = gotoNext == 4005702
    			if p.fmt.wid < 0 {
    				gotoNext = 4005719
    				_ = gotoNext == 4005719
    				p.fmt.wid = -p.fmt.wid
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4005841
    			} else {
    				gotoNext = 4005841
}
    			_ = gotoNext == 4005841
    			afterIndex_4003864 = false
    			gotoNext = 4006047
    		} else {
    			gotoNext = 4005869
    			_ = gotoNext == 4005869
    			p.fmt.wid, p.fmt.widPresent, i_4003972 = parsenum(format, i_4003972, end_4003773)
    			if afterIndex_4003864 && p.fmt.widPresent {
    				gotoNext = 4005969
    				_ = gotoNext == 4005969
    				p.goodArgNum = false
    				gotoNext = 4006047
    			} else {
    				gotoNext = 4006047
}
    			gotoNext = 4006047
}
    		_ = gotoNext == 4006047
    		if i_4003972+1 < end_4003773 && format[i_4003972] == 46 {
    			gotoNext = 4006080
    			_ = gotoNext == 4006080
    			i_4003972++
    			if afterIndex_4003864 {
    				gotoNext = 4006106
    				_ = gotoNext == 4006106
    				p.goodArgNum = false
    				gotoNext = 4006154
    			} else {
    				gotoNext = 4006154
}
    			_ = gotoNext == 4006154
    			argNum_4003793, i_4003972, afterIndex_4003864 = p.argNumber(argNum_4003793, format, i_4003972, len(a))
    			if i_4003972 < end_4003773 && format[i_4003972] == 42 {
    				gotoNext = 4006251
    				_ = gotoNext == 4006251
    				i_4003972++
    				p.fmt.prec, p.fmt.precPresent, argNum_4003793 = intFromArg(a, argNum_4003793)
    				if p.fmt.prec < 0 {
    					gotoNext = 4006402
    					_ = gotoNext == 4006402
    					p.fmt.prec = 0
    					p.fmt.precPresent = false
    					gotoNext = 4006465
    				} else {
    					gotoNext = 4006465
}
    				_ = gotoNext == 4006465
    				if !p.fmt.precPresent {
    					gotoNext = 4006487
    					_ = gotoNext == 4006487
    					p.buf.writeString("%!(BADPREC)")
    					gotoNext = 4006537
    				} else {
    					gotoNext = 4006537
}
    				_ = gotoNext == 4006537
    				afterIndex_4003864 = false
    				gotoNext = 4006728
    			} else {
    				gotoNext = 4006566
    				_ = gotoNext == 4006566
    				p.fmt.prec, p.fmt.precPresent, i_4003972 = parsenum(format, i_4003972, end_4003773)
    				if !p.fmt.precPresent {
    					gotoNext = 4006658
    					_ = gotoNext == 4006658
    					p.fmt.prec = 0
    					p.fmt.precPresent = true
    					gotoNext = 4006728
    				} else {
    					gotoNext = 4006728
}
    				gotoNext = 4006728
}
    			gotoNext = 4006728
    		} else {
    			gotoNext = 4006728
}
    		_ = gotoNext == 4006728
    		if !afterIndex_4003864 {
    			gotoNext = 4006743
    			_ = gotoNext == 4006743
    			argNum_4003793, i_4003972, afterIndex_4003864 = p.argNumber(argNum_4003793, format, i_4003972, len(a))
    			gotoNext = 4006818
    		} else {
    			gotoNext = 4006818
}
    		_ = gotoNext == 4006818
    		if i_4003972 >= end_4003773 {
    			gotoNext = 4006830
    			_ = gotoNext == 4006830
    			p.buf.writeString("%!(NOVERB)")
    			gotoNext = 4007799
    			gotoNext = 4006883
    		} else {
    			gotoNext = 4006883
}
    		_ = gotoNext == 4006883
    		verb_4006883, size_4006889 = rune(format[i_4003972]), 1
    		if verb_4006883 >= 128 {
    			gotoNext = 4006943
    			_ = gotoNext == 4006943
    			verb_4006883, size_4006889 = utf8.DecodeRuneInString(format[i_4003972:])
    			gotoNext = 4007003
    		} else {
    			gotoNext = 4007003
}
    		_ = gotoNext == 4007003
    		i_4003972 += size_4006889
    		_ = 0
    		gotoNext = 4007016
    		_ = gotoNext == 4007016
    		switch {
    		case verb_4006883 == 37:
    			gotoNext = 4007027
    			_ = gotoNext == 4007027
    			p.buf.writeByte(37)
    			gotoNext = 4007799
    		case !p.goodArgNum:
    			gotoNext = 4007137
    			_ = gotoNext == 4007137
    			p.badArgNum(verb_4006883)
    			gotoNext = 4007799
    		case argNum_4003793 >= len(a):
    			gotoNext = 4007180
    			_ = gotoNext == 4007180
    			p.missingArg(verb_4006883)
    			gotoNext = 4007799
    		case verb_4006883 == 119:
    			gotoNext = 4007283
    			_ = gotoNext == 4007283
    			p.wrappedErrs = append(p.wrappedErrs, argNum_4003793)
    			gotoNext = 4007367
    			gotoNext = 4007799
    		case verb_4006883 == 118:
    			gotoNext = 4007367
    			_ = gotoNext == 4007367
    			p.fmt.sharpV = p.fmt.sharp
    			p.fmt.sharp = false
    			p.fmt.plusV = p.fmt.plus
    			p.fmt.plus = false
    			gotoNext = 4007547
    			gotoNext = 4007799
    		default:
    			gotoNext = 4007547
    			_ = gotoNext == 4007547
    			p.printArg(a[argNum_4003793], verb_4006883)
    			argNum_4003793++
    			gotoNext = 4007799
}
    		gotoNext = 4003968
    	} else {
    		gotoNext = 4007799
}
    	_ = gotoNext == 4007799
    	if !p.reordered && argNum_4003793 < len(a) {
    		gotoNext = 4007834
    		_ = gotoNext == 4007834
    		p.fmt.clearflags()
    		p.buf.writeString("%!(EXTRA ")
    		if 0 < len(a[argNum_4003793:]) {
    			gotoNext = 4008161
    			_ = gotoNext == 4008161
    			i_4007896, arg_4007899 = 0, a[argNum_4003793:][0]
    			gotoNext = 4008162
    			_ = gotoNext == 4008162
    			if i_4007896 < len(a[argNum_4003793:]) {
    				gotoNext = 4007923
    				_ = gotoNext == 4007923
    				arg_4007899 = a[argNum_4003793:][i_4007896]
    				if i_4007896 > 0 {
    					gotoNext = 4007937
    					_ = gotoNext == 4007937
    					p.buf.writeString(", ")
    					gotoNext = 4007987
    				} else {
    					gotoNext = 4007987
}
    				_ = gotoNext == 4007987
    				if arg_4007899 == nil {
    					gotoNext = 4008001
    					_ = gotoNext == 4008001
    					p.buf.writeString("<nil>")
    					gotoNext = 4007896
    				} else {
    					gotoNext = 4008051
    					_ = gotoNext == 4008051
    					p.buf.writeString(reflect.TypeOf(arg_4007899).String())
    					p.buf.writeByte(61)
    					p.printArg(arg_4007899, 118)
    					gotoNext = 4007896
}
    				_ = gotoNext == 4007896
    				i_4007896++
    				gotoNext = 4008162
    			} else {
    				gotoNext = 4008166
}
    			gotoNext = 4008166
    		} else {
    			gotoNext = 4008166
}
    		_ = gotoNext == 4008166
    		p.buf.writeByte(41)
    		gotoNext = 4008190
    	} else {
    		gotoNext = 4008190
}
    	_ = gotoNext == 4008190
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


