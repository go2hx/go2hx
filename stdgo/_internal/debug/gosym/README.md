# Module: `stdgo._internal.debug.gosym`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _walksymtab(_data:stdgo.Slice<stdgo.GoUInt8>, _fn:()):stdgo.Error`](<#function-_walksymtab>)

- [`function newLineTable(_data:stdgo.Slice<stdgo.GoUInt8>, _text:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.LineTable>`](<#function-newlinetable>)

- [`function newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _pcln:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.gosym.Table>;
}`](<#function-newtable>)

- [class DecodingError](<#class-decodingerror>)

  - [`function new(?_off:stdgo.GoInt, ?_msg:stdgo.GoString, ?_val:stdgo.AnyInterface):Void`](<#decodingerror-function-new>)

- [class Func](<#class-func>)

  - [`function _nameWithoutInst():stdgo.GoString`](<#func-function-_namewithoutinst>)

  - [`function baseName():stdgo.GoString`](<#func-function-basename>)

  - [`function new(?entry:stdgo.GoUInt64, ?sym:stdgo.Ref<stdgo._internal.debug.gosym.Sym>, ?end:stdgo.GoUInt64, ?params:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Sym>>, ?locals:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Sym>>, ?frameSize:stdgo.GoInt, ?lineTable:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>, ?obj:stdgo.Ref<stdgo._internal.debug.gosym.Obj>):Void`](<#func-function-new>)

  - [`function packageName():stdgo.GoString`](<#func-function-packagename>)

  - [`function receiverName():stdgo.GoString`](<#func-function-receivername>)

  - [`function static_():Bool`](<#func-function-static_>)

- [class LineTable](<#class-linetable>)

  - [`function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?pc:stdgo.GoUInt64, ?line:stdgo.GoInt, ?_mu:stdgo._internal.sync.Mutex, ?_version:stdgo._internal.debug.gosym.T_version, ?_binary:stdgo._internal.encoding.binary.ByteOrder, ?_quantum:stdgo.GoUInt32, ?_ptrsize:stdgo.GoUInt32, ?_textStart:stdgo.GoUInt64, ?_funcnametab:stdgo.Slice<stdgo.GoUInt8>, ?_cutab:stdgo.Slice<stdgo.GoUInt8>, ?_funcdata:stdgo.Slice<stdgo.GoUInt8>, ?_functab:stdgo.Slice<stdgo.GoUInt8>, ?_nfunctab:stdgo.GoUInt32, ?_filetab:stdgo.Slice<stdgo.GoUInt8>, ?_pctab:stdgo.Slice<stdgo.GoUInt8>, ?_nfiletab:stdgo.GoUInt32, ?_funcNames:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_strings:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_fileMap:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>):Void`](<#linetable-function-new>)

- [class Obj](<#class-obj>)

  - [`function new(?funcs:stdgo.Slice<stdgo._internal.debug.gosym.Func>, ?paths:stdgo.Slice<stdgo._internal.debug.gosym.Sym>):Void`](<#obj-function-new>)

- [class Sym](<#class-sym>)

  - [`function new(?value:stdgo.GoUInt64, ?type:stdgo.GoUInt8, ?name:stdgo.GoString, ?goType:stdgo.GoUInt64, ?func:stdgo.Ref<stdgo._internal.debug.gosym.Func>, ?_goVersion:stdgo._internal.debug.gosym.T_version):Void`](<#sym-function-new>)

- [class T\_\_lineFromAline\_\_\_localname\_\_\_stackEnt\_16022](<#class-tlinefromaline_localname___stackent_16022>)

  - [`function new(?_path:stdgo.GoString, ?_start:stdgo.GoInt, ?_offset:stdgo.GoInt, ?_prev:stdgo.Ref<stdgo._internal.debug.gosym.T__lineFromAline___localname___stackEnt_16022>):Void`](<#tlinefromaline_localname___stackent_16022-function-new>)

- [class T\_funcData](<#class-t_funcdata>)

  - [`function new(?_t:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>, ?_data:stdgo.Slice<stdgo.GoUInt8>):Void`](<#t_funcdata-function-new>)

- [class T\_funcTab](<#class-t_functab>)

  - [`function _findFileLine(_entry:stdgo.GoUInt64, _filetab:stdgo.GoUInt32, _linetab:stdgo.GoUInt32, _filenum:stdgo.GoInt32, _line:stdgo.GoInt32, _cutab:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#t_functab-function-_findfileline>)

  - [`function _findFunc(__0:stdgo.GoUInt64):stdgo._internal.debug.gosym.T_funcData`](<#t_functab-function-_findfunc>)

  - [`function _funcData(__0:stdgo.GoUInt32):stdgo._internal.debug.gosym.T_funcData`](<#t_functab-function-_funcdata>)

  - [`function _funcName(__0:stdgo.GoUInt32):stdgo.GoString`](<#t_functab-function-_funcname>)

  - [`function _funcTab():stdgo._internal.debug.gosym.T_funcTab`](<#t_functab-function-_functab>)

  - [`function _functabFieldSize():stdgo.GoInt`](<#t_functab-function-_functabfieldsize>)

  - [`function _go12Funcs():stdgo.Slice<stdgo._internal.debug.gosym.Func>`](<#t_functab-function-_go12funcs>)

  - [`function _go12LineToPC(_path:stdgo.GoString, _line:stdgo.GoInt):stdgo.GoUInt64`](<#t_functab-function-_go12linetopc>)

  - [`function _go12MapFiles(_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Obj>>, _obj:stdgo.Ref<stdgo._internal.debug.gosym.Obj>):Void`](<#t_functab-function-_go12mapfiles>)

  - [`function _go12PCToFile(__0:stdgo.GoUInt64):stdgo.GoString`](<#t_functab-function-_go12pctofile>)

  - [`function _go12PCToLine(__0:stdgo.GoUInt64):stdgo.GoInt`](<#t_functab-function-_go12pctoline>)

  - [`function _initFileMap():Void`](<#t_functab-function-_initfilemap>)

  - [`function _isGo12():Bool`](<#t_functab-function-_isgo12>)

  - [`function _parse(_targetPC:stdgo.GoUInt64, _targetLine:stdgo.GoInt):{ _2:stdgo.GoInt; _1:stdgo.GoUInt64; _0:stdgo.Slice<stdgo.GoUInt8>;}`](<#t_functab-function-_parse>)

  - [`function _parsePclnTab():Void`](<#t_functab-function-_parsepclntab>)

  - [`function _pcvalue(_off:stdgo.GoUInt32, _entry:stdgo.GoUInt64, _targetpc:stdgo.GoUInt64):stdgo.GoInt32`](<#t_functab-function-_pcvalue>)

  - [`function _readvarint(_pp:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32`](<#t_functab-function-_readvarint>)

  - [`function _slice(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.LineTable>`](<#t_functab-function-_slice>)

  - [`function _step(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _pc:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.Pointer<stdgo.GoInt32>, _first:Bool):Bool`](<#t_functab-function-_step>)

  - [`function _string(__0:stdgo.GoUInt32):stdgo.GoString`](<#t_functab-function-_string>)

  - [`function _stringFrom(_arr:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoUInt32):stdgo.GoString`](<#t_functab-function-_stringfrom>)

  - [`function _uintptr(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#t_functab-function-_uintptr>)

  - [`function lineToPC(_line:stdgo.GoInt, _maxpc:stdgo.GoUInt64):stdgo.GoUInt64`](<#t_functab-function-linetopc>)

  - [`function new(?lineTable:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>, ?_sz:stdgo.GoInt):Void`](<#t_functab-function-new>)

  - [`function pctoLine(__0:stdgo.GoUInt64):stdgo.GoInt`](<#t_functab-function-pctoline>)

- [class T\_sym](<#class-t_sym>)

  - [`function new(?_value:stdgo.GoUInt64, ?_gotype:stdgo.GoUInt64, ?_typ:stdgo.GoUInt8, ?_name:stdgo.Slice<stdgo.GoUInt8>):Void`](<#t_sym-function-new>)

- [class Table](<#class-table>)

  - [`function new(?syms:stdgo.Slice<stdgo._internal.debug.gosym.Sym>, ?funcs:stdgo.Slice<stdgo._internal.debug.gosym.Func>, ?files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Obj>>, ?objs:stdgo.Slice<stdgo._internal.debug.gosym.Obj>, ?_go12line:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>):Void`](<#table-function-new>)

- [class UnknownLineError](<#class-unknownlineerror>)

  - [`function new(?file:stdgo.GoString, ?line:stdgo.GoInt):Void`](<#unknownlineerror-function-new>)

- [typedef T\_version](<#typedef-t_version>)

- [typedef UnknownFileError](<#typedef-unknownfileerror>)

# Constants


```haxe
import stdgo._internal.debug.gosym.Gosym_newTable
```


```haxe
final _disableRecover:Bool = false
```


```haxe
final _go116magic:stdgo.GoUInt64 = ((4294967290i64 : stdgo.GoUInt64))
```


```haxe
final _go118magic:stdgo.GoUInt64 = ((4294967280i64 : stdgo.GoUInt64))
```


```haxe
final _go120magic:stdgo.GoUInt64 = ((4294967281i64 : stdgo.GoUInt64))
```


```haxe
final _go12magic:stdgo.GoUInt64 = ((4294967291i64 : stdgo.GoUInt64))
```


```haxe
final _oldQuantum:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _ver11:stdgo._internal.debug.gosym.T_version = ((5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))
```


```haxe
final _ver116:stdgo._internal.debug.gosym.T_version = ((5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))
```


```haxe
final _ver118:stdgo._internal.debug.gosym.T_version = ((5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))
```


```haxe
final _ver12:stdgo._internal.debug.gosym.T_version = ((5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))
```


```haxe
final _ver120:stdgo._internal.debug.gosym.T_version = ((5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))
```


```haxe
final _verUnknown:stdgo._internal.debug.gosym.T_version = ((5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))
```


# Variables


```haxe
import stdgo._internal.debug.gosym.Gosym_newTable
```


```haxe
var _bigEndianSymtab:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _littleEndianSymtab:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _oldLittleEndianSymtab:stdgo.Slice<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.debug.gosym.Gosym_newTable
```


## function \_walksymtab


```haxe
function _walksymtab(_data:stdgo.Slice<stdgo.GoUInt8>, _fn:()):stdgo.Error
```


[\(view code\)](<./Gosym_newTable.hx#L2>)


## function newLineTable


```haxe
function newLineTable(_data:stdgo.Slice<stdgo.GoUInt8>, _text:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.LineTable>
```


[\(view code\)](<./Gosym_newTable.hx#L2>)


## function newTable


```haxe
function newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _pcln:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.gosym.Table>;
}
```


[\(view code\)](<./Gosym_newTable.hx#L2>)


# Classes


```haxe
import stdgo._internal.debug.gosym.*
```


## class DecodingError


```haxe
var _msg:stdgo.GoString
```


```haxe
var _off:stdgo.GoInt
```


```haxe
var _val:stdgo.AnyInterface
```


### DecodingError function new


```haxe
function new(?_off:stdgo.GoInt, ?_msg:stdgo.GoString, ?_val:stdgo.AnyInterface):Void
```


[\(view code\)](<./Gosym_DecodingError.hx#L6>)


## class Func


```haxe
var end:stdgo.GoUInt64
```


```haxe
var entry:stdgo.GoUInt64
```


```haxe
var frameSize:stdgo.GoInt
```


```haxe
var lineTable:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>
```


```haxe
var locals:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Sym>>
```


```haxe
var obj:stdgo.Ref<stdgo._internal.debug.gosym.Obj>
```


```haxe
var params:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Sym>>
```


```haxe
var sym:stdgo.Ref<stdgo._internal.debug.gosym.Sym>
```


### Func function \_nameWithoutInst


```haxe
function _nameWithoutInst():stdgo.GoString
```


[\(view code\)](<./Gosym_Func.hx#L32>)


### Func function baseName


```haxe
function baseName():stdgo.GoString
```


[\(view code\)](<./Gosym_Func.hx#L24>)


### Func function new


```haxe
function new(?entry:stdgo.GoUInt64, ?sym:stdgo.Ref<stdgo._internal.debug.gosym.Sym>, ?end:stdgo.GoUInt64, ?params:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Sym>>, ?locals:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Sym>>, ?frameSize:stdgo.GoInt, ?lineTable:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>, ?obj:stdgo.Ref<stdgo._internal.debug.gosym.Obj>):Void
```


[\(view code\)](<./Gosym_Func.hx#L12>)


### Func function packageName


```haxe
function packageName():stdgo.GoString
```


[\(view code\)](<./Gosym_Func.hx#L26>)


### Func function receiverName


```haxe
function receiverName():stdgo.GoString
```


[\(view code\)](<./Gosym_Func.hx#L28>)


### Func function static\_


```haxe
function static_():Bool
```


[\(view code\)](<./Gosym_Func.hx#L30>)


## class LineTable


```haxe
var _binary:stdgo._internal.encoding.binary.ByteOrder
```


```haxe
var _cutab:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _fileMap:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>
```


```haxe
var _filetab:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _funcNames:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>
```


```haxe
var _funcdata:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _funcnametab:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _functab:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _mu:stdgo._internal.sync.Mutex
```


```haxe
var _nfiletab:stdgo.GoUInt32
```


```haxe
var _nfunctab:stdgo.GoUInt32
```


```haxe
var _pctab:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _ptrsize:stdgo.GoUInt32
```


```haxe
var _quantum:stdgo.GoUInt32
```


```haxe
var _strings:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>
```


```haxe
var _textStart:stdgo.GoUInt64
```


```haxe
var _version:stdgo._internal.debug.gosym.T_version
```


```haxe
var data:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var line:stdgo.GoInt
```


```haxe
var pc:stdgo.GoUInt64
```


### LineTable function new


```haxe
function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?pc:stdgo.GoUInt64, ?line:stdgo.GoInt, ?_mu:stdgo._internal.sync.Mutex, ?_version:stdgo._internal.debug.gosym.T_version, ?_binary:stdgo._internal.encoding.binary.ByteOrder, ?_quantum:stdgo.GoUInt32, ?_ptrsize:stdgo.GoUInt32, ?_textStart:stdgo.GoUInt64, ?_funcnametab:stdgo.Slice<stdgo.GoUInt8>, ?_cutab:stdgo.Slice<stdgo.GoUInt8>, ?_funcdata:stdgo.Slice<stdgo.GoUInt8>, ?_functab:stdgo.Slice<stdgo.GoUInt8>, ?_nfunctab:stdgo.GoUInt32, ?_filetab:stdgo.Slice<stdgo.GoUInt8>, ?_pctab:stdgo.Slice<stdgo.GoUInt8>, ?_nfiletab:stdgo.GoUInt32, ?_funcNames:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_strings:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_fileMap:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>):Void
```


[\(view code\)](<./Gosym_LineTable.hx#L23>)


## class Obj


```haxe
var funcs:stdgo.Slice<stdgo._internal.debug.gosym.Func>
```


```haxe
var paths:stdgo.Slice<stdgo._internal.debug.gosym.Sym>
```


### Obj function new


```haxe
function new(?funcs:stdgo.Slice<stdgo._internal.debug.gosym.Func>, ?paths:stdgo.Slice<stdgo._internal.debug.gosym.Sym>):Void
```


[\(view code\)](<./Gosym_Obj.hx#L5>)


## class Sym


```haxe
var _goVersion:stdgo._internal.debug.gosym.T_version
```


```haxe
var func:stdgo.Ref<stdgo._internal.debug.gosym.Func>
```


```haxe
var goType:stdgo.GoUInt64
```


```haxe
var name:stdgo.GoString
```


```haxe
var type:stdgo.GoUInt8
```


```haxe
var value:stdgo.GoUInt64
```


### Sym function new


```haxe
function new(?value:stdgo.GoUInt64, ?type:stdgo.GoUInt8, ?name:stdgo.GoString, ?goType:stdgo.GoUInt64, ?func:stdgo.Ref<stdgo._internal.debug.gosym.Func>, ?_goVersion:stdgo._internal.debug.gosym.T_version):Void
```


[\(view code\)](<./Gosym_Sym.hx#L9>)


## class T\_\_lineFromAline\_\_\_localname\_\_\_stackEnt\_16022


```haxe
var _offset:stdgo.GoInt
```


```haxe
var _path:stdgo.GoString
```


```haxe
var _prev:stdgo.Ref<stdgo._internal.debug.gosym.T__lineFromAline___localname___stackEnt_16022>
```


```haxe
var _start:stdgo.GoInt
```


### T\_\_lineFromAline\_\_\_localname\_\_\_stackEnt\_16022 function new


```haxe
function new(?_path:stdgo.GoString, ?_start:stdgo.GoInt, ?_offset:stdgo.GoInt, ?_prev:stdgo.Ref<stdgo._internal.debug.gosym.T__lineFromAline___localname___stackEnt_16022>):Void
```


[\(view code\)](<./Gosym_T__lineFromAline___localname___stackEnt_16022.hx#L7>)


## class T\_funcData


```haxe
var _data:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _t:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>
```


### T\_funcData function new


```haxe
function new(?_t:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>, ?_data:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Gosym_T_funcData.hx#L5>)


## class T\_funcTab


```haxe
var _sz:stdgo.GoInt
```


```haxe
var lineTable:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>
```


### T\_funcTab function \_findFileLine


```haxe
function _findFileLine(_entry:stdgo.GoUInt64, _filetab:stdgo.GoUInt32, _linetab:stdgo.GoUInt32, _filenum:stdgo.GoInt32, _line:stdgo.GoInt32, _cutab:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Gosym_T_funcTab.hx#L16>)


### T\_funcTab function \_findFunc


```haxe
function _findFunc(__0:stdgo.GoUInt64):stdgo._internal.debug.gosym.T_funcData
```


[\(view code\)](<./Gosym_T_funcTab.hx#L18>)


### T\_funcTab function \_funcData


```haxe
function _funcData(__0:stdgo.GoUInt32):stdgo._internal.debug.gosym.T_funcData
```


[\(view code\)](<./Gosym_T_funcTab.hx#L20>)


### T\_funcTab function \_funcName


```haxe
function _funcName(__0:stdgo.GoUInt32):stdgo.GoString
```


[\(view code\)](<./Gosym_T_funcTab.hx#L22>)


### T\_funcTab function \_funcTab


```haxe
function _funcTab():stdgo._internal.debug.gosym.T_funcTab
```


[\(view code\)](<./Gosym_T_funcTab.hx#L24>)


### T\_funcTab function \_functabFieldSize


```haxe
function _functabFieldSize():stdgo.GoInt
```


[\(view code\)](<./Gosym_T_funcTab.hx#L26>)


### T\_funcTab function \_go12Funcs


```haxe
function _go12Funcs():stdgo.Slice<stdgo._internal.debug.gosym.Func>
```


[\(view code\)](<./Gosym_T_funcTab.hx#L28>)


### T\_funcTab function \_go12LineToPC


```haxe
function _go12LineToPC(_path:stdgo.GoString, _line:stdgo.GoInt):stdgo.GoUInt64
```


[\(view code\)](<./Gosym_T_funcTab.hx#L30>)


### T\_funcTab function \_go12MapFiles


```haxe
function _go12MapFiles(_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Obj>>, _obj:stdgo.Ref<stdgo._internal.debug.gosym.Obj>):Void
```


[\(view code\)](<./Gosym_T_funcTab.hx#L32>)


### T\_funcTab function \_go12PCToFile


```haxe
function _go12PCToFile(__0:stdgo.GoUInt64):stdgo.GoString
```


[\(view code\)](<./Gosym_T_funcTab.hx#L34>)


### T\_funcTab function \_go12PCToLine


```haxe
function _go12PCToLine(__0:stdgo.GoUInt64):stdgo.GoInt
```


[\(view code\)](<./Gosym_T_funcTab.hx#L36>)


### T\_funcTab function \_initFileMap


```haxe
function _initFileMap():Void
```


[\(view code\)](<./Gosym_T_funcTab.hx#L38>)


### T\_funcTab function \_isGo12


```haxe
function _isGo12():Bool
```


[\(view code\)](<./Gosym_T_funcTab.hx#L40>)


### T\_funcTab function \_parse


```haxe
function _parse(_targetPC:stdgo.GoUInt64, _targetLine:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:stdgo.GoUInt64;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Gosym_T_funcTab.hx#L42>)


### T\_funcTab function \_parsePclnTab


```haxe
function _parsePclnTab():Void
```


[\(view code\)](<./Gosym_T_funcTab.hx#L44>)


### T\_funcTab function \_pcvalue


```haxe
function _pcvalue(_off:stdgo.GoUInt32, _entry:stdgo.GoUInt64, _targetpc:stdgo.GoUInt64):stdgo.GoInt32
```


[\(view code\)](<./Gosym_T_funcTab.hx#L46>)


### T\_funcTab function \_readvarint


```haxe
function _readvarint(_pp:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32
```


[\(view code\)](<./Gosym_T_funcTab.hx#L48>)


### T\_funcTab function \_slice


```haxe
function _slice(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.LineTable>
```


[\(view code\)](<./Gosym_T_funcTab.hx#L50>)


### T\_funcTab function \_step


```haxe
function _step(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _pc:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.Pointer<stdgo.GoInt32>, _first:Bool):Bool
```


[\(view code\)](<./Gosym_T_funcTab.hx#L52>)


### T\_funcTab function \_string


```haxe
function _string(__0:stdgo.GoUInt32):stdgo.GoString
```


[\(view code\)](<./Gosym_T_funcTab.hx#L54>)


### T\_funcTab function \_stringFrom


```haxe
function _stringFrom(_arr:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoUInt32):stdgo.GoString
```


[\(view code\)](<./Gosym_T_funcTab.hx#L56>)


### T\_funcTab function \_uintptr


```haxe
function _uintptr(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Gosym_T_funcTab.hx#L58>)


### T\_funcTab function lineToPC


```haxe
function lineToPC(_line:stdgo.GoInt, _maxpc:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Gosym_T_funcTab.hx#L12>)


### T\_funcTab function new


```haxe
function new(?lineTable:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>, ?_sz:stdgo.GoInt):Void
```


[\(view code\)](<./Gosym_T_funcTab.hx#L6>)


### T\_funcTab function pctoLine


```haxe
function pctoLine(__0:stdgo.GoUInt64):stdgo.GoInt
```


[\(view code\)](<./Gosym_T_funcTab.hx#L14>)


## class T\_sym


```haxe
var _gotype:stdgo.GoUInt64
```


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
function new(?_value:stdgo.GoUInt64, ?_gotype:stdgo.GoUInt64, ?_typ:stdgo.GoUInt8, ?_name:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Gosym_T_sym.hx#L7>)


## class Table


```haxe
var _go12line:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>
```


```haxe
var files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Obj>>
```


```haxe
var funcs:stdgo.Slice<stdgo._internal.debug.gosym.Func>
```


```haxe
var objs:stdgo.Slice<stdgo._internal.debug.gosym.Obj>
```


```haxe
var syms:stdgo.Slice<stdgo._internal.debug.gosym.Sym>
```


### Table function new


```haxe
function new(?syms:stdgo.Slice<stdgo._internal.debug.gosym.Sym>, ?funcs:stdgo.Slice<stdgo._internal.debug.gosym.Func>, ?files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Obj>>, ?objs:stdgo.Slice<stdgo._internal.debug.gosym.Obj>, ?_go12line:stdgo.Ref<stdgo._internal.debug.gosym.LineTable>):Void
```


[\(view code\)](<./Gosym_Table.hx#L8>)


## class UnknownLineError


```haxe
var file:stdgo.GoString
```


```haxe
var line:stdgo.GoInt
```


### UnknownLineError function new


```haxe
function new(?file:stdgo.GoString, ?line:stdgo.GoInt):Void
```


[\(view code\)](<./Gosym_UnknownLineError.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.debug.gosym.*
```


## typedef T\_version


```haxe
typedef T_version = stdgo.GoInt;
```


## typedef UnknownFileError


```haxe
typedef UnknownFileError = stdgo.GoString;
```


