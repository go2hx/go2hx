# Module: `stdgo._internal.debug.plan9obj`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _ptrsz:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo._internal.debug.plan9obj.Sym>;
}`](<#function-_newtable>)

- [`function _parseMagic(_magic:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt32;
}`](<#function-_parsemagic>)

- [`function _walksymtab(_data:stdgo.Slice<stdgo.GoUInt8>, _ptrsz:stdgo.GoInt, _fn:()):stdgo.Error`](<#function-_walksymtab>)

- [`function newFile(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.plan9obj.File>;
}`](<#function-newfile>)

- [`function open(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.plan9obj.File>;
}`](<#function-open>)

- [class File](<#class-file>)

  - [`function new(?fileHeader:stdgo._internal.debug.plan9obj.FileHeader, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Section>>, ?_closer:Null<stdgo._internal.io.Closer>):Void`](<#file-function-new>)

- [class FileHeader](<#class-fileheader>)

  - [`function new(?magic:stdgo.GoUInt32, ?bss:stdgo.GoUInt32, ?entry:stdgo.GoUInt64, ?ptrSize:stdgo.GoInt, ?loadAddress:stdgo.GoUInt64, ?hdrSize:stdgo.GoUInt64):Void`](<#fileheader-function-new>)

- [class Section](<#class-section>)

  - [`function new(?sectionHeader:stdgo._internal.debug.plan9obj.SectionHeader, ?readerAt:Null<stdgo._internal.io.ReaderAt>, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void`](<#section-function-new>)

  - [`function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#section-function-readat>)

- [class SectionHeader](<#class-sectionheader>)

  - [`function new(?name:stdgo.GoString, ?size:stdgo.GoUInt32, ?offset:stdgo.GoUInt32):Void`](<#sectionheader-function-new>)

- [class Sym](<#class-sym>)

  - [`function new(?value:stdgo.GoUInt64, ?type:stdgo.GoInt32, ?name:stdgo.GoString):Void`](<#sym-function-new>)

- [class T\_formatError](<#class-t_formaterror>)

  - [`function new(?_off:stdgo.GoInt, ?_msg:stdgo.GoString, ?_val:stdgo.AnyInterface):Void`](<#t_formaterror-function-new>)

- [class T\_prog](<#class-t_prog>)

  - [`function new(?magic:stdgo.GoUInt32, ?text:stdgo.GoUInt32, ?data:stdgo.GoUInt32, ?bss:stdgo.GoUInt32, ?syms:stdgo.GoUInt32, ?entry:stdgo.GoUInt32, ?spsz:stdgo.GoUInt32, ?pcsz:stdgo.GoUInt32):Void`](<#t_prog-function-new>)

- [class T\_sym](<#class-t_sym>)

  - [`function new(?_value:stdgo.GoUInt64, ?_typ:stdgo.GoUInt8, ?_name:stdgo.Slice<stdgo.GoUInt8>):Void`](<#t_sym-function-new>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Constants


```haxe
import stdgo._internal.debug.plan9obj.Plan9obj_open
```


```haxe
final magic386:stdgo.GoUInt64 = ((491i64 : stdgo.GoUInt64))
```


```haxe
final magic64:stdgo.GoUInt64 = ((32768i64 : stdgo.GoUInt64))
```


```haxe
final magicAMD64:stdgo.GoUInt64 = ((35479i64 : stdgo.GoUInt64))
```


```haxe
final magicARM:stdgo.GoUInt64 = ((1607i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.debug.plan9obj.Plan9obj_open
```


```haxe
var errNoSymbols:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.debug.plan9obj.Plan9obj_open
```


## function \_newTable


```haxe
function _newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _ptrsz:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo._internal.debug.plan9obj.Sym>;
}
```


[\(view code\)](<./Plan9obj_open.hx#L2>)


## function \_parseMagic


```haxe
function _parseMagic(_magic:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Plan9obj_open.hx#L2>)


## function \_walksymtab


```haxe
function _walksymtab(_data:stdgo.Slice<stdgo.GoUInt8>, _ptrsz:stdgo.GoInt, _fn:()):stdgo.Error
```


[\(view code\)](<./Plan9obj_open.hx#L2>)


## function newFile


```haxe
function newFile(_r:stdgo._internal.io.ReaderAt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.plan9obj.File>;
}
```


[\(view code\)](<./Plan9obj_open.hx#L2>)


## function open


```haxe
function open(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.plan9obj.File>;
}
```


[\(view code\)](<./Plan9obj_open.hx#L2>)


# Classes


```haxe
import stdgo._internal.debug.plan9obj.*
```


## class File


```haxe
var _closer:stdgo._internal.io.Closer
```


```haxe
var fileHeader:stdgo._internal.debug.plan9obj.FileHeader
```


```haxe
var sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Section>>
```


### File function new


```haxe
function new(?fileHeader:stdgo._internal.debug.plan9obj.FileHeader, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Section>>, ?_closer:Null<stdgo._internal.io.Closer>):Void
```


[\(view code\)](<./Plan9obj_File.hx#L7>)


## class FileHeader


```haxe
var bss:stdgo.GoUInt32
```


```haxe
var entry:stdgo.GoUInt64
```


```haxe
var hdrSize:stdgo.GoUInt64
```


```haxe
var loadAddress:stdgo.GoUInt64
```


```haxe
var magic:stdgo.GoUInt32
```


```haxe
var ptrSize:stdgo.GoInt
```


### FileHeader function new


```haxe
function new(?magic:stdgo.GoUInt32, ?bss:stdgo.GoUInt32, ?entry:stdgo.GoUInt64, ?ptrSize:stdgo.GoInt, ?loadAddress:stdgo.GoUInt64, ?hdrSize:stdgo.GoUInt64):Void
```


[\(view code\)](<./Plan9obj_FileHeader.hx#L9>)


## class Section


```haxe
var _sr:stdgo.Ref<stdgo._internal.io.SectionReader>
```


```haxe
var readerAt:stdgo._internal.io.ReaderAt
```


```haxe
var sectionHeader:stdgo._internal.debug.plan9obj.SectionHeader
```


### Section function new


```haxe
function new(?sectionHeader:stdgo._internal.debug.plan9obj.SectionHeader, ?readerAt:Null<stdgo._internal.io.ReaderAt>, ?_sr:stdgo.Ref<stdgo._internal.io.SectionReader>):Void
```


[\(view code\)](<./Plan9obj_Section.hx#L8>)


### Section function readAt


```haxe
function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Plan9obj_Section.hx#L15>)


## class SectionHeader


```haxe
var name:stdgo.GoString
```


```haxe
var offset:stdgo.GoUInt32
```


```haxe
var size:stdgo.GoUInt32
```


### SectionHeader function new


```haxe
function new(?name:stdgo.GoString, ?size:stdgo.GoUInt32, ?offset:stdgo.GoUInt32):Void
```


[\(view code\)](<./Plan9obj_SectionHeader.hx#L6>)


## class Sym


```haxe
var name:stdgo.GoString
```


```haxe
var type:stdgo.GoInt32
```


```haxe
var value:stdgo.GoUInt64
```


### Sym function new


```haxe
function new(?value:stdgo.GoUInt64, ?type:stdgo.GoInt32, ?name:stdgo.GoString):Void
```


[\(view code\)](<./Plan9obj_Sym.hx#L6>)


## class T\_formatError


```haxe
var _msg:stdgo.GoString
```


```haxe
var _off:stdgo.GoInt
```


```haxe
var _val:stdgo.AnyInterface
```


### T\_formatError function new


```haxe
function new(?_off:stdgo.GoInt, ?_msg:stdgo.GoString, ?_val:stdgo.AnyInterface):Void
```


[\(view code\)](<./Plan9obj_T_formatError.hx#L6>)


## class T\_prog


```haxe
var bss:stdgo.GoUInt32
```


```haxe
var data:stdgo.GoUInt32
```


```haxe
var entry:stdgo.GoUInt32
```


```haxe
var magic:stdgo.GoUInt32
```


```haxe
var pcsz:stdgo.GoUInt32
```


```haxe
var spsz:stdgo.GoUInt32
```


```haxe
var syms:stdgo.GoUInt32
```


```haxe
var text:stdgo.GoUInt32
```


### T\_prog function new


```haxe
function new(?magic:stdgo.GoUInt32, ?text:stdgo.GoUInt32, ?data:stdgo.GoUInt32, ?bss:stdgo.GoUInt32, ?syms:stdgo.GoUInt32, ?entry:stdgo.GoUInt32, ?spsz:stdgo.GoUInt32, ?pcsz:stdgo.GoUInt32):Void
```


[\(view code\)](<./Plan9obj_T_prog.hx#L11>)


## class T\_sym


```haxe
var _name:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _typ:stdgo.GoUInt8
```


```haxe
var _value:stdgo.GoUInt64
```


### T\_sym function new


```haxe
function new(?_value:stdgo.GoUInt64, ?_typ:stdgo.GoUInt8, ?_name:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Plan9obj_T_sym.hx#L6>)


# Typedefs


```haxe
import stdgo._internal.debug.plan9obj.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_size:stdgo.GoUInt32;
	_name:stdgo.GoString;
};
```


