# Module: `stdgo.mime.quotedprintable`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Quotedprintable](<#class-quotedprintable>)

  - [`function newReader(_r:stdgo._internal.io.Reader):stdgo.mime.quotedprintable.Reader`](<#quotedprintable-function-newreader>)

  - [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.mime.quotedprintable.Writer`](<#quotedprintable-function-newwriter>)

- [abstract Reader](<#abstract-reader>)

- [abstract Writer](<#abstract-writer>)

# Classes


```haxe
import
```


## class Quotedprintable


```
Package quotedprintable implements quoted-printable encoding as specified by
    RFC 2045.
```
### Quotedprintable function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo.mime.quotedprintable.Reader
```



NewReader returns a quoted\-printable reader, decoding from r.  

[\(view code\)](<./Quotedprintable.hx#L108>)


### Quotedprintable function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.mime.quotedprintable.Writer
```



NewWriter returns a new Writer that writes to w.  

[\(view code\)](<./Quotedprintable.hx#L114>)


# Abstracts


## abstract Reader


[\(view file containing code\)](<./Quotedprintable.hx>)


## abstract Writer


[\(view file containing code\)](<./Quotedprintable.hx>)


