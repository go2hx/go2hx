# Module: `stdgo._internal.text.tabwriter`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function newWriter(_output:stdgo._internal.io.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Writer>`](<#function-newwriter>)

- [class T\_cell](<#class-t_cell>)

  - [`function new(?_size:stdgo.GoInt, ?_width:stdgo.GoInt, ?_htab:Bool):Void`](<#t_cell-function-new>)

- [class T\_osError](<#class-t_oserror>)

  - [`function new(?_err:Null<stdgo.Error>):Void`](<#t_oserror-function-new>)

- [class Writer](<#class-writer>)

  - [`function new(?_output:Null<stdgo._internal.io.Writer>, ?_minwidth:stdgo.GoInt, ?_tabwidth:stdgo.GoInt, ?_padding:stdgo.GoInt, ?_padbytes:stdgo.GoArray<stdgo.GoUInt8>, ?_flags:stdgo.GoUInt, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_pos:stdgo.GoInt, ?_cell:stdgo._internal.text.tabwriter.T_cell, ?_endChar:stdgo.GoUInt8, ?_lines:stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.T_cell>>, ?_widths:stdgo.Slice<stdgo.GoInt>):Void`](<#writer-function-new>)

# Constants


```haxe
import stdgo._internal.text.tabwriter.Tabwriter_tabIndent
```


```haxe
final alignRight:stdgo.GoUInt = ((32u32 : stdgo.GoUInt))
```


```haxe
final debug:stdgo.GoUInt = ((32u32 : stdgo.GoUInt))
```


```haxe
final discardEmptyColumns:stdgo.GoUInt = ((32u32 : stdgo.GoUInt))
```


```haxe
final escape:stdgo.GoInt32 = ((255 : stdgo.GoInt32))
```


```haxe
final filterHTML:stdgo.GoUInt = ((32u32 : stdgo.GoUInt))
```


```haxe
final stripEscape:stdgo.GoUInt = ((32u32 : stdgo.GoUInt))
```


```haxe
final tabIndent:stdgo.GoUInt = ((32u32 : stdgo.GoUInt))
```


# Variables


```haxe
import stdgo._internal.text.tabwriter.Tabwriter_tabIndent
```


```haxe
var _newline:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _tabs:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _vbar:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _hbar:stdgo.Slice<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.text.tabwriter.Tabwriter_tabIndent
```


## function newWriter


```haxe
function newWriter(_output:stdgo._internal.io.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Writer>
```


[\(view code\)](<./Tabwriter_tabIndent.hx#L2>)


# Classes


```haxe
import stdgo._internal.text.tabwriter.*
```


## class T\_cell


```haxe
var _htab:Bool
```


```haxe
var _size:stdgo.GoInt
```


```haxe
var _width:stdgo.GoInt
```


### T\_cell function new


```haxe
function new(?_size:stdgo.GoInt, ?_width:stdgo.GoInt, ?_htab:Bool):Void
```


[\(view code\)](<./Tabwriter_T_cell.hx#L6>)


## class T\_osError


```haxe
var _err:stdgo.Error
```


### T\_osError function new


```haxe
function new(?_err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Tabwriter_T_osError.hx#L4>)


## class Writer


```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _cell:stdgo._internal.text.tabwriter.T_cell
```


```haxe
var _endChar:stdgo.GoUInt8
```


```haxe
var _flags:stdgo.GoUInt
```


```haxe
var _lines:stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.T_cell>>
```


```haxe
var _minwidth:stdgo.GoInt
```


```haxe
var _output:stdgo._internal.io.Writer
```


```haxe
var _padbytes:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _padding:stdgo.GoInt
```


```haxe
var _pos:stdgo.GoInt
```


```haxe
var _tabwidth:stdgo.GoInt
```


```haxe
var _widths:stdgo.Slice<stdgo.GoInt>
```


### Writer function new


```haxe
function new(?_output:Null<stdgo._internal.io.Writer>, ?_minwidth:stdgo.GoInt, ?_tabwidth:stdgo.GoInt, ?_padding:stdgo.GoInt, ?_padbytes:stdgo.GoArray<stdgo.GoUInt8>, ?_flags:stdgo.GoUInt, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_pos:stdgo.GoInt, ?_cell:stdgo._internal.text.tabwriter.T_cell, ?_endChar:stdgo.GoUInt8, ?_lines:stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.T_cell>>, ?_widths:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Tabwriter_Writer.hx#L15>)


