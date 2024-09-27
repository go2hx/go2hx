# Module: `stdgo.net.http.internal.ascii`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [class Ascii](<#class-ascii>)

  - [`function equalFold(_s:String, _t:String):Bool`](<#ascii-function-equalfold>)

  - [`function isPrint(_s:String):Bool`](<#ascii-function-isprint>)

  - [`function is_(_s:String):Bool`](<#ascii-function-is_>)

  - [`function toLower(_s:String):stdgo.Tuple<String, Bool>`](<#ascii-function-tolower>)

# Classes


```haxe
import
```


## class Ascii


### Ascii function equalFold


```haxe
function equalFold(_s:String, _t:String):Bool
```


```
EqualFold is strings.EqualFold, ASCII only. It reports whether s and t
        are equal, ASCII-case-insensitively.
```
[\(view code\)](<./Ascii.hx#L7>)


### Ascii function isPrint


```haxe
function isPrint(_s:String):Bool
```


```
IsPrint returns whether s is ASCII and printable according to
        https://tools.ietf.org/html/rfc20#section-4.2.
```
[\(view code\)](<./Ascii.hx#L14>)


### Ascii function is\_


```haxe
function is_(_s:String):Bool
```



Is returns whether s is ASCII.  

[\(view code\)](<./Ascii.hx#L20>)


### Ascii function toLower


```haxe
function toLower(_s:String):stdgo.Tuple<String, Bool>
```



ToLower returns the lowercase version of s if s is ASCII and printable.  

[\(view code\)](<./Ascii.hx#L26>)


