# Module: `stdgo.debug.plan9obj`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Plan9obj](<#class-plan9obj>)

  - [`function newFile(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.debug.plan9obj.File, stdgo.Error>`](<#plan9obj-function-newfile>)

  - [`function open(_name:String):stdgo.Tuple<stdgo.debug.plan9obj.File, stdgo.Error>`](<#plan9obj-function-open>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [abstract FileHeader](<#abstract-fileheader>)

- [abstract File](<#abstract-file>)

- [abstract SectionHeader](<#abstract-sectionheader>)

- [abstract Section](<#abstract-section>)

- [abstract Sym](<#abstract-sym>)

- [abstract T\_formatError](<#abstract-t_formaterror>)

- [abstract T\_prog](<#abstract-t_prog>)

- [abstract T\_sym](<#abstract-t_sym>)

# Constants


```haxe
import stdgo.debug.plan9obj.Plan9obj
```


```haxe
final magic386:haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magic386.magic386
```


```haxe
final magic64:haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magic64.magic64
```


```haxe
final magicAMD64:haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magicAMD64.magicAMD64
```


```haxe
final magicARM:haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magicARM.magicARM
```


# Variables


```haxe
import stdgo.debug.plan9obj.Plan9obj
```


```haxe
var errNoSymbols:stdgo.Error
```


# Classes


```haxe
import stdgo.debug.plan9obj.*
```


## class Plan9obj



Package plan9obj implements access to Plan 9 a.out object files.  

### Security



This package is not designed to be hardened against adversarial inputs, and is
outside the scope of https://go.dev/security/policy. In particular, only basic
validation is done when parsing object files. As such, care should be taken when
parsing untrusted inputs, as parsing malformed files may consume significant
resources, or cause panics.  

### Plan9obj function newFile


```haxe
function newFile(_r:stdgo._internal.io.ReaderAt):stdgo.Tuple<stdgo.debug.plan9obj.File, stdgo.Error>
```


```
NewFile creates a new File for accessing a Plan 9 binary in an underlying reader.
        The Plan 9 binary is expected to start at position 0 in the ReaderAt.
```
[\(view code\)](<./Plan9obj.hx#L312>)


### Plan9obj function open


```haxe
function open(_name:String):stdgo.Tuple<stdgo.debug.plan9obj.File, stdgo.Error>
```



Open opens the named file using os.Open and prepares it for use as a Plan 9 a.out binary.  

[\(view code\)](<./Plan9obj.hx#L302>)


# Typedefs


```haxe
import stdgo.debug.plan9obj.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.debug.plan9obj.T__struct_0;
```


# Abstracts


## abstract FileHeader


[\(view file containing code\)](<./Plan9obj.hx>)


## abstract File


[\(view file containing code\)](<./Plan9obj.hx>)


## abstract SectionHeader


[\(view file containing code\)](<./Plan9obj.hx>)


## abstract Section


[\(view file containing code\)](<./Plan9obj.hx>)


## abstract Sym


[\(view file containing code\)](<./Plan9obj.hx>)


## abstract T\_formatError


[\(view file containing code\)](<./Plan9obj.hx>)


## abstract T\_prog


[\(view file containing code\)](<./Plan9obj.hx>)


## abstract T\_sym


[\(view file containing code\)](<./Plan9obj.hx>)


