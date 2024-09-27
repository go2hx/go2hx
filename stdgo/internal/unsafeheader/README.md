# Module: `stdgo.internal.unsafeheader`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Unsafeheader](<#class-unsafeheader>)

- [abstract Slice\_](<#abstract-slice_>)

- [abstract String\_](<#abstract-string_>)

# Classes


```haxe
import
```


## class Unsafeheader


```
Package unsafeheader contains header declarations for the Go runtime's slice
    and string implementations.
```

This package allows packages that cannot import "reflect" to use types that
are tested to be equivalent to reflect.SliceHeader and reflect.StringHeader.  

# Abstracts


## abstract Slice\_


[\(view file containing code\)](<./Unsafeheader.hx>)


## abstract String\_


[\(view file containing code\)](<./Unsafeheader.hx>)


