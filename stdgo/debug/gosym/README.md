# Module: `stdgo.debug.gosym`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Gosym](<#class-gosym>)

  - [`function newLineTable(_data:Array<UInt>, _text:haxe.UInt64):stdgo.debug.gosym.LineTable`](<#gosym-function-newlinetable>)

  - [`function newTable(_symtab:Array<UInt>, _pcln:stdgo.debug.gosym.LineTable):stdgo.Tuple<stdgo.debug.gosym.Table, stdgo.Error>`](<#gosym-function-newtable>)

- [typedef T\_version](<#typedef-t_version>)

- [typedef UnknownFileError](<#typedef-unknownfileerror>)

- [abstract LineTable](<#abstract-linetable>)

- [abstract T\_funcTab](<#abstract-t_functab>)

- [abstract T\_funcData](<#abstract-t_funcdata>)

- [abstract Sym](<#abstract-sym>)

- [abstract Func](<#abstract-func>)

- [abstract Obj](<#abstract-obj>)

- [abstract Table](<#abstract-table>)

- [abstract T\_sym](<#abstract-t_sym>)

- [abstract UnknownLineError](<#abstract-unknownlineerror>)

- [abstract DecodingError](<#abstract-decodingerror>)

- [abstract T\_\_lineFromAline\_\_\_localname\_\_\_stackEnt\_16022](<#abstract-tlinefromaline_localname___stackent_16022>)

# Classes


```haxe
import
```


## class Gosym


```
Package gosym implements access to the Go symbol
    and line number tables embedded in Go binaries generated
    by the gc compilers.
```
### Gosym function newLineTable


```haxe
function newLineTable(_data:Array<UInt>, _text:haxe.UInt64):stdgo.debug.gosym.LineTable
```


```
NewLineTable returns a new PC/line table
        corresponding to the encoded data.
        Text must be the start address of the
        corresponding text segment.
```
[\(view code\)](<./Gosym.hx#L727>)


### Gosym function newTable


```haxe
function newTable(_symtab:Array<UInt>, _pcln:stdgo.debug.gosym.LineTable):stdgo.Tuple<stdgo.debug.gosym.Table, stdgo.Error>
```


```
NewTable decodes the Go symbol table (the ".gosymtab" section in ELF),
        returning an in-memory representation.
        Starting with Go 1.3, the Go symbol table no longer includes symbol data.
```
[\(view code\)](<./Gosym.hx#L736>)


# Typedefs


```haxe
import
```


## typedef T\_version


```haxe
typedef T_version = stdgo._internal.debug.gosym.T_version;
```


## typedef UnknownFileError


```haxe
typedef UnknownFileError = stdgo._internal.debug.gosym.UnknownFileError;
```


# Abstracts


## abstract LineTable


[\(view file containing code\)](<./Gosym.hx>)


## abstract T\_funcTab


[\(view file containing code\)](<./Gosym.hx>)


## abstract T\_funcData


[\(view file containing code\)](<./Gosym.hx>)


## abstract Sym


[\(view file containing code\)](<./Gosym.hx>)


## abstract Func


[\(view file containing code\)](<./Gosym.hx>)


## abstract Obj


[\(view file containing code\)](<./Gosym.hx>)


## abstract Table


[\(view file containing code\)](<./Gosym.hx>)


## abstract T\_sym


[\(view file containing code\)](<./Gosym.hx>)


## abstract UnknownLineError


[\(view file containing code\)](<./Gosym.hx>)


## abstract DecodingError


[\(view file containing code\)](<./Gosym.hx>)


## abstract T\_\_lineFromAline\_\_\_localname\_\_\_stackEnt\_16022


[\(view file containing code\)](<./Gosym.hx>)


