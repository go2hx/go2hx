# Module: `stdgo._internal.index.suffixarray`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _assignID_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt`](<#function-_assignid_32>)

- [`function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt`](<#function-_assignid_64>)

- [`function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt`](<#function-_assignid_8_32>)

- [`function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt`](<#function-_assignid_8_64>)

- [`function _bucketMax_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_bucketmax_32>)

- [`function _bucketMax_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_bucketmax_64>)

- [`function _bucketMax_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_bucketmax_8_32>)

- [`function _bucketMax_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_bucketmax_8_64>)

- [`function _bucketMin_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_bucketmin_32>)

- [`function _bucketMin_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_bucketmin_64>)

- [`function _bucketMin_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_bucketmin_8_32>)

- [`function _bucketMin_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_bucketmin_8_64>)

- [`function _expand_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void`](<#function-_expand_32>)

- [`function _expand_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void`](<#function-_expand_64>)

- [`function _expand_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void`](<#function-_expand_8_32>)

- [`function _expand_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void`](<#function-_expand_8_64>)

- [`function _freq_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32>`](<#function-_freq_32>)

- [`function _freq_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.Slice<stdgo.GoInt64>`](<#function-_freq_64>)

- [`function _freq_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32>`](<#function-_freq_8_32>)

- [`function _freq_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.Slice<stdgo.GoInt64>`](<#function-_freq_8_64>)

- [`function _induceL_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_inducel_32>)

- [`function _induceL_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_inducel_64>)

- [`function _induceL_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_inducel_8_32>)

- [`function _induceL_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_inducel_8_64>)

- [`function _induceS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_induces_32>)

- [`function _induceS_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_induces_64>)

- [`function _induceS_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_induces_8_32>)

- [`function _induceS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_induces_8_64>)

- [`function _induceSubL_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_inducesubl_32>)

- [`function _induceSubL_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_inducesubl_64>)

- [`function _induceSubL_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_inducesubl_8_32>)

- [`function _induceSubL_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_inducesubl_8_64>)

- [`function _induceSubS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_inducesubs_32>)

- [`function _induceSubS_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_inducesubs_64>)

- [`function _induceSubS_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_inducesubs_8_32>)

- [`function _induceSubS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_inducesubs_8_64>)

- [`function _length_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void`](<#function-_length_32>)

- [`function _length_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void`](<#function-_length_64>)

- [`function _length_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void`](<#function-_length_8_32>)

- [`function _length_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void`](<#function-_length_8_64>)

- [`function _map_32(_sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void`](<#function-_map_32>)

- [`function _map_64(_sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void`](<#function-_map_64>)

- [`function _placeLMS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt`](<#function-_placelms_32>)

- [`function _placeLMS_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt`](<#function-_placelms_64>)

- [`function _placeLMS_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt`](<#function-_placelms_8_32>)

- [`function _placeLMS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt`](<#function-_placelms_8_64>)

- [`function _readInt(_r:stdgo._internal.io.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}`](<#function-_readint>)

- [`function _readSlice(_r:stdgo._internal.io.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo._internal.index.suffixarray.T_ints):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-_readslice>)

- [`function _recurse_32(_sa:stdgo.Slice<stdgo.GoInt32>, _oldTmp:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt, _maxID:stdgo.GoInt):Void`](<#function-_recurse_32>)

- [`function _recurse_64(_sa:stdgo.Slice<stdgo.GoInt64>, _oldTmp:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt, _maxID:stdgo.GoInt):Void`](<#function-_recurse_64>)

- [`function _sais_32(_text:stdgo.Slice<stdgo.GoInt32>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt32>, _tmp:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_sais_32>)

- [`function _sais_64(_text:stdgo.Slice<stdgo.GoInt64>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt64>, _tmp:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_sais_64>)

- [`function _sais_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt32>, _tmp:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_sais_8_32>)

- [`function _sais_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt64>, _tmp:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_sais_8_64>)

- [`function _text_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_text_32>)

- [`function _text_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>):Void`](<#function-_text_64>)

- [`function _unmap_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void`](<#function-_unmap_32>)

- [`function _unmap_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void`](<#function-_unmap_64>)

- [`function _unmap_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void`](<#function-_unmap_8_32>)

- [`function _unmap_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void`](<#function-_unmap_8_64>)

- [`function _writeInt(_w:stdgo._internal.io.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt):stdgo.Error`](<#function-_writeint>)

- [`function _writeSlice(_w:stdgo._internal.io.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo._internal.index.suffixarray.T_ints):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-_writeslice>)

- [`function new_(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.index.suffixarray.Index>`](<#function-new_>)

- [class Index](<#class-index>)

  - [`function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_sa:stdgo._internal.index.suffixarray.T_ints):Void`](<#index-function-new>)

- [class T\_ints](<#class-t_ints>)

  - [`function new(?_int32:stdgo.Slice<stdgo.GoInt32>, ?_int64:stdgo.Slice<stdgo.GoInt64>):Void`](<#t_ints-function-new>)

# Constants


```haxe
import stdgo._internal.index.suffixarray.Suffixarray_new_
```


```haxe
final _bufSize:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```


```haxe
final _realMaxData32:stdgo.GoUInt64 = ((2147483647i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.index.suffixarray.Suffixarray_new_
```


```haxe
var _maxData32:stdgo.GoInt
```


```haxe
var _errTooBig:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.index.suffixarray.Suffixarray_new_
```


## function \_assignID\_32


```haxe
function _assignID_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_assignID\_64


```haxe
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_assignID\_8\_32


```haxe
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_assignID\_8\_64


```haxe
function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_bucketMax\_32


```haxe
function _bucketMax_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_bucketMax\_64


```haxe
function _bucketMax_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_bucketMax\_8\_32


```haxe
function _bucketMax_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_bucketMax\_8\_64


```haxe
function _bucketMax_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_bucketMin\_32


```haxe
function _bucketMin_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_bucketMin\_64


```haxe
function _bucketMin_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_bucketMin\_8\_32


```haxe
function _bucketMin_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_bucketMin\_8\_64


```haxe
function _bucketMin_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_expand\_32


```haxe
function _expand_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_expand\_64


```haxe
function _expand_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_expand\_8\_32


```haxe
function _expand_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_expand\_8\_64


```haxe
function _expand_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_freq\_32


```haxe
function _freq_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32>
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_freq\_64


```haxe
function _freq_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.Slice<stdgo.GoInt64>
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_freq\_8\_32


```haxe
function _freq_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32>
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_freq\_8\_64


```haxe
function _freq_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.Slice<stdgo.GoInt64>
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceL\_32


```haxe
function _induceL_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceL\_64


```haxe
function _induceL_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceL\_8\_32


```haxe
function _induceL_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceL\_8\_64


```haxe
function _induceL_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceS\_32


```haxe
function _induceS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceS\_64


```haxe
function _induceS_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceS\_8\_32


```haxe
function _induceS_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceS\_8\_64


```haxe
function _induceS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceSubL\_32


```haxe
function _induceSubL_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceSubL\_64


```haxe
function _induceSubL_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceSubL\_8\_32


```haxe
function _induceSubL_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceSubL\_8\_64


```haxe
function _induceSubL_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceSubS\_32


```haxe
function _induceSubS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceSubS\_64


```haxe
function _induceSubS_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceSubS\_8\_32


```haxe
function _induceSubS_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_induceSubS\_8\_64


```haxe
function _induceSubS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_length\_32


```haxe
function _length_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_length\_64


```haxe
function _length_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_length\_8\_32


```haxe
function _length_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_length\_8\_64


```haxe
function _length_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_map\_32


```haxe
function _map_32(_sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_map\_64


```haxe
function _map_64(_sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_placeLMS\_32


```haxe
function _placeLMS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_placeLMS\_64


```haxe
function _placeLMS_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_placeLMS\_8\_32


```haxe
function _placeLMS_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_placeLMS\_8\_64


```haxe
function _placeLMS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_readInt


```haxe
function _readInt(_r:stdgo._internal.io.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_readSlice


```haxe
function _readSlice(_r:stdgo._internal.io.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo._internal.index.suffixarray.T_ints):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_recurse\_32


```haxe
function _recurse_32(_sa:stdgo.Slice<stdgo.GoInt32>, _oldTmp:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt, _maxID:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_recurse\_64


```haxe
function _recurse_64(_sa:stdgo.Slice<stdgo.GoInt64>, _oldTmp:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt, _maxID:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_sais\_32


```haxe
function _sais_32(_text:stdgo.Slice<stdgo.GoInt32>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt32>, _tmp:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_sais\_64


```haxe
function _sais_64(_text:stdgo.Slice<stdgo.GoInt64>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt64>, _tmp:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_sais\_8\_32


```haxe
function _sais_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt32>, _tmp:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_sais\_8\_64


```haxe
function _sais_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt64>, _tmp:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_text\_32


```haxe
function _text_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_text\_64


```haxe
function _text_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_unmap\_32


```haxe
function _unmap_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_unmap\_64


```haxe
function _unmap_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_unmap\_8\_32


```haxe
function _unmap_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_unmap\_8\_64


```haxe
function _unmap_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_writeInt


```haxe
function _writeInt(_w:stdgo._internal.io.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function \_writeSlice


```haxe
function _writeSlice(_w:stdgo._internal.io.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo._internal.index.suffixarray.T_ints):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


## function new\_


```haxe
function new_(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.index.suffixarray.Index>
```


[\(view code\)](<./Suffixarray_new_.hx#L2>)


# Classes


```haxe
import stdgo._internal.index.suffixarray.*
```


## class Index


```haxe
var _data:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _sa:stdgo._internal.index.suffixarray.T_ints
```


### Index function new


```haxe
function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_sa:stdgo._internal.index.suffixarray.T_ints):Void
```


[\(view code\)](<./Suffixarray_Index.hx#L5>)


## class T\_ints


```haxe
var _int32:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _int64:stdgo.Slice<stdgo.GoInt64>
```


### T\_ints function new


```haxe
function new(?_int32:stdgo.Slice<stdgo.GoInt32>, ?_int64:stdgo.Slice<stdgo.GoInt64>):Void
```


[\(view code\)](<./Suffixarray_T_ints.hx#L5>)


