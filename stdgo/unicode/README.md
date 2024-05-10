# Module: `stdgo.unicode`

[(view library index)](../stdgo.md)


# Overview


```
Package utf8 implements functions and constants to support text encoded in
    UTF-8. It includes functions to translate between runes and UTF-8 byte sequences.
    See https://en.wikipedia.org/wiki/UTF-8
```
# Index


- [Constants](<#constants>)

- [class Utf16](<#class-utf16>)

  - [`function appendRune(a:Array<UInt>, r:Int):Array<UInt>`](<#utf16-function-appendrune>)

  - [`function decode(s:Array<UInt>):Array<Int>`](<#utf16-function-decode>)

  - [`function decodeRune(r1:Int, r2:Int):Int`](<#utf16-function-decoderune>)

  - [`function encode(s:Array<Int>):Array<UInt>`](<#utf16-function-encode>)

  - [`function encodeRune(r:Int):stdgo.Tuple<Int, Int>`](<#utf16-function-encoderune>)

  - [`function isSurrogate(r:Int):Bool`](<#utf16-function-issurrogate>)

- [class Utf8](<#class-utf8>)

  - [`function appendRune(p:Array<Int>, r:Int):Array<Int>`](<#utf8-function-appendrune>)

  - [`function decodeLastRune(p:Array<Int>):stdgo.Tuple<Int, Int>`](<#utf8-function-decodelastrune>)

  - [`function decodeLastRuneInString(s:String):stdgo.Tuple<Int, Int>`](<#utf8-function-decodelastruneinstring>)

  - [`function decodeRune(p:Array<Int>):stdgo.Tuple<Int, Int>`](<#utf8-function-decoderune>)

  - [`function decodeRuneInString(s:String):stdgo.Tuple<Int, Int>`](<#utf8-function-decoderuneinstring>)

  - [`function encodeRune(p:Array<Int>, r:Int):Int`](<#utf8-function-encoderune>)

  - [`function fullRune(p:Array<Int>):Bool`](<#utf8-function-fullrune>)

  - [`function fullRuneInString(s:String):Bool`](<#utf8-function-fullruneinstring>)

  - [`function runeCount(p:Array<Int>):Int`](<#utf8-function-runecount>)

  - [`function runeCountInString(s:String):Int`](<#utf8-function-runecountinstring>)

  - [`function runeLen(r:Int):Int`](<#utf8-function-runelen>)

  - [`function runeStart(b:Int):Bool`](<#utf8-function-runestart>)

  - [`function valid(p:Array<Int>):Bool`](<#utf8-function-valid>)

  - [`function validRune(r:Int):Bool`](<#utf8-function-validrune>)

  - [`function validString(s:String):Bool`](<#utf8-function-validstring>)

- [abstract T\_acceptRange](<#abstract-t_acceptrange>)

# Constants


```haxe
import stdgo.unicode.Utf8
```


```haxe
final maxRune:Int = stdgo._internal.unicode.utf16.Utf16.maxRune
```


```haxe
final replacementChar:Int = stdgo._internal.unicode.utf16.Utf16.replacementChar
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


# Classes


```haxe
import stdgo.unicode.*
```


## class Utf16


### Utf16 function appendRune


```haxe
function appendRune(a:Array<UInt>, r:Int):Array<UInt>
```


```
AppendRune appends the UTF-16 encoding of the Unicode code point r
        to the end of p and returns the extended buffer. If the rune is not
        a valid Unicode code point, it appends the encoding of U+FFFD.
```
[\(view code\)](<./Utf16.hx#L47>)


### Utf16 function decode


```haxe
function decode(s:Array<UInt>):Array<Int>
```


```
Decode returns the Unicode code point sequence represented
        by the UTF-16 encoding s.
```
[\(view code\)](<./Utf16.hx#L55>)


### Utf16 function decodeRune


```haxe
function decodeRune(r1:Int, r2:Int):Int
```


```
DecodeRune returns the UTF-16 decoding of a surrogate pair.
        If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
        the Unicode replacement code point U+FFFD.
```
[\(view code\)](<./Utf16.hx#L21>)


### Utf16 function encode


```haxe
function encode(s:Array<Int>):Array<UInt>
```



Encode returns the UTF\-16 encoding of the Unicode code point sequence s.  

[\(view code\)](<./Utf16.hx#L38>)


### Utf16 function encodeRune


```haxe
function encodeRune(r:Int):stdgo.Tuple<Int, Int>
```


```
EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
        If the rune is not a valid Unicode code point or does not need encoding,
        EncodeRune returns U+FFFD, U+FFFD.
```
[\(view code\)](<./Utf16.hx#L29>)


### Utf16 function isSurrogate


```haxe
function isSurrogate(r:Int):Bool
```


```
IsSurrogate reports whether the specified Unicode code point
        can appear in a surrogate pair.
```
[\(view code\)](<./Utf16.hx#L13>)


## class Utf8


### Utf8 function appendRune


```haxe
function appendRune(p:Array<Int>, r:Int):Array<Int>
```


```
AppendRune appends the UTF-8 encoding of r to the end of p and
        returns the extended buffer. If the rune is out of range,
        it appends the encoding of RuneError.
```
[\(view code\)](<./Utf8.hx#L131>)


### Utf8 function decodeLastRune


```haxe
function decodeLastRune(p:Array<Int>):stdgo.Tuple<Int, Int>
```


```
DecodeLastRune unpacks the last UTF-8 encoding in p and returns the rune and
        its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
        the encoding is invalid, it returns (RuneError, 1). Both are impossible
        results for correct, non-empty UTF-8.
```

An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

[\(view code\)](<./Utf8.hx#L87>)


### Utf8 function decodeLastRuneInString


```haxe
function decodeLastRuneInString(s:String):stdgo.Tuple<Int, Int>
```


```
DecodeLastRuneInString is like DecodeLastRune but its input is a string. If
        s is empty it returns (RuneError, 0). Otherwise, if the encoding is invalid,
        it returns (RuneError, 1). Both are impossible results for correct,
        non-empty UTF-8.
```

An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

[\(view code\)](<./Utf8.hx#L104>)


### Utf8 function decodeRune


```haxe
function decodeRune(p:Array<Int>):stdgo.Tuple<Int, Int>
```


```
DecodeRune unpacks the first UTF-8 encoding in p and returns the rune and
        its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
        the encoding is invalid, it returns (RuneError, 1). Both are impossible
        results for correct, non-empty UTF-8.
```

An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

[\(view code\)](<./Utf8.hx#L54>)


### Utf8 function decodeRuneInString


```haxe
function decodeRuneInString(s:String):stdgo.Tuple<Int, Int>
```


```
DecodeRuneInString is like DecodeRune but its input is a string. If s is
        empty it returns (RuneError, 0). Otherwise, if the encoding is invalid, it
        returns (RuneError, 1). Both are impossible results for correct, non-empty
        UTF-8.
```

An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

[\(view code\)](<./Utf8.hx#L71>)


### Utf8 function encodeRune


```haxe
function encodeRune(p:Array<Int>, r:Int):Int
```


```
EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
        If the rune is out of range, it writes the encoding of RuneError.
        It returns the number of bytes written.
```
[\(view code\)](<./Utf8.hx#L122>)


### Utf8 function fullRune


```haxe
function fullRune(p:Array<Int>):Bool
```


```
FullRune reports whether the bytes in p begin with a full UTF-8 encoding of a rune.
        An invalid encoding is considered a full Rune since it will convert as a width-1 error rune.
```
[\(view code\)](<./Utf8.hx#L34>)


### Utf8 function fullRuneInString


```haxe
function fullRuneInString(s:String):Bool
```



FullRuneInString is like FullRune but its input is a string.  

[\(view code\)](<./Utf8.hx#L41>)


### Utf8 function runeCount


```haxe
function runeCount(p:Array<Int>):Int
```


```
RuneCount returns the number of runes in p. Erroneous and short
        encodings are treated as single runes of width 1 byte.
```
[\(view code\)](<./Utf8.hx#L139>)


### Utf8 function runeCountInString


```haxe
function runeCountInString(s:String):Int
```



RuneCountInString is like RuneCount but its input is a string.  

[\(view code\)](<./Utf8.hx#L146>)


### Utf8 function runeLen


```haxe
function runeLen(r:Int):Int
```


```
RuneLen returns the number of bytes required to encode the rune.
        It returns -1 if the rune is not a valid value to encode in UTF-8.
```
[\(view code\)](<./Utf8.hx#L114>)


### Utf8 function runeStart


```haxe
function runeStart(b:Int):Bool
```


```
RuneStart reports whether the byte could be the first byte of an encoded,
        possibly invalid rune. Second and subsequent bytes always have the top two
        bits set to 10.
```
[\(view code\)](<./Utf8.hx#L154>)


### Utf8 function valid


```haxe
function valid(p:Array<Int>):Bool
```



Valid reports whether p consists entirely of valid UTF\-8\-encoded runes.  

[\(view code\)](<./Utf8.hx#L160>)


### Utf8 function validRune


```haxe
function validRune(r:Int):Bool
```


```
ValidRune reports whether r can be legally encoded as UTF-8.
        Code points that are out of range or a surrogate half are illegal.
```
[\(view code\)](<./Utf8.hx#L174>)


### Utf8 function validString


```haxe
function validString(s:String):Bool
```



ValidString reports whether s consists entirely of valid UTF\-8\-encoded runes.  

[\(view code\)](<./Utf8.hx#L167>)


# Abstracts


## abstract T\_acceptRange


[\(view file containing code\)](<./Utf8.hx>)


