# Module: `stdgo.unicode.utf8`

[(view library index)](../../stdgo.md)


# Overview



Package utf8 implements functions and constants to support text encoded in
UTF\-8. It includes functions to translate between runes and UTF\-8 byte sequences.
See https://en.wikipedia.org/wiki/UTF-8  

# Index


- [Constants](<#constants>)

- [`function appendRune(p:Array<Int>, r:Int):Array<Int>`](<#function-appendrune>)

- [`function decodeLastRune(p:Array<Int>):stdgo.Tuple<Int, Int>`](<#function-decodelastrune>)

- [`function decodeLastRuneInString(s:String):stdgo.Tuple<Int, Int>`](<#function-decodelastruneinstring>)

- [`function decodeRune(p:Array<Int>):stdgo.Tuple<Int, Int>`](<#function-decoderune>)

- [`function decodeRuneInString(s:String):stdgo.Tuple<Int, Int>`](<#function-decoderuneinstring>)

- [`function encodeRune(p:Array<Int>, r:Int):Int`](<#function-encoderune>)

- [`function fullRune(p:Array<Int>):Bool`](<#function-fullrune>)

- [`function fullRuneInString(s:String):Bool`](<#function-fullruneinstring>)

- [`function runeCount(p:Array<Int>):Int`](<#function-runecount>)

- [`function runeCountInString(s:String):Int`](<#function-runecountinstring>)

- [`function runeLen(r:Int):Int`](<#function-runelen>)

- [`function runeStart(b:Int):Bool`](<#function-runestart>)

- [`function valid(p:Array<Int>):Bool`](<#function-valid>)

- [`function validRune(r:Int):Bool`](<#function-validrune>)

- [`function validString(s:String):Bool`](<#function-validstring>)

- [typedef T\_acceptRange](<#typedef-t_acceptrange>)

# Constants


```haxe
import stdgo.unicode.utf8.Utf8
```


```haxe
final maxRune:Int = stdgo._internal.unicode.utf8.Utf8.maxRune
```


```haxe
final runeError:Int = stdgo._internal.unicode.utf8.Utf8.runeError
```


```haxe
final runeSelf:haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8.runeSelf
```


```haxe
final utfmax:haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8.utfmax
```


# Functions


```haxe
import stdgo.unicode.utf8.Utf8
```


## function appendRune


```haxe
function appendRune(p:Array<Int>, r:Int):Array<Int>
```



AppendRune appends the UTF\-8 encoding of r to the end of p and
returns the extended buffer. If the rune is out of range,
it appends the encoding of RuneError.  

[\(view code\)](<./Utf8.hx#L82>)


## function decodeLastRune


```haxe
function decodeLastRune(p:Array<Int>):stdgo.Tuple<Int, Int>
```



DecodeLastRune unpacks the last UTF\-8 encoding in p and returns the rune and
its width in bytes. If p is empty it returns \(RuneError, 0\). Otherwise, if
the encoding is invalid, it returns \(RuneError, 1\). Both are impossible
results for correct, non\-empty UTF\-8.  


An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

[\(view code\)](<./Utf8.hx#L54>)


## function decodeLastRuneInString


```haxe
function decodeLastRuneInString(s:String):stdgo.Tuple<Int, Int>
```



DecodeLastRuneInString is like DecodeLastRune but its input is a string. If
s is empty it returns \(RuneError, 0\). Otherwise, if the encoding is invalid,
it returns \(RuneError, 1\). Both are impossible results for correct,
non\-empty UTF\-8.  


An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

[\(view code\)](<./Utf8.hx#L65>)


## function decodeRune


```haxe
function decodeRune(p:Array<Int>):stdgo.Tuple<Int, Int>
```



DecodeRune unpacks the first UTF\-8 encoding in p and returns the rune and
its width in bytes. If p is empty it returns \(RuneError, 0\). Otherwise, if
the encoding is invalid, it returns \(RuneError, 1\). Both are impossible
results for correct, non\-empty UTF\-8.  


An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

[\(view code\)](<./Utf8.hx#L32>)


## function decodeRuneInString


```haxe
function decodeRuneInString(s:String):stdgo.Tuple<Int, Int>
```



DecodeRuneInString is like DecodeRune but its input is a string. If s is
empty it returns \(RuneError, 0\). Otherwise, if the encoding is invalid, it
returns \(RuneError, 1\). Both are impossible results for correct, non\-empty
UTF\-8.  


An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

[\(view code\)](<./Utf8.hx#L43>)


## function encodeRune


```haxe
function encodeRune(p:Array<Int>, r:Int):Int
```



EncodeRune writes into p \(which must be large enough\) the UTF\-8 encoding of the rune.
If the rune is out of range, it writes the encoding of RuneError.
It returns the number of bytes written.  

[\(view code\)](<./Utf8.hx#L76>)


## function fullRune


```haxe
function fullRune(p:Array<Int>):Bool
```



FullRune reports whether the bytes in p begin with a full UTF\-8 encoding of a rune.
An invalid encoding is considered a full Rune since it will convert as a width\-1 error rune.  

[\(view code\)](<./Utf8.hx#L17>)


## function fullRuneInString


```haxe
function fullRuneInString(s:String):Bool
```



FullRuneInString is like FullRune but its input is a string.  

[\(view code\)](<./Utf8.hx#L21>)


## function runeCount


```haxe
function runeCount(p:Array<Int>):Int
```



RuneCount returns the number of runes in p. Erroneous and short
encodings are treated as single runes of width 1 byte.  

[\(view code\)](<./Utf8.hx#L87>)


## function runeCountInString


```haxe
function runeCountInString(s:String):Int
```



RuneCountInString is like RuneCount but its input is a string.  

[\(view code\)](<./Utf8.hx#L91>)


## function runeLen


```haxe
function runeLen(r:Int):Int
```



RuneLen returns the number of bytes required to encode the rune.
It returns \-1 if the rune is not a valid value to encode in UTF\-8.  

[\(view code\)](<./Utf8.hx#L70>)


## function runeStart


```haxe
function runeStart(b:Int):Bool
```



RuneStart reports whether the byte could be the first byte of an encoded,
possibly invalid rune. Second and subsequent bytes always have the top two
bits set to 10.  

[\(view code\)](<./Utf8.hx#L97>)


## function valid


```haxe
function valid(p:Array<Int>):Bool
```



Valid reports whether p consists entirely of valid UTF\-8\-encoded runes.  

[\(view code\)](<./Utf8.hx#L101>)


## function validRune


```haxe
function validRune(r:Int):Bool
```



ValidRune reports whether r can be legally encoded as UTF\-8.
Code points that are out of range or a surrogate half are illegal.  

[\(view code\)](<./Utf8.hx#L110>)


## function validString


```haxe
function validString(s:String):Bool
```



ValidString reports whether s consists entirely of valid UTF\-8\-encoded runes.  

[\(view code\)](<./Utf8.hx#L105>)


# Typedefs


```haxe
import stdgo.unicode.utf8.*
```


## typedef T\_acceptRange


```haxe
typedef T_acceptRange = Dynamic;
```


