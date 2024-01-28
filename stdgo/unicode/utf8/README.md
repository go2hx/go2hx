# Module: `stdgo.unicode.utf8`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:43: non hxb types:,368

# Index


- [Variables](<#variables>)

- [`function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void`](<#function-_appendrunenonascii>)

- [`function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void`](<#function-appendrune>)

- [`function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-decodelastrune>)

- [`function decodeLastRuneInString(_s:stdgo.GoString):Void`](<#function-decodelastruneinstring>)

- [`function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-decoderune>)

- [`function decodeRuneInString(_s:stdgo.GoString):Void`](<#function-decoderuneinstring>)

- [`function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void`](<#function-encoderune>)

- [`function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-fullrune>)

- [`function fullRuneInString(_s:stdgo.GoString):Void`](<#function-fullruneinstring>)

- [`function runeCount(_p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-runecount>)

- [`function runeCountInString(_s:stdgo.GoString):Void`](<#function-runecountinstring>)

- [`function runeLen(_r:stdgo.GoRune):Void`](<#function-runelen>)

- [`function runeStart(_b:stdgo.GoByte):Void`](<#function-runestart>)

- [`function valid(_p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-valid>)

- [`function validRune(_r:stdgo.GoRune):Void`](<#function-validrune>)

- [`function validString(_s:stdgo.GoString):Void`](<#function-validstring>)

- [typedef T\_acceptRange](<#typedef-t_acceptrange>)

# Variables


```haxe
import stdgo.unicode.utf8.Utf8
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _acceptRanges:Dynamic
```


```haxe
var _as:Dynamic
```


```haxe
var _first:Dynamic
```


```haxe
var _hicb:Dynamic
```


```haxe
var _locb:Dynamic
```


```haxe
var _mask2:Dynamic
```


```haxe
var _mask3:Dynamic
```


```haxe
var _mask4:Dynamic
```


```haxe
var _maskx:Dynamic
```


```haxe
var _rune1Max:Dynamic
```


```haxe
var _rune2Max:Dynamic
```


```haxe
var _rune3Max:Dynamic
```


```haxe
var _s1:Dynamic
```


```haxe
var _s2:Dynamic
```


```haxe
var _s3:Dynamic
```


```haxe
var _s4:Dynamic
```


```haxe
var _s5:Dynamic
```


```haxe
var _s6:Dynamic
```


```haxe
var _s7:Dynamic
```


```haxe
var _surrogateMax:Dynamic
```


```haxe
var _surrogateMin:Dynamic
```


```haxe
var _t1:Dynamic
```


```haxe
var _t2:Dynamic
```


```haxe
var _t3:Dynamic
```


```haxe
var _t4:Dynamic
```


```haxe
var _t5:Dynamic
```


```haxe
var _tx:Dynamic
```


```haxe
var _xx:Dynamic
```


```haxe
var maxRune:Dynamic
```


```haxe
var runeError:Dynamic
```


```haxe
var runeSelf:Dynamic
```


```haxe
var utfmax:Dynamic
```


# Functions


```haxe
import stdgo.unicode.utf8.Utf8
```


## function \_appendRuneNonASCII


```haxe
function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Utf8.hx#L45>)


## function appendRune


```haxe
function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Utf8.hx#L44>)


## function decodeLastRune


```haxe
function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Utf8.hx#L40>)


## function decodeLastRuneInString


```haxe
function decodeLastRuneInString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Utf8.hx#L41>)


## function decodeRune


```haxe
function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Utf8.hx#L38>)


## function decodeRuneInString


```haxe
function decodeRuneInString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Utf8.hx#L39>)


## function encodeRune


```haxe
function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Utf8.hx#L43>)


## function fullRune


```haxe
function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Utf8.hx#L36>)


## function fullRuneInString


```haxe
function fullRuneInString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Utf8.hx#L37>)


## function runeCount


```haxe
function runeCount(_p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Utf8.hx#L46>)


## function runeCountInString


```haxe
function runeCountInString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Utf8.hx#L47>)


## function runeLen


```haxe
function runeLen(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Utf8.hx#L42>)


## function runeStart


```haxe
function runeStart(_b:stdgo.GoByte):Void
```


[\(view code\)](<./Utf8.hx#L48>)


## function valid


```haxe
function valid(_p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Utf8.hx#L49>)


## function validRune


```haxe
function validRune(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Utf8.hx#L51>)


## function validString


```haxe
function validString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Utf8.hx#L50>)


# Typedefs


```haxe
import stdgo.unicode.utf8.*
```


## typedef T\_acceptRange


```haxe
typedef T_acceptRange = Dynamic;
```


