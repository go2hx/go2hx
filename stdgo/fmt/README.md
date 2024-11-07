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
    	end_4020460 = len(format)
    	argNum_4020480 = 0
    	afterIndex_4020551 = false
    	p.reordered = false
    	gotoNext = 4020642
    	_ = gotoNext == 4020642
    	i_4020659 = 0
    	formatLoopBreak = false
    	gotoNext = 4020655
    	_ = gotoNext == 4020655
    	if !formatLoopBreak && (i_4020659 < end_4020460) {
    		gotoNext = 4020676
    		_ = gotoNext == 4020676
    		p.goodArgNum = true
    		lasti_4020702 = i_4020659
    		_ = 0
    		gotoNext = 4020715
    		_ = gotoNext == 4020715
    		if i_4020659 < end_4020460 && format[i_4020659] != 37 {
    			gotoNext = 4020747
    			_ = gotoNext == 4020747
    			i_4020659++
    			gotoNext = 4020715
    		} else {
    			gotoNext = 4020762
}
    		_ = gotoNext == 4020762
    		if i_4020659 > lasti_4020702 {
    			gotoNext = 4020775
    			_ = gotoNext == 4020775
    			p.buf.writeString(format[lasti_4020702:i_4020659])
    			gotoNext = 4020821
    		} else {
    			gotoNext = 4020821
}
    		_ = gotoNext == 4020821
    		if i_4020659 >= end_4020460 {
    			gotoNext = 4020833
    			_ = gotoNext == 4020833
    			gotoNext = 4024486
    			gotoNext = 4020909
    		} else {
    			gotoNext = 4020909
}
    		_ = gotoNext == 4020909
    		i_4020659++
    		p.fmt.clearflags()
    		gotoNext = 4020959
    		_ = gotoNext == 4020959
    		_ = 0
    		simpleFormatBreak = false
    		gotoNext = 4020975
    		_ = gotoNext == 4020975
    		if !simpleFormatBreak && (i_4020659 < end_4020460) {
    			gotoNext = 4020994
    			_ = gotoNext == 4020994
    			c_4020999 = format[i_4020659]
    			_ = 0
    			gotoNext = 4021017
    			_ = gotoNext == 4021017
    			switch c_4020999 {
    			case 35:
    				gotoNext = 4021031
    				_ = gotoNext == 4021031
    				p.fmt.sharp = true
    				gotoNext = 4020990
    			case 48:
    				gotoNext = 4021067
    				_ = gotoNext == 4021067
    				p.fmt.zero = !p.fmt.minus
    				gotoNext = 4020990
    			case 43:
    				gotoNext = 4021150
    				_ = gotoNext == 4021150
    				p.fmt.plus = true
    				gotoNext = 4020990
    			case 45:
    				gotoNext = 4021185
    				_ = gotoNext == 4021185
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4020990
    			case 32:
    				gotoNext = 4021283
    				_ = gotoNext == 4021283
    				p.fmt.space = true
    				gotoNext = 4020990
    			default:
    				gotoNext = 4021319
    				_ = gotoNext == 4021319
    				if 97 <= c_4020999 && c_4020999 <= 122 && argNum_4020480 < len(a) {
    					gotoNext = 4021496
    					_ = gotoNext == 4021496
    					_ = 0
    					gotoNext = 4021503
    					_ = gotoNext == 4021503
    					switch c_4020999 {
    					case 119:
    						gotoNext = 4021519
    						_ = gotoNext == 4021519
    						p.wrappedErrs = append(p.wrappedErrs, argNum_4020480)
    						gotoNext = 4021604
    						gotoNext = 4021789
    					case 118:
    						gotoNext = 4021604
    						_ = gotoNext == 4021604
    						p.fmt.sharpV = p.fmt.sharp
    						p.fmt.sharp = false
    						p.fmt.plusV = p.fmt.plus
    						p.fmt.plus = false
    						gotoNext = 4021789
    					default:
    						gotoNext = 4021789
}
    					_ = gotoNext == 4021789
    					p.printArg(a[argNum_4020480], rune(c_4020999))
    					argNum_4020480++
    					i_4020659++
    					gotoNext = 4020655
    					gotoNext = 4021954
    				} else {
    					gotoNext = 4021954
}
    				_ = gotoNext == 4021954
    				simpleFormatBreak = true
    				gotoNext = 4020975
    				gotoNext = 4020990
}
    			_ = gotoNext == 4020990
    			i_4020659++
    			gotoNext = 4020975
    		} else {
    			gotoNext = 4022029
}
    		_ = gotoNext == 4022029
    		argNum_4020480, i_4020659, afterIndex_4020551 = p.argNumber(argNum_4020480, format, i_4020659, len(a))
    		if i_4020659 < end_4020460 && format[i_4020659] == 42 {
    			gotoNext = 4022149
    			_ = gotoNext == 4022149
    			i_4020659++
    			p.fmt.wid, p.fmt.widPresent, argNum_4020480 = intFromArg(a, argNum_4020480)
    			if !p.fmt.widPresent {
    				gotoNext = 4022246
    				_ = gotoNext == 4022246
    				p.buf.writeString("%!(BADWIDTH)")
    				gotoNext = 4022389
    			} else {
    				gotoNext = 4022389
}
    			_ = gotoNext == 4022389
    			if p.fmt.wid < 0 {
    				gotoNext = 4022406
    				_ = gotoNext == 4022406
    				p.fmt.wid = -p.fmt.wid
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4022528
    			} else {
    				gotoNext = 4022528
}
    			_ = gotoNext == 4022528
    			afterIndex_4020551 = false
    			gotoNext = 4022734
    		} else {
    			gotoNext = 4022556
    			_ = gotoNext == 4022556
    			p.fmt.wid, p.fmt.widPresent, i_4020659 = parsenum(format, i_4020659, end_4020460)
    			if afterIndex_4020551 && p.fmt.widPresent {
    				gotoNext = 4022656
    				_ = gotoNext == 4022656
    				p.goodArgNum = false
    				gotoNext = 4022734
    			} else {
    				gotoNext = 4022734
}
    			gotoNext = 4022734
}
    		_ = gotoNext == 4022734
    		if i_4020659+1 < end_4020460 && format[i_4020659] == 46 {
    			gotoNext = 4022767
    			_ = gotoNext == 4022767
    			i_4020659++
    			if afterIndex_4020551 {
    				gotoNext = 4022793
    				_ = gotoNext == 4022793
    				p.goodArgNum = false
    				gotoNext = 4022841
    			} else {
    				gotoNext = 4022841
}
    			_ = gotoNext == 4022841
    			argNum_4020480, i_4020659, afterIndex_4020551 = p.argNumber(argNum_4020480, format, i_4020659, len(a))
    			if i_4020659 < end_4020460 && format[i_4020659] == 42 {
    				gotoNext = 4022938
    				_ = gotoNext == 4022938
    				i_4020659++
    				p.fmt.prec, p.fmt.precPresent, argNum_4020480 = intFromArg(a, argNum_4020480)
    				if p.fmt.prec < 0 {
    					gotoNext = 4023089
    					_ = gotoNext == 4023089
    					p.fmt.prec = 0
    					p.fmt.precPresent = false
    					gotoNext = 4023152
    				} else {
    					gotoNext = 4023152
}
    				_ = gotoNext == 4023152
    				if !p.fmt.precPresent {
    					gotoNext = 4023174
    					_ = gotoNext == 4023174
    					p.buf.writeString("%!(BADPREC)")
    					gotoNext = 4023224
    				} else {
    					gotoNext = 4023224
}
    				_ = gotoNext == 4023224
    				afterIndex_4020551 = false
    				gotoNext = 4023415
    			} else {
    				gotoNext = 4023253
    				_ = gotoNext == 4023253
    				p.fmt.prec, p.fmt.precPresent, i_4020659 = parsenum(format, i_4020659, end_4020460)
    				if !p.fmt.precPresent {
    					gotoNext = 4023345
    					_ = gotoNext == 4023345
    					p.fmt.prec = 0
    					p.fmt.precPresent = true
    					gotoNext = 4023415
    				} else {
    					gotoNext = 4023415
}
    				gotoNext = 4023415
}
    			gotoNext = 4023415
    		} else {
    			gotoNext = 4023415
}
    		_ = gotoNext == 4023415
    		if !afterIndex_4020551 {
    			gotoNext = 4023430
    			_ = gotoNext == 4023430
    			argNum_4020480, i_4020659, afterIndex_4020551 = p.argNumber(argNum_4020480, format, i_4020659, len(a))
    			gotoNext = 4023505
    		} else {
    			gotoNext = 4023505
}
    		_ = gotoNext == 4023505
    		if i_4020659 >= end_4020460 {
    			gotoNext = 4023517
    			_ = gotoNext == 4023517
    			p.buf.writeString("%!(NOVERB)")
    			gotoNext = 4024486
    			gotoNext = 4023570
    		} else {
    			gotoNext = 4023570
}
    		_ = gotoNext == 4023570
    		verb_4023570, size_4023576 = rune(format[i_4020659]), 1
    		if verb_4023570 >= 128 {
    			gotoNext = 4023630
    			_ = gotoNext == 4023630
    			verb_4023570, size_4023576 = utf8.DecodeRuneInString(format[i_4020659:])
    			gotoNext = 4023690
    		} else {
    			gotoNext = 4023690
}
    		_ = gotoNext == 4023690
    		i_4020659 += size_4023576
    		_ = 0
    		gotoNext = 4023703
    		_ = gotoNext == 4023703
    		switch {
    		case verb_4023570 == 37:
    			gotoNext = 4023714
    			_ = gotoNext == 4023714
    			p.buf.writeByte(37)
    			gotoNext = 4024486
    		case !p.goodArgNum:
    			gotoNext = 4023824
    			_ = gotoNext == 4023824
    			p.badArgNum(verb_4023570)
    			gotoNext = 4024486
    		case argNum_4020480 >= len(a):
    			gotoNext = 4023867
    			_ = gotoNext == 4023867
    			p.missingArg(verb_4023570)
    			gotoNext = 4024486
    		case verb_4023570 == 119:
    			gotoNext = 4023970
    			_ = gotoNext == 4023970
    			p.wrappedErrs = append(p.wrappedErrs, argNum_4020480)
    			gotoNext = 4024054
    			gotoNext = 4024486
    		case verb_4023570 == 118:
    			gotoNext = 4024054
    			_ = gotoNext == 4024054
    			p.fmt.sharpV = p.fmt.sharp
    			p.fmt.sharp = false
    			p.fmt.plusV = p.fmt.plus
    			p.fmt.plus = false
    			gotoNext = 4024234
    			gotoNext = 4024486
    		default:
    			gotoNext = 4024234
    			_ = gotoNext == 4024234
    			p.printArg(a[argNum_4020480], verb_4023570)
    			argNum_4020480++
    			gotoNext = 4024486
}
    		gotoNext = 4020655
    	} else {
    		gotoNext = 4024486
}
    	_ = gotoNext == 4024486
    	if !p.reordered && argNum_4020480 < len(a) {
    		gotoNext = 4024521
    		_ = gotoNext == 4024521
    		p.fmt.clearflags()
    		p.buf.writeString("%!(EXTRA ")
    		if 0 < len(a[argNum_4020480:]) {
    			gotoNext = 4024848
    			_ = gotoNext == 4024848
    			i_4024583, arg_4024586 = 0, a[argNum_4020480:][0]
    			gotoNext = 4024849
    			_ = gotoNext == 4024849
    			if i_4024583 < len(a[argNum_4020480:]) {
    				gotoNext = 4024610
    				_ = gotoNext == 4024610
    				arg_4024586 = a[argNum_4020480:][i_4024583]
    				if i_4024583 > 0 {
    					gotoNext = 4024624
    					_ = gotoNext == 4024624
    					p.buf.writeString(", ")
    					gotoNext = 4024674
    				} else {
    					gotoNext = 4024674
}
    				_ = gotoNext == 4024674
    				if arg_4024586 == nil {
    					gotoNext = 4024688
    					_ = gotoNext == 4024688
    					p.buf.writeString("<nil>")
    					gotoNext = 4024583
    				} else {
    					gotoNext = 4024738
    					_ = gotoNext == 4024738
    					p.buf.writeString(reflect.TypeOf(arg_4024586).String())
    					p.buf.writeByte(61)
    					p.printArg(arg_4024586, 118)
    					gotoNext = 4024583
}
    				_ = gotoNext == 4024583
    				i_4024583++
    				gotoNext = 4024849
    			} else {
    				gotoNext = 4024853
}
    			gotoNext = 4024853
    		} else {
    			gotoNext = 4024853
}
    		_ = gotoNext == 4024853
    		p.buf.writeByte(41)
    		gotoNext = 4024877
    	} else {
    		gotoNext = 4024877
}
    	_ = gotoNext == 4024877
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


