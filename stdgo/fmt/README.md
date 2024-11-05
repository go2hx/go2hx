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
    	end_4147518 = len(format)
    	argNum_4147538 = 0
    	afterIndex_4147609 = false
    	p.reordered = false
    	gotoNext = 4147700
    	_ = gotoNext == 4147700
    	i_4147717 = 0
    	formatLoopBreak = false
    	gotoNext = 4147713
    	_ = gotoNext == 4147713
    	if !formatLoopBreak && (i_4147717 < end_4147518) {
    		gotoNext = 4147734
    		_ = gotoNext == 4147734
    		p.goodArgNum = true
    		lasti_4147760 = i_4147717
    		_ = 0
    		gotoNext = 4147773
    		_ = gotoNext == 4147773
    		if i_4147717 < end_4147518 && format[i_4147717] != 37 {
    			gotoNext = 4147805
    			_ = gotoNext == 4147805
    			i_4147717++
    			gotoNext = 4147773
    		} else {
    			gotoNext = 4147820
}
    		_ = gotoNext == 4147820
    		if i_4147717 > lasti_4147760 {
    			gotoNext = 4147833
    			_ = gotoNext == 4147833
    			p.buf.writeString(format[lasti_4147760:i_4147717])
    			gotoNext = 4147879
    		} else {
    			gotoNext = 4147879
}
    		_ = gotoNext == 4147879
    		if i_4147717 >= end_4147518 {
    			gotoNext = 4147891
    			_ = gotoNext == 4147891
    			gotoNext = 4151544
    			gotoNext = 4147967
    		} else {
    			gotoNext = 4147967
}
    		_ = gotoNext == 4147967
    		i_4147717++
    		p.fmt.clearflags()
    		gotoNext = 4148017
    		_ = gotoNext == 4148017
    		_ = 0
    		simpleFormatBreak = false
    		gotoNext = 4148033
    		_ = gotoNext == 4148033
    		if !simpleFormatBreak && (i_4147717 < end_4147518) {
    			gotoNext = 4148052
    			_ = gotoNext == 4148052
    			c_4148057 = format[i_4147717]
    			_ = 0
    			gotoNext = 4148075
    			_ = gotoNext == 4148075
    			switch c_4148057 {
    			case 35:
    				gotoNext = 4148089
    				_ = gotoNext == 4148089
    				p.fmt.sharp = true
    				gotoNext = 4148048
    			case 48:
    				gotoNext = 4148125
    				_ = gotoNext == 4148125
    				p.fmt.zero = !p.fmt.minus
    				gotoNext = 4148048
    			case 43:
    				gotoNext = 4148208
    				_ = gotoNext == 4148208
    				p.fmt.plus = true
    				gotoNext = 4148048
    			case 45:
    				gotoNext = 4148243
    				_ = gotoNext == 4148243
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4148048
    			case 32:
    				gotoNext = 4148341
    				_ = gotoNext == 4148341
    				p.fmt.space = true
    				gotoNext = 4148048
    			default:
    				gotoNext = 4148377
    				_ = gotoNext == 4148377
    				if 97 <= c_4148057 && c_4148057 <= 122 && argNum_4147538 < len(a) {
    					gotoNext = 4148554
    					_ = gotoNext == 4148554
    					_ = 0
    					gotoNext = 4148561
    					_ = gotoNext == 4148561
    					switch c_4148057 {
    					case 119:
    						gotoNext = 4148577
    						_ = gotoNext == 4148577
    						p.wrappedErrs = append(p.wrappedErrs, argNum_4147538)
    						gotoNext = 4148662
    						gotoNext = 4148847
    					case 118:
    						gotoNext = 4148662
    						_ = gotoNext == 4148662
    						p.fmt.sharpV = p.fmt.sharp
    						p.fmt.sharp = false
    						p.fmt.plusV = p.fmt.plus
    						p.fmt.plus = false
    						gotoNext = 4148847
    					default:
    						gotoNext = 4148847
}
    					_ = gotoNext == 4148847
    					p.printArg(a[argNum_4147538], rune(c_4148057))
    					argNum_4147538++
    					i_4147717++
    					gotoNext = 4147713
    					gotoNext = 4149012
    				} else {
    					gotoNext = 4149012
}
    				_ = gotoNext == 4149012
    				simpleFormatBreak = true
    				gotoNext = 4148033
    				gotoNext = 4148048
}
    			_ = gotoNext == 4148048
    			i_4147717++
    			gotoNext = 4148033
    		} else {
    			gotoNext = 4149087
}
    		_ = gotoNext == 4149087
    		argNum_4147538, i_4147717, afterIndex_4147609 = p.argNumber(argNum_4147538, format, i_4147717, len(a))
    		if i_4147717 < end_4147518 && format[i_4147717] == 42 {
    			gotoNext = 4149207
    			_ = gotoNext == 4149207
    			i_4147717++
    			p.fmt.wid, p.fmt.widPresent, argNum_4147538 = intFromArg(a, argNum_4147538)
    			if !p.fmt.widPresent {
    				gotoNext = 4149304
    				_ = gotoNext == 4149304
    				p.buf.writeString("%!(BADWIDTH)")
    				gotoNext = 4149447
    			} else {
    				gotoNext = 4149447
}
    			_ = gotoNext == 4149447
    			if p.fmt.wid < 0 {
    				gotoNext = 4149464
    				_ = gotoNext == 4149464
    				p.fmt.wid = -p.fmt.wid
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4149586
    			} else {
    				gotoNext = 4149586
}
    			_ = gotoNext == 4149586
    			afterIndex_4147609 = false
    			gotoNext = 4149792
    		} else {
    			gotoNext = 4149614
    			_ = gotoNext == 4149614
    			p.fmt.wid, p.fmt.widPresent, i_4147717 = parsenum(format, i_4147717, end_4147518)
    			if afterIndex_4147609 && p.fmt.widPresent {
    				gotoNext = 4149714
    				_ = gotoNext == 4149714
    				p.goodArgNum = false
    				gotoNext = 4149792
    			} else {
    				gotoNext = 4149792
}
    			gotoNext = 4149792
}
    		_ = gotoNext == 4149792
    		if i_4147717+1 < end_4147518 && format[i_4147717] == 46 {
    			gotoNext = 4149825
    			_ = gotoNext == 4149825
    			i_4147717++
    			if afterIndex_4147609 {
    				gotoNext = 4149851
    				_ = gotoNext == 4149851
    				p.goodArgNum = false
    				gotoNext = 4149899
    			} else {
    				gotoNext = 4149899
}
    			_ = gotoNext == 4149899
    			argNum_4147538, i_4147717, afterIndex_4147609 = p.argNumber(argNum_4147538, format, i_4147717, len(a))
    			if i_4147717 < end_4147518 && format[i_4147717] == 42 {
    				gotoNext = 4149996
    				_ = gotoNext == 4149996
    				i_4147717++
    				p.fmt.prec, p.fmt.precPresent, argNum_4147538 = intFromArg(a, argNum_4147538)
    				if p.fmt.prec < 0 {
    					gotoNext = 4150147
    					_ = gotoNext == 4150147
    					p.fmt.prec = 0
    					p.fmt.precPresent = false
    					gotoNext = 4150210
    				} else {
    					gotoNext = 4150210
}
    				_ = gotoNext == 4150210
    				if !p.fmt.precPresent {
    					gotoNext = 4150232
    					_ = gotoNext == 4150232
    					p.buf.writeString("%!(BADPREC)")
    					gotoNext = 4150282
    				} else {
    					gotoNext = 4150282
}
    				_ = gotoNext == 4150282
    				afterIndex_4147609 = false
    				gotoNext = 4150473
    			} else {
    				gotoNext = 4150311
    				_ = gotoNext == 4150311
    				p.fmt.prec, p.fmt.precPresent, i_4147717 = parsenum(format, i_4147717, end_4147518)
    				if !p.fmt.precPresent {
    					gotoNext = 4150403
    					_ = gotoNext == 4150403
    					p.fmt.prec = 0
    					p.fmt.precPresent = true
    					gotoNext = 4150473
    				} else {
    					gotoNext = 4150473
}
    				gotoNext = 4150473
}
    			gotoNext = 4150473
    		} else {
    			gotoNext = 4150473
}
    		_ = gotoNext == 4150473
    		if !afterIndex_4147609 {
    			gotoNext = 4150488
    			_ = gotoNext == 4150488
    			argNum_4147538, i_4147717, afterIndex_4147609 = p.argNumber(argNum_4147538, format, i_4147717, len(a))
    			gotoNext = 4150563
    		} else {
    			gotoNext = 4150563
}
    		_ = gotoNext == 4150563
    		if i_4147717 >= end_4147518 {
    			gotoNext = 4150575
    			_ = gotoNext == 4150575
    			p.buf.writeString("%!(NOVERB)")
    			gotoNext = 4151544
    			gotoNext = 4150628
    		} else {
    			gotoNext = 4150628
}
    		_ = gotoNext == 4150628
    		verb_4150628, size_4150634 = rune(format[i_4147717]), 1
    		if verb_4150628 >= 128 {
    			gotoNext = 4150688
    			_ = gotoNext == 4150688
    			verb_4150628, size_4150634 = utf8.DecodeRuneInString(format[i_4147717:])
    			gotoNext = 4150748
    		} else {
    			gotoNext = 4150748
}
    		_ = gotoNext == 4150748
    		i_4147717 += size_4150634
    		_ = 0
    		gotoNext = 4150761
    		_ = gotoNext == 4150761
    		switch {
    		case verb_4150628 == 37:
    			gotoNext = 4150772
    			_ = gotoNext == 4150772
    			p.buf.writeByte(37)
    			gotoNext = 4151544
    		case !p.goodArgNum:
    			gotoNext = 4150882
    			_ = gotoNext == 4150882
    			p.badArgNum(verb_4150628)
    			gotoNext = 4151544
    		case argNum_4147538 >= len(a):
    			gotoNext = 4150925
    			_ = gotoNext == 4150925
    			p.missingArg(verb_4150628)
    			gotoNext = 4151544
    		case verb_4150628 == 119:
    			gotoNext = 4151028
    			_ = gotoNext == 4151028
    			p.wrappedErrs = append(p.wrappedErrs, argNum_4147538)
    			gotoNext = 4151112
    			gotoNext = 4151544
    		case verb_4150628 == 118:
    			gotoNext = 4151112
    			_ = gotoNext == 4151112
    			p.fmt.sharpV = p.fmt.sharp
    			p.fmt.sharp = false
    			p.fmt.plusV = p.fmt.plus
    			p.fmt.plus = false
    			gotoNext = 4151292
    			gotoNext = 4151544
    		default:
    			gotoNext = 4151292
    			_ = gotoNext == 4151292
    			p.printArg(a[argNum_4147538], verb_4150628)
    			argNum_4147538++
    			gotoNext = 4151544
}
    		gotoNext = 4147713
    	} else {
    		gotoNext = 4151544
}
    	_ = gotoNext == 4151544
    	if !p.reordered && argNum_4147538 < len(a) {
    		gotoNext = 4151579
    		_ = gotoNext == 4151579
    		p.fmt.clearflags()
    		p.buf.writeString("%!(EXTRA ")
    		if 0 < len(a[argNum_4147538:]) {
    			gotoNext = 4151906
    			_ = gotoNext == 4151906
    			i_4151641, arg_4151644 = 0, a[argNum_4147538:][0]
    			gotoNext = 4151907
    			_ = gotoNext == 4151907
    			if i_4151641 < len(a[argNum_4147538:]) {
    				gotoNext = 4151668
    				_ = gotoNext == 4151668
    				arg_4151644 = a[argNum_4147538:][i_4151641]
    				if i_4151641 > 0 {
    					gotoNext = 4151682
    					_ = gotoNext == 4151682
    					p.buf.writeString(", ")
    					gotoNext = 4151732
    				} else {
    					gotoNext = 4151732
}
    				_ = gotoNext == 4151732
    				if arg_4151644 == nil {
    					gotoNext = 4151746
    					_ = gotoNext == 4151746
    					p.buf.writeString("<nil>")
    					gotoNext = 4151641
    				} else {
    					gotoNext = 4151796
    					_ = gotoNext == 4151796
    					p.buf.writeString(reflect.TypeOf(arg_4151644).String())
    					p.buf.writeByte(61)
    					p.printArg(arg_4151644, 118)
    					gotoNext = 4151641
}
    				_ = gotoNext == 4151641
    				i_4151641++
    				gotoNext = 4151907
    			} else {
    				gotoNext = 4151911
}
    			gotoNext = 4151911
    		} else {
    			gotoNext = 4151911
}
    		_ = gotoNext == 4151911
    		p.buf.writeByte(41)
    		gotoNext = 4151935
    	} else {
    		gotoNext = 4151935
}
    	_ = gotoNext == 4151935
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


