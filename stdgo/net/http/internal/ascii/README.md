# Module: stdgo.net.http.internal.ascii


[(view library index)](../../../../stdgo.md)


# Overview


 


# Index


- [function \_lower\(\_b:stdgo.GoByte\):stdgo.GoByte](<#function-_lower>)

- [function equalFold\(\_s:stdgo.GoString, \_t:stdgo.GoString\):Bool](<#function-equalfold>)

- [function isPrint\(\_s:stdgo.GoString\):Bool](<#function-isprint>)

- [function is\_\(\_s:stdgo.GoString\):Bool](<#function-is_>)

- [function toLower\(\_s:stdgo.GoString\):\{\_1:Bool, \_0:stdgo.GoString\}](<#function-tolower>)

# Functions


```haxe
import stdgo.net.http.internal.ascii.Ascii
```


## function \_lower


```haxe
function _lower(_b:stdgo.GoByte):stdgo.GoByte
```


lower returns the ASCII lowercase version of b. 


[\(view code\)](<./Ascii.hx#L35>)


## function equalFold


```haxe
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool
```


EqualFold is strings.EqualFold, ASCII only. It reports whether s and t are equal, ASCII\-case\-insensitively. 


[\(view code\)](<./Ascii.hx#L17>)


## function isPrint


```haxe
function isPrint(_s:stdgo.GoString):Bool
```


IsPrint returns whether s is ASCII and printable according to https://tools.ietf.org/html/rfc20#section-4.2. 


[\(view code\)](<./Ascii.hx#L46>)


## function is\_


```haxe
function is_(_s:stdgo.GoString):Bool
```


Is returns whether s is ASCII. 


[\(view code\)](<./Ascii.hx#L61>)


## function toLower


```haxe
function toLower(_s:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}
```


ToLower returns the lowercase version of s if s is ASCII and printable. 


[\(view code\)](<./Ascii.hx#L76>)


