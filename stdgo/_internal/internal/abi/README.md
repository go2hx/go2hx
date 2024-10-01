# Module: `stdgo._internal.internal.abi`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _addChecked(_p:stdgo._internal.unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo._internal.unsafe.UnsafePointer`](<#function-_addchecked>)

- [`function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void`](<#function-_assertisapoweroftwo>)

- [`function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>`](<#function-_unsafeslicefor>)

- [`function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.GoString`](<#function-_unsafestringfor>)

- [`function _writeVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.GoInt`](<#function-_writevarint>)

- [`function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset`](<#function-commonoffset>)

- [`function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-commonsize>)

- [`function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-funcpcabi0>)

- [`function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-funcpcabiinternal>)

- [`function funcPCTest():stdgo.GoUIntptr`](<#function-funcpctest>)

- [`function funcPCTestFn():Void`](<#function-funcpctestfn>)

- [`function imethodSize(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-imethodsize>)

- [`function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset`](<#function-initializedoffset>)

- [`function kindOff(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-kindoff>)

- [`function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):stdgo._internal.internal.abi.Name`](<#function-newname>)

- [`function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset`](<#function-newoffset>)

- [`function ptrBytesOff(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-ptrbytesoff>)

- [`function sizeOff(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-sizeoff>)

- [`function structFieldSize(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-structfieldsize>)

- [`function tflagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-tflagoff>)

- [`function uncommonSize():stdgo.GoUInt64`](<#function-uncommonsize>)

- [class ArrayType](<#class-arraytype>)

  - [`function align():stdgo.GoInt`](<#arraytype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#arraytype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#arraytype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#arraytype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#arraytype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#arraytype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#arraytype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#arraytype-function-gcslice>)

  - [`function hasName():Bool`](<#arraytype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#arraytype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#arraytype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#arraytype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#arraytype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#arraytype-function-kind>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#arraytype-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?slice:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?len:stdgo.GoUIntptr):Void`](<#arraytype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#arraytype-function-nummethod>)

  - [`function pointers():Bool`](<#arraytype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#arraytype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#arraytype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#arraytype-function-uncommon>)

- [class ChanType](<#class-chantype>)

  - [`function align():stdgo.GoInt`](<#chantype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#chantype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#chantype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#chantype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#chantype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#chantype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#chantype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#chantype-function-gcslice>)

  - [`function hasName():Bool`](<#chantype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#chantype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#chantype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#chantype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#chantype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#chantype-function-kind>)

  - [`function len():stdgo.GoInt`](<#chantype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#chantype-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?dir:stdgo._internal.internal.abi.ChanDir):Void`](<#chantype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#chantype-function-nummethod>)

  - [`function pointers():Bool`](<#chantype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#chantype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#chantype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#chantype-function-uncommon>)

- [class FuncType](<#class-functype>)

  - [`function align():stdgo.GoInt`](<#functype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#functype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#functype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#functype-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#functype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#functype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#functype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#functype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#functype-function-gcslice>)

  - [`function hasName():Bool`](<#functype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#functype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#functype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#functype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#functype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#functype-function-kind>)

  - [`function len():stdgo.GoInt`](<#functype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#functype-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?inCount:stdgo.GoUInt16, ?outCount:stdgo.GoUInt16):Void`](<#functype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#functype-function-nummethod>)

  - [`function pointers():Bool`](<#functype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#functype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#functype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#functype-function-uncommon>)

- [class Imethod](<#class-imethod>)

  - [`function new(?name:stdgo._internal.internal.abi.NameOff, ?typ:stdgo._internal.internal.abi.TypeOff):Void`](<#imethod-function-new>)

- [class InterfaceType](<#class-interfacetype>)

  - [`function align():stdgo.GoInt`](<#interfacetype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#interfacetype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#interfacetype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#interfacetype-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#interfacetype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#interfacetype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#interfacetype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#interfacetype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#interfacetype-function-gcslice>)

  - [`function hasName():Bool`](<#interfacetype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#interfacetype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#interfacetype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#interfacetype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#interfacetype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#interfacetype-function-kind>)

  - [`function len():stdgo.GoInt`](<#interfacetype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#interfacetype-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Name, ?methods:stdgo.Slice<stdgo._internal.internal.abi.Imethod>):Void`](<#interfacetype-function-new>)

  - [`function pointers():Bool`](<#interfacetype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#interfacetype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#interfacetype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#interfacetype-function-uncommon>)

- [class MapType](<#class-maptype>)

  - [`function align():stdgo.GoInt`](<#maptype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#maptype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#maptype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#maptype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#maptype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#maptype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#maptype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#maptype-function-gcslice>)

  - [`function hasName():Bool`](<#maptype-function-hasname>)

  - [`function hasher(:stdgo._internal.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr`](<#maptype-function-hasher>)

  - [`function ifaceIndir():Bool`](<#maptype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#maptype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#maptype-function-isdirectiface>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#maptype-function-kind>)

  - [`function len():stdgo.GoInt`](<#maptype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#maptype-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?key:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?bucket:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?hasher:(:stdgo._internal.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr, ?keySize:stdgo.GoUInt8, ?valueSize:stdgo.GoUInt8, ?bucketSize:stdgo.GoUInt16, ?flags:stdgo.GoUInt32):Void`](<#maptype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#maptype-function-nummethod>)

  - [`function pointers():Bool`](<#maptype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#maptype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#maptype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#maptype-function-uncommon>)

- [class Method](<#class-method>)

  - [`function new(?name:stdgo._internal.internal.abi.NameOff, ?mtyp:stdgo._internal.internal.abi.TypeOff, ?ifn:stdgo._internal.internal.abi.TextOff, ?tfn:stdgo._internal.internal.abi.TextOff):Void`](<#method-function-new>)

- [class Name](<#class-name>)

  - [`function new(?bytes:stdgo.Pointer<stdgo.GoUInt8>):Void`](<#name-function-new>)

- [class Offset](<#class-offset>)

  - [`function new(?_off:stdgo.GoUInt64, ?_align:stdgo.GoUInt8, ?_ptrSize:stdgo.GoUInt8, ?_sliceAlign:stdgo.GoUInt8):Void`](<#offset-function-new>)

- [class PtrType](<#class-ptrtype>)

  - [`function align():stdgo.GoInt`](<#ptrtype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#ptrtype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#ptrtype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#ptrtype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#ptrtype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#ptrtype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#ptrtype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#ptrtype-function-gcslice>)

  - [`function hasName():Bool`](<#ptrtype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#ptrtype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#ptrtype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#ptrtype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#ptrtype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#ptrtype-function-kind>)

  - [`function len():stdgo.GoInt`](<#ptrtype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#ptrtype-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>):Void`](<#ptrtype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#ptrtype-function-nummethod>)

  - [`function pointers():Bool`](<#ptrtype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#ptrtype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#ptrtype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#ptrtype-function-uncommon>)

- [class RegArgs](<#class-regargs>)

  - [`function new(?ints:stdgo.GoArray<stdgo.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo._internal.unsafe.UnsafePointer>, ?returnIsPtr:stdgo._internal.internal.abi.IntArgRegBitmap):Void`](<#regargs-function-new>)

- [class SliceType](<#class-slicetype>)

  - [`function align():stdgo.GoInt`](<#slicetype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#slicetype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#slicetype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#slicetype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#slicetype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#slicetype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#slicetype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#slicetype-function-gcslice>)

  - [`function hasName():Bool`](<#slicetype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#slicetype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#slicetype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#slicetype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#slicetype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#slicetype-function-kind>)

  - [`function len():stdgo.GoInt`](<#slicetype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#slicetype-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>):Void`](<#slicetype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#slicetype-function-nummethod>)

  - [`function pointers():Bool`](<#slicetype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#slicetype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#slicetype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#slicetype-function-uncommon>)

- [class StructField](<#class-structfield>)

  - [`function new(?name:stdgo._internal.internal.abi.Name, ?typ:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?offset:stdgo.GoUIntptr):Void`](<#structfield-function-new>)

- [class StructType](<#class-structtype>)

  - [`function align():stdgo.GoInt`](<#structtype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#structtype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#structtype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#structtype-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#structtype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#structtype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#structtype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#structtype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#structtype-function-gcslice>)

  - [`function hasName():Bool`](<#structtype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#structtype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#structtype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#structtype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#structtype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#structtype-function-kind>)

  - [`function len():stdgo.GoInt`](<#structtype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#structtype-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Name, ?fields:stdgo.Slice<stdgo._internal.internal.abi.StructField>):Void`](<#structtype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#structtype-function-nummethod>)

  - [`function pointers():Bool`](<#structtype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#structtype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#structtype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#structtype-function-uncommon>)

- [class T\_structTypeUncommon](<#class-t_structtypeuncommon>)

  - [`function align():stdgo.GoInt`](<#t_structtypeuncommon-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#t_structtypeuncommon-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_structtypeuncommon-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_structtypeuncommon-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_structtypeuncommon-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_structtypeuncommon-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_structtypeuncommon-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#t_structtypeuncommon-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_structtypeuncommon-function-gcslice>)

  - [`function hasName():Bool`](<#t_structtypeuncommon-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_structtypeuncommon-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#t_structtypeuncommon-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_structtypeuncommon-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_structtypeuncommon-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_structtypeuncommon-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_structtypeuncommon-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#t_structtypeuncommon-function-maptype>)

  - [`function new(?structType:stdgo._internal.internal.abi.StructType, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_structtypeuncommon-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_structtypeuncommon-function-nummethod>)

  - [`function pointers():Bool`](<#t_structtypeuncommon-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_structtypeuncommon-function-size>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_structtypeuncommon-function-uncommon>)

- [class T\_uncommon\_\_\_localname\_\_\_u\_8324](<#class-t_uncommonlocalnameu_8324>)

  - [`function align():stdgo.GoInt`](<#t_uncommonlocalnameu_8324-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#t_uncommonlocalnameu_8324-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_uncommonlocalnameu_8324-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8324-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_uncommonlocalnameu_8324-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommonlocalnameu_8324-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#t_uncommonlocalnameu_8324-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommonlocalnameu_8324-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommonlocalnameu_8324-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommonlocalnameu_8324-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#t_uncommonlocalnameu_8324-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommonlocalnameu_8324-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8324-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_uncommonlocalnameu_8324-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommonlocalnameu_8324-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#t_uncommonlocalnameu_8324-function-maptype>)

  - [`function new(?ptrType:stdgo._internal.internal.abi.PtrType, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_uncommonlocalnameu_8324-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommonlocalnameu_8324-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommonlocalnameu_8324-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommonlocalnameu_8324-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#t_uncommonlocalnameu_8324-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_uncommonlocalnameu_8324-function-uncommon>)

- [class T\_uncommon\_\_\_localname\_\_\_u\_8423](<#class-t_uncommonlocalnameu_8423>)

  - [`function align():stdgo.GoInt`](<#t_uncommonlocalnameu_8423-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#t_uncommonlocalnameu_8423-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_uncommonlocalnameu_8423-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8423-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8423-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_uncommonlocalnameu_8423-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommonlocalnameu_8423-function-fieldalign>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommonlocalnameu_8423-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommonlocalnameu_8423-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommonlocalnameu_8423-function-ifaceindir>)

  - [`function inSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>`](<#t_uncommonlocalnameu_8423-function-inslice>)

  - [`function in_(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu8423-function-in>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#t_uncommonlocalnameu_8423-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommonlocalnameu_8423-function-isdirectiface>)

  - [`function isVariadic():Bool`](<#t_uncommonlocalnameu_8423-function-isvariadic>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8423-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_uncommonlocalnameu_8423-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommonlocalnameu_8423-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#t_uncommonlocalnameu_8423-function-maptype>)

  - [`function new(?funcType:stdgo._internal.internal.abi.FuncType, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_uncommonlocalnameu_8423-function-new>)

  - [`function numIn():stdgo.GoInt`](<#t_uncommonlocalnameu_8423-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommonlocalnameu_8423-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#t_uncommonlocalnameu_8423-function-numout>)

  - [`function out(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8423-function-out>)

  - [`function outSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>`](<#t_uncommonlocalnameu_8423-function-outslice>)

  - [`function pointers():Bool`](<#t_uncommonlocalnameu_8423-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommonlocalnameu_8423-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#t_uncommonlocalnameu_8423-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_uncommonlocalnameu_8423-function-uncommon>)

- [class T\_uncommon\_\_\_localname\_\_\_u\_8524](<#class-t_uncommonlocalnameu_8524>)

  - [`function align():stdgo.GoInt`](<#t_uncommonlocalnameu_8524-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#t_uncommonlocalnameu_8524-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_uncommonlocalnameu_8524-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8524-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_uncommonlocalnameu_8524-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommonlocalnameu_8524-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#t_uncommonlocalnameu_8524-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommonlocalnameu_8524-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommonlocalnameu_8524-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommonlocalnameu_8524-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#t_uncommonlocalnameu_8524-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommonlocalnameu_8524-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8524-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_uncommonlocalnameu_8524-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommonlocalnameu_8524-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#t_uncommonlocalnameu_8524-function-maptype>)

  - [`function new(?sliceType:stdgo._internal.internal.abi.SliceType, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_uncommonlocalnameu_8524-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommonlocalnameu_8524-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommonlocalnameu_8524-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommonlocalnameu_8524-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#t_uncommonlocalnameu_8524-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_uncommonlocalnameu_8524-function-uncommon>)

- [class T\_uncommon\_\_\_localname\_\_\_u\_8626](<#class-t_uncommonlocalnameu_8626>)

  - [`function align():stdgo.GoInt`](<#t_uncommonlocalnameu_8626-function-align>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_uncommonlocalnameu_8626-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8626-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_uncommonlocalnameu_8626-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommonlocalnameu_8626-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#t_uncommonlocalnameu_8626-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommonlocalnameu_8626-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommonlocalnameu_8626-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommonlocalnameu_8626-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#t_uncommonlocalnameu_8626-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommonlocalnameu_8626-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8626-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_uncommonlocalnameu_8626-function-kind>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#t_uncommonlocalnameu_8626-function-maptype>)

  - [`function new(?arrayType:stdgo._internal.internal.abi.ArrayType, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_uncommonlocalnameu_8626-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommonlocalnameu_8626-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommonlocalnameu_8626-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommonlocalnameu_8626-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#t_uncommonlocalnameu_8626-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_uncommonlocalnameu_8626-function-uncommon>)

- [class T\_uncommon\_\_\_localname\_\_\_u\_8727](<#class-t_uncommonlocalnameu_8727>)

  - [`function align():stdgo.GoInt`](<#t_uncommonlocalnameu_8727-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#t_uncommonlocalnameu_8727-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_uncommonlocalnameu_8727-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8727-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_uncommonlocalnameu_8727-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommonlocalnameu_8727-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#t_uncommonlocalnameu_8727-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommonlocalnameu_8727-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommonlocalnameu_8727-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommonlocalnameu_8727-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#t_uncommonlocalnameu_8727-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommonlocalnameu_8727-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8727-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_uncommonlocalnameu_8727-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommonlocalnameu_8727-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#t_uncommonlocalnameu_8727-function-maptype>)

  - [`function new(?chanType:stdgo._internal.internal.abi.ChanType, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_uncommonlocalnameu_8727-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommonlocalnameu_8727-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommonlocalnameu_8727-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommonlocalnameu_8727-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#t_uncommonlocalnameu_8727-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_uncommonlocalnameu_8727-function-uncommon>)

- [class T\_uncommon\_\_\_localname\_\_\_u\_8826](<#class-t_uncommonlocalnameu_8826>)

  - [`function align():stdgo.GoInt`](<#t_uncommonlocalnameu_8826-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#t_uncommonlocalnameu_8826-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_uncommonlocalnameu_8826-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8826-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_uncommonlocalnameu_8826-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommonlocalnameu_8826-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#t_uncommonlocalnameu_8826-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommonlocalnameu_8826-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommonlocalnameu_8826-function-hasname>)

  - [`function hashMightPanic():Bool`](<#t_uncommonlocalnameu_8826-function-hashmightpanic>)

  - [`function ifaceIndir():Bool`](<#t_uncommonlocalnameu_8826-function-ifaceindir>)

  - [`function indirectElem():Bool`](<#t_uncommonlocalnameu_8826-function-indirectelem>)

  - [`function indirectKey():Bool`](<#t_uncommonlocalnameu_8826-function-indirectkey>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#t_uncommonlocalnameu_8826-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommonlocalnameu_8826-function-isdirectiface>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_uncommonlocalnameu_8826-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommonlocalnameu_8826-function-len>)

  - [`function needKeyUpdate():Bool`](<#t_uncommonlocalnameu_8826-function-needkeyupdate>)

  - [`function new(?mapType:stdgo._internal.internal.abi.MapType, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_uncommonlocalnameu_8826-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommonlocalnameu_8826-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommonlocalnameu_8826-function-pointers>)

  - [`function reflexiveKey():Bool`](<#t_uncommonlocalnameu_8826-function-reflexivekey>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommonlocalnameu_8826-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#t_uncommonlocalnameu_8826-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_uncommonlocalnameu_8826-function-uncommon>)

- [class T\_uncommon\_\_\_localname\_\_\_u\_8930](<#class-t_uncommonlocalnameu_8930>)

  - [`function align():stdgo.GoInt`](<#t_uncommonlocalnameu_8930-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#t_uncommonlocalnameu_8930-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_uncommonlocalnameu_8930-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8930-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8930-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_uncommonlocalnameu_8930-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommonlocalnameu_8930-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#t_uncommonlocalnameu_8930-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommonlocalnameu_8930-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommonlocalnameu_8930-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommonlocalnameu_8930-function-ifaceindir>)

  - [`function isDirectIface():Bool`](<#t_uncommonlocalnameu_8930-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_8930-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_uncommonlocalnameu_8930-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommonlocalnameu_8930-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#t_uncommonlocalnameu_8930-function-maptype>)

  - [`function new(?interfaceType:stdgo._internal.internal.abi.InterfaceType, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_uncommonlocalnameu_8930-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommonlocalnameu_8930-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommonlocalnameu_8930-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommonlocalnameu_8930-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#t_uncommonlocalnameu_8930-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_uncommonlocalnameu_8930-function-uncommon>)

- [class T\_uncommon\_\_\_localname\_\_\_u\_9033](<#class-t_uncommonlocalnameu_9033>)

  - [`function align():stdgo.GoInt`](<#t_uncommonlocalnameu_9033-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#t_uncommonlocalnameu_9033-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#t_uncommonlocalnameu_9033-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_9033-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_9033-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#t_uncommonlocalnameu_9033-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommonlocalnameu_9033-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#t_uncommonlocalnameu_9033-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommonlocalnameu_9033-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommonlocalnameu_9033-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommonlocalnameu_9033-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#t_uncommonlocalnameu_9033-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommonlocalnameu_9033-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#t_uncommonlocalnameu_9033-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#t_uncommonlocalnameu_9033-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommonlocalnameu_9033-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#t_uncommonlocalnameu_9033-function-maptype>)

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?_u:stdgo._internal.internal.abi.UncommonType):Void`](<#t_uncommonlocalnameu_9033-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommonlocalnameu_9033-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommonlocalnameu_9033-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommonlocalnameu_9033-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#t_uncommonlocalnameu_9033-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#t_uncommonlocalnameu_9033-function-uncommon>)

- [class Type\_](<#class-type_>)

  - [`function equal(:stdgo._internal.unsafe.UnsafePointer, :stdgo._internal.unsafe.UnsafePointer):Bool`](<#type_-function-equal>)

  - [`function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:stdgo.GoUInt32, ?tflag:stdgo._internal.internal.abi.TFlag, ?align_:stdgo.GoUInt8, ?fieldAlign_:stdgo.GoUInt8, ?kind_:stdgo.GoUInt8, ?equal:(:stdgo._internal.unsafe.UnsafePointer, :stdgo._internal.unsafe.UnsafePointer):Bool, ?gcdata:stdgo.Pointer<stdgo.GoUInt8>, ?str:stdgo._internal.internal.abi.NameOff, ?ptrToThis:stdgo._internal.internal.abi.TypeOff):Void`](<#type_-function-new>)

- [class UncommonType](<#class-uncommontype>)

  - [`function new(?pkgPath:stdgo._internal.internal.abi.NameOff, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__1:stdgo.GoUInt32):Void`](<#uncommontype-function-new>)

- [typedef ChanDir](<#typedef-chandir>)

- [typedef FuncFlag](<#typedef-funcflag>)

- [typedef FuncID](<#typedef-funcid>)

- [typedef IntArgRegBitmap](<#typedef-intargregbitmap>)

- [typedef Kind](<#typedef-kind>)

- [typedef NameOff](<#typedef-nameoff>)

- [typedef TFlag](<#typedef-tflag>)

- [typedef TextOff](<#typedef-textoff>)

- [typedef TypeOff](<#typedef-typeoff>)

# Constants


```haxe
import stdgo._internal.internal.abi.Abi_unsafePointer
```


```haxe
final argsSizeUnknown:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final array:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final bool_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final bothDir:stdgo._internal.internal.abi.ChanDir = ((3 : stdgo._internal.internal.abi.Abi_ChanDir.ChanDir))
```


```haxe
final chan:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final complex128:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final complex64:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final effectiveFloatRegSize:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final float32:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final float64:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final floatArgRegs:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final func:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final funcFlagAsm:stdgo._internal.internal.abi.FuncFlag = ((4 : stdgo._internal.internal.abi.Abi_FuncFlag.FuncFlag))
```


```haxe
final funcFlagSPWrite:stdgo._internal.internal.abi.FuncFlag = ((4 : stdgo._internal.internal.abi.Abi_FuncFlag.FuncFlag))
```


```haxe
final funcFlagTopFrame:stdgo._internal.internal.abi.FuncFlag = ((4 : stdgo._internal.internal.abi.Abi_FuncFlag.FuncFlag))
```


```haxe
final funcIDNormal:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcIDWrapper:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_abort:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_asmcgocall:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_asyncPreempt:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_cgocallback:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_debugCallV2:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_gcBgMarkWorker:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_goexit:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_gogo:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_gopanic:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_handleAsyncEvent:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_mcall:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_morestack:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_mstart:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_panicwrap:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_rt0_go:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_runfinq:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_runtime_main:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_sigpanic:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_systemstack:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcID_systemstack_switch:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi_FuncID.FuncID))
```


```haxe
final funcdata_ArgInfo:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final funcdata_ArgLiveInfo:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final funcdata_ArgsPointerMaps:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final funcdata_InlTree:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final funcdata_LocalsPointerMaps:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final funcdata_OpenCodedDeferInfo:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final funcdata_StackObjects:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final funcdata_WrapInfo:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
```


```haxe
final int16:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final int32:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final int64:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final int8:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final intArgRegs:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final int_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final interface_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final invalid:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final invalidDir:stdgo._internal.internal.abi.ChanDir = ((0 : stdgo._internal.internal.abi.Abi_ChanDir.ChanDir))
```


```haxe
final kindDirectIface:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final kindGCProg:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final kindMask:stdgo.GoUInt64 = ((31i64 : stdgo.GoUInt64))
```


```haxe
final mapBucketCount:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final mapBucketCountBits:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final mapMaxElemBytes:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final mapMaxKeyBytes:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final map_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final pcdata_ArgLiveIndex:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final pcdata_InlTreeIndex:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final pcdata_StackMapIndex:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final pcdata_UnsafePoint:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final pointer:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final recvDir:stdgo._internal.internal.abi.ChanDir = ((2 : stdgo._internal.internal.abi.Abi_ChanDir.ChanDir))
```


```haxe
final sendDir:stdgo._internal.internal.abi.ChanDir = ((2 : stdgo._internal.internal.abi.Abi_ChanDir.ChanDir))
```


```haxe
final slice:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final stackBig:stdgo.GoUInt64 = ((4096i64 : stdgo.GoUInt64))
```


```haxe
final stackNosplitBase:stdgo.GoUInt64 = ((800i64 : stdgo.GoUInt64))
```


```haxe
final stackSmall:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final string:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final struct_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final tflagExtraStar:stdgo._internal.internal.abi.TFlag = ((2 : stdgo._internal.internal.abi.Abi_TFlag.TFlag))
```


```haxe
final tflagNamed:stdgo._internal.internal.abi.TFlag = ((4 : stdgo._internal.internal.abi.Abi_TFlag.TFlag))
```


```haxe
final tflagRegularMemory:stdgo._internal.internal.abi.TFlag = ((8 : stdgo._internal.internal.abi.Abi_TFlag.TFlag))
```


```haxe
final tflagUncommon:stdgo._internal.internal.abi.TFlag = ((1 : stdgo._internal.internal.abi.Abi_TFlag.TFlag))
```


```haxe
final uint:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final uint16:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final uint32:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final uint64:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final uint8:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final uintptr:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final unsafePointRestart1:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final unsafePointRestart2:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final unsafePointRestartAtEntry:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final unsafePointSafe:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final unsafePointUnsafe:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final unsafePointer:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


# Variables


```haxe
import stdgo._internal.internal.abi.Abi_unsafePointer
```


```haxe
var _kindNames:stdgo.Slice<stdgo.GoString>
```


```haxe
var funcPCTestFnAddr:stdgo.GoUIntptr
```


# Functions


```haxe
import stdgo._internal.internal.abi.Abi_unsafePointer
```


## function \_addChecked


```haxe
function _addChecked(_p:stdgo._internal.unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function \_assertIsAPowerOfTwo


```haxe
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function \_unsafeSliceFor


```haxe
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function \_unsafeStringFor


```haxe
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function \_writeVarint


```haxe
function _writeVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function commonOffset


```haxe
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function commonSize


```haxe
function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function funcPCABI0


```haxe
function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function funcPCABIInternal


```haxe
function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function funcPCTest


```haxe
function funcPCTest():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function funcPCTestFn


```haxe
function funcPCTestFn():Void
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function imethodSize


```haxe
function imethodSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function initializedOffset


```haxe
function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function kindOff


```haxe
function kindOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function newName


```haxe
function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):stdgo._internal.internal.abi.Name
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function newOffset


```haxe
function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function ptrBytesOff


```haxe
function ptrBytesOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function sizeOff


```haxe
function sizeOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function structFieldSize


```haxe
function structFieldSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function tflagOff


```haxe
function tflagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


## function uncommonSize


```haxe
function uncommonSize():stdgo.GoUInt64
```


[\(view code\)](<./Abi_unsafePointer.hx#L2>)


# Classes


```haxe
import stdgo._internal.internal.abi.*
```


## class ArrayType


```haxe
var elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


```haxe
var len:stdgo.GoUIntptr
```


```haxe
var slice:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


### ArrayType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_ArrayType.hx#L16>)


### ArrayType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_ArrayType.hx#L18>)


### ArrayType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_ArrayType.hx#L20>)


### ArrayType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_ArrayType.hx#L22>)


### ArrayType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_ArrayType.hx#L24>)


### ArrayType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_ArrayType.hx#L26>)


### ArrayType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_ArrayType.hx#L28>)


### ArrayType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_ArrayType.hx#L30>)


### ArrayType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_ArrayType.hx#L32>)


### ArrayType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_ArrayType.hx#L34>)


### ArrayType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_ArrayType.hx#L36>)


### ArrayType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_ArrayType.hx#L38>)


### ArrayType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_ArrayType.hx#L40>)


### ArrayType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_ArrayType.hx#L42>)


### ArrayType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_ArrayType.hx#L44>)


### ArrayType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?slice:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?len:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Abi_ArrayType.hx#L8>)


### ArrayType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_ArrayType.hx#L46>)


### ArrayType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_ArrayType.hx#L48>)


### ArrayType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_ArrayType.hx#L50>)


### ArrayType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_ArrayType.hx#L52>)


### ArrayType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_ArrayType.hx#L54>)


## class ChanType


```haxe
var dir:stdgo._internal.internal.abi.ChanDir
```


```haxe
var elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


### ChanType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_ChanType.hx#L14>)


### ChanType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_ChanType.hx#L16>)


### ChanType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_ChanType.hx#L18>)


### ChanType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_ChanType.hx#L20>)


### ChanType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_ChanType.hx#L22>)


### ChanType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_ChanType.hx#L24>)


### ChanType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_ChanType.hx#L26>)


### ChanType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_ChanType.hx#L28>)


### ChanType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_ChanType.hx#L30>)


### ChanType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_ChanType.hx#L32>)


### ChanType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_ChanType.hx#L34>)


### ChanType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_ChanType.hx#L36>)


### ChanType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_ChanType.hx#L38>)


### ChanType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_ChanType.hx#L40>)


### ChanType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_ChanType.hx#L42>)


### ChanType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_ChanType.hx#L44>)


### ChanType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?dir:stdgo._internal.internal.abi.ChanDir):Void
```


[\(view code\)](<./Abi_ChanType.hx#L7>)


### ChanType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_ChanType.hx#L46>)


### ChanType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_ChanType.hx#L48>)


### ChanType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_ChanType.hx#L50>)


### ChanType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_ChanType.hx#L52>)


### ChanType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_ChanType.hx#L54>)


## class FuncType


```haxe
var inCount:stdgo.GoUInt16
```


```haxe
var outCount:stdgo.GoUInt16
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


### FuncType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_FuncType.hx#L14>)


### FuncType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_FuncType.hx#L16>)


### FuncType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_FuncType.hx#L18>)


### FuncType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_FuncType.hx#L20>)


### FuncType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_FuncType.hx#L22>)


### FuncType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_FuncType.hx#L24>)


### FuncType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_FuncType.hx#L26>)


### FuncType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_FuncType.hx#L28>)


### FuncType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_FuncType.hx#L30>)


### FuncType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_FuncType.hx#L32>)


### FuncType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_FuncType.hx#L34>)


### FuncType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_FuncType.hx#L36>)


### FuncType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_FuncType.hx#L38>)


### FuncType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_FuncType.hx#L40>)


### FuncType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_FuncType.hx#L42>)


### FuncType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_FuncType.hx#L44>)


### FuncType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_FuncType.hx#L46>)


### FuncType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?inCount:stdgo.GoUInt16, ?outCount:stdgo.GoUInt16):Void
```


[\(view code\)](<./Abi_FuncType.hx#L7>)


### FuncType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_FuncType.hx#L48>)


### FuncType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_FuncType.hx#L50>)


### FuncType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_FuncType.hx#L52>)


### FuncType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_FuncType.hx#L54>)


### FuncType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_FuncType.hx#L56>)


## class Imethod


```haxe
var name:stdgo._internal.internal.abi.NameOff
```


```haxe
var typ:stdgo._internal.internal.abi.TypeOff
```


### Imethod function new


```haxe
function new(?name:stdgo._internal.internal.abi.NameOff, ?typ:stdgo._internal.internal.abi.TypeOff):Void
```


[\(view code\)](<./Abi_Imethod.hx#L5>)


## class InterfaceType


```haxe
var methods:stdgo.Slice<stdgo._internal.internal.abi.Imethod>
```


```haxe
var pkgPath:stdgo._internal.internal.abi.Name
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


### InterfaceType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_InterfaceType.hx#L14>)


### InterfaceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_InterfaceType.hx#L16>)


### InterfaceType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_InterfaceType.hx#L18>)


### InterfaceType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_InterfaceType.hx#L20>)


### InterfaceType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_InterfaceType.hx#L22>)


### InterfaceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_InterfaceType.hx#L24>)


### InterfaceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_InterfaceType.hx#L26>)


### InterfaceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_InterfaceType.hx#L28>)


### InterfaceType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_InterfaceType.hx#L30>)


### InterfaceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_InterfaceType.hx#L32>)


### InterfaceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_InterfaceType.hx#L34>)


### InterfaceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_InterfaceType.hx#L36>)


### InterfaceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_InterfaceType.hx#L38>)


### InterfaceType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_InterfaceType.hx#L40>)


### InterfaceType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_InterfaceType.hx#L42>)


### InterfaceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_InterfaceType.hx#L44>)


### InterfaceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_InterfaceType.hx#L46>)


### InterfaceType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Name, ?methods:stdgo.Slice<stdgo._internal.internal.abi.Imethod>):Void
```


[\(view code\)](<./Abi_InterfaceType.hx#L7>)


### InterfaceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_InterfaceType.hx#L48>)


### InterfaceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_InterfaceType.hx#L50>)


### InterfaceType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_InterfaceType.hx#L52>)


### InterfaceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_InterfaceType.hx#L54>)


## class MapType


```haxe
var bucket:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


```haxe
var bucketSize:stdgo.GoUInt16
```


```haxe
var elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


```haxe
var flags:stdgo.GoUInt32
```


```haxe
var key:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


```haxe
var keySize:stdgo.GoUInt8
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


```haxe
var valueSize:stdgo.GoUInt8
```


### MapType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_MapType.hx#L26>)


### MapType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_MapType.hx#L28>)


### MapType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_MapType.hx#L30>)


### MapType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_MapType.hx#L32>)


### MapType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_MapType.hx#L34>)


### MapType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_MapType.hx#L36>)


### MapType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_MapType.hx#L38>)


### MapType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_MapType.hx#L40>)


### MapType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_MapType.hx#L42>)


### MapType function hasher


```haxe
function hasher(:stdgo._internal.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr
```


### MapType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_MapType.hx#L44>)


### MapType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_MapType.hx#L46>)


### MapType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_MapType.hx#L48>)


### MapType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_MapType.hx#L50>)


### MapType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_MapType.hx#L52>)


### MapType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_MapType.hx#L54>)


### MapType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?key:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?bucket:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?hasher:(:stdgo._internal.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr, ?keySize:stdgo.GoUInt8, ?valueSize:stdgo.GoUInt8, ?bucketSize:stdgo.GoUInt16, ?flags:stdgo.GoUInt32):Void
```


[\(view code\)](<./Abi_MapType.hx#L13>)


### MapType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_MapType.hx#L56>)


### MapType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_MapType.hx#L58>)


### MapType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_MapType.hx#L60>)


### MapType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_MapType.hx#L62>)


### MapType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_MapType.hx#L64>)


## class Method


```haxe
var ifn:stdgo._internal.internal.abi.TextOff
```


```haxe
var mtyp:stdgo._internal.internal.abi.TypeOff
```


```haxe
var name:stdgo._internal.internal.abi.NameOff
```


```haxe
var tfn:stdgo._internal.internal.abi.TextOff
```


### Method function new


```haxe
function new(?name:stdgo._internal.internal.abi.NameOff, ?mtyp:stdgo._internal.internal.abi.TypeOff, ?ifn:stdgo._internal.internal.abi.TextOff, ?tfn:stdgo._internal.internal.abi.TextOff):Void
```


[\(view code\)](<./Abi_Method.hx#L7>)


## class Name


```haxe
var bytes:stdgo.Pointer<stdgo.GoUInt8>
```


### Name function new


```haxe
function new(?bytes:stdgo.Pointer<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Abi_Name.hx#L4>)


## class Offset


```haxe
var _align:stdgo.GoUInt8
```


```haxe
var _off:stdgo.GoUInt64
```


```haxe
var _ptrSize:stdgo.GoUInt8
```


```haxe
var _sliceAlign:stdgo.GoUInt8
```


### Offset function new


```haxe
function new(?_off:stdgo.GoUInt64, ?_align:stdgo.GoUInt8, ?_ptrSize:stdgo.GoUInt8, ?_sliceAlign:stdgo.GoUInt8):Void
```


[\(view code\)](<./Abi_Offset.hx#L7>)


## class PtrType


```haxe
var elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


### PtrType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_PtrType.hx#L12>)


### PtrType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_PtrType.hx#L14>)


### PtrType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_PtrType.hx#L16>)


### PtrType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_PtrType.hx#L18>)


### PtrType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_PtrType.hx#L20>)


### PtrType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_PtrType.hx#L22>)


### PtrType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_PtrType.hx#L24>)


### PtrType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_PtrType.hx#L26>)


### PtrType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_PtrType.hx#L28>)


### PtrType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_PtrType.hx#L30>)


### PtrType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_PtrType.hx#L32>)


### PtrType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_PtrType.hx#L34>)


### PtrType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_PtrType.hx#L36>)


### PtrType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_PtrType.hx#L38>)


### PtrType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_PtrType.hx#L40>)


### PtrType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_PtrType.hx#L42>)


### PtrType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>):Void
```


[\(view code\)](<./Abi_PtrType.hx#L6>)


### PtrType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_PtrType.hx#L44>)


### PtrType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_PtrType.hx#L46>)


### PtrType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_PtrType.hx#L48>)


### PtrType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_PtrType.hx#L50>)


### PtrType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_PtrType.hx#L52>)


## class RegArgs


```haxe
var floats:stdgo.GoArray<stdgo.GoUInt64>
```


```haxe
var ints:stdgo.GoArray<stdgo.GoUIntptr>
```


```haxe
var ptrs:stdgo.GoArray<stdgo._internal.unsafe.UnsafePointer>
```


```haxe
var returnIsPtr:stdgo._internal.internal.abi.IntArgRegBitmap
```


### RegArgs function new


```haxe
function new(?ints:stdgo.GoArray<stdgo.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo._internal.unsafe.UnsafePointer>, ?returnIsPtr:stdgo._internal.internal.abi.IntArgRegBitmap):Void
```


[\(view code\)](<./Abi_RegArgs.hx#L7>)


## class SliceType


```haxe
var elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


### SliceType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_SliceType.hx#L12>)


### SliceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_SliceType.hx#L14>)


### SliceType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_SliceType.hx#L16>)


### SliceType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_SliceType.hx#L18>)


### SliceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_SliceType.hx#L20>)


### SliceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_SliceType.hx#L22>)


### SliceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_SliceType.hx#L24>)


### SliceType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_SliceType.hx#L26>)


### SliceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_SliceType.hx#L28>)


### SliceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_SliceType.hx#L30>)


### SliceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_SliceType.hx#L32>)


### SliceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_SliceType.hx#L34>)


### SliceType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_SliceType.hx#L36>)


### SliceType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_SliceType.hx#L38>)


### SliceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_SliceType.hx#L40>)


### SliceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_SliceType.hx#L42>)


### SliceType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>):Void
```


[\(view code\)](<./Abi_SliceType.hx#L6>)


### SliceType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_SliceType.hx#L44>)


### SliceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_SliceType.hx#L46>)


### SliceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_SliceType.hx#L48>)


### SliceType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_SliceType.hx#L50>)


### SliceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_SliceType.hx#L52>)


## class StructField


```haxe
var name:stdgo._internal.internal.abi.Name
```


```haxe
var offset:stdgo.GoUIntptr
```


```haxe
var typ:stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


### StructField function new


```haxe
function new(?name:stdgo._internal.internal.abi.Name, ?typ:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?offset:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Abi_StructField.hx#L6>)


## class StructType


```haxe
var fields:stdgo.Slice<stdgo._internal.internal.abi.StructField>
```


```haxe
var pkgPath:stdgo._internal.internal.abi.Name
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


### StructType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_StructType.hx#L14>)


### StructType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_StructType.hx#L16>)


### StructType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_StructType.hx#L18>)


### StructType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_StructType.hx#L20>)


### StructType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_StructType.hx#L22>)


### StructType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_StructType.hx#L24>)


### StructType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_StructType.hx#L26>)


### StructType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_StructType.hx#L28>)


### StructType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_StructType.hx#L30>)


### StructType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_StructType.hx#L32>)


### StructType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_StructType.hx#L34>)


### StructType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_StructType.hx#L36>)


### StructType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_StructType.hx#L38>)


### StructType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_StructType.hx#L40>)


### StructType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_StructType.hx#L42>)


### StructType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_StructType.hx#L44>)


### StructType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_StructType.hx#L46>)


### StructType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Name, ?fields:stdgo.Slice<stdgo._internal.internal.abi.StructField>):Void
```


[\(view code\)](<./Abi_StructType.hx#L7>)


### StructType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_StructType.hx#L48>)


### StructType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_StructType.hx#L50>)


### StructType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_StructType.hx#L52>)


### StructType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_StructType.hx#L54>)


### StructType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_StructType.hx#L56>)


## class T\_structTypeUncommon


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var structType:stdgo._internal.internal.abi.StructType
```


### T\_structTypeUncommon function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L12>)


### T\_structTypeUncommon function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L14>)


### T\_structTypeUncommon function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L16>)


### T\_structTypeUncommon function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L18>)


### T\_structTypeUncommon function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L20>)


### T\_structTypeUncommon function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L22>)


### T\_structTypeUncommon function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L24>)


### T\_structTypeUncommon function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L26>)


### T\_structTypeUncommon function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L28>)


### T\_structTypeUncommon function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L30>)


### T\_structTypeUncommon function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L32>)


### T\_structTypeUncommon function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L34>)


### T\_structTypeUncommon function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L36>)


### T\_structTypeUncommon function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L38>)


### T\_structTypeUncommon function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L40>)


### T\_structTypeUncommon function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L42>)


### T\_structTypeUncommon function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L44>)


### T\_structTypeUncommon function new


```haxe
function new(?structType:stdgo._internal.internal.abi.StructType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L6>)


### T\_structTypeUncommon function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L46>)


### T\_structTypeUncommon function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L48>)


### T\_structTypeUncommon function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L50>)


### T\_structTypeUncommon function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_structTypeUncommon.hx#L52>)


## class T\_uncommon\_\_\_localname\_\_\_u\_8324


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var ptrType:stdgo._internal.internal.abi.PtrType
```


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L12>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L14>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L16>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L18>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L20>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L22>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L24>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L26>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L28>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L30>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L32>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L34>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L36>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L38>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L40>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L42>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function new


```haxe
function new(?ptrType:stdgo._internal.internal.abi.PtrType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L6>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L44>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L46>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L48>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L50>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8324.hx#L52>)


## class T\_uncommon\_\_\_localname\_\_\_u\_8423


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var funcType:stdgo._internal.internal.abi.FuncType
```


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L12>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L14>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L16>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L18>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L20>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L22>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L24>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L26>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L28>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L30>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function inSlice


```haxe
function inSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L34>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function in\_


```haxe
function in_(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L32>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L36>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L38>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function isVariadic


```haxe
function isVariadic():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L40>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L42>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L44>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L46>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L48>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function new


```haxe
function new(?funcType:stdgo._internal.internal.abi.FuncType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L6>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function numIn


```haxe
function numIn():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L50>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L52>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function numOut


```haxe
function numOut():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L54>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function out


```haxe
function out(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L56>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function outSlice


```haxe
function outSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L58>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L60>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L62>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L64>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8423.hx#L66>)


## class T\_uncommon\_\_\_localname\_\_\_u\_8524


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var sliceType:stdgo._internal.internal.abi.SliceType
```


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L12>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L14>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L16>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L18>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L20>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L22>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L24>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L26>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L28>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L30>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L32>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L34>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L36>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L38>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L40>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L42>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function new


```haxe
function new(?sliceType:stdgo._internal.internal.abi.SliceType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L6>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L44>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L46>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L48>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L50>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8524.hx#L52>)


## class T\_uncommon\_\_\_localname\_\_\_u\_8626


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var arrayType:stdgo._internal.internal.abi.ArrayType
```


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L12>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L14>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L16>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L18>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L20>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L22>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L24>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L26>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L28>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L30>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L32>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L34>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L36>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L38>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function new


```haxe
function new(?arrayType:stdgo._internal.internal.abi.ArrayType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L6>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L40>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L42>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L44>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L46>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8626.hx#L48>)


## class T\_uncommon\_\_\_localname\_\_\_u\_8727


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var chanType:stdgo._internal.internal.abi.ChanType
```


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L12>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L14>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L16>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L18>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L20>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L22>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L24>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L26>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L28>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L30>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L32>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L34>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L36>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L38>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L40>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L42>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function new


```haxe
function new(?chanType:stdgo._internal.internal.abi.ChanType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L6>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L44>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L46>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L48>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L50>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8727.hx#L52>)


## class T\_uncommon\_\_\_localname\_\_\_u\_8826


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var mapType:stdgo._internal.internal.abi.MapType
```


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L12>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L14>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L16>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L18>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L20>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L22>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L24>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L26>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L28>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function hashMightPanic


```haxe
function hashMightPanic():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L30>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L32>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function indirectElem


```haxe
function indirectElem():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L34>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function indirectKey


```haxe
function indirectKey():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L36>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L38>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L40>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L42>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L44>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function needKeyUpdate


```haxe
function needKeyUpdate():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L46>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function new


```haxe
function new(?mapType:stdgo._internal.internal.abi.MapType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L6>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L48>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L50>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function reflexiveKey


```haxe
function reflexiveKey():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L52>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L54>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L56>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8826.hx#L58>)


## class T\_uncommon\_\_\_localname\_\_\_u\_8930


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var interfaceType:stdgo._internal.internal.abi.InterfaceType
```


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L12>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L14>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L16>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L18>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L20>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L22>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L24>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L26>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L28>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L30>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L32>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L34>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L36>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L38>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L40>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L42>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function new


```haxe
function new(?interfaceType:stdgo._internal.internal.abi.InterfaceType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L6>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L44>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L46>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L48>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L50>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_8930.hx#L52>)


## class T\_uncommon\_\_\_localname\_\_\_u\_9033


```haxe
var _u:stdgo._internal.internal.abi.UncommonType
```


```haxe
var type:stdgo._internal.internal.abi.Type_
```


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L12>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L14>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L16>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L18>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L20>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L22>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L24>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L26>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L28>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L30>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L32>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L34>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L36>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L38>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L40>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L42>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L44>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L6>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L46>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L48>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L50>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L52>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi_T_uncommon___localname___u_9033.hx#L54>)


## class Type\_


```haxe
var align_:stdgo.GoUInt8
```


```haxe
var fieldAlign_:stdgo.GoUInt8
```


```haxe
var gcdata:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var hash:stdgo.GoUInt32
```


```haxe
var kind_:stdgo.GoUInt8
```


```haxe
var ptrBytes:stdgo.GoUIntptr
```


```haxe
var ptrToThis:stdgo._internal.internal.abi.TypeOff
```


```haxe
var size_:stdgo.GoUIntptr
```


```haxe
var str:stdgo._internal.internal.abi.NameOff
```


```haxe
var tflag:stdgo._internal.internal.abi.TFlag
```


### Type\_ function equal


```haxe
function equal(:stdgo._internal.unsafe.UnsafePointer, :stdgo._internal.unsafe.UnsafePointer):Bool
```


### Type\_ function new


```haxe
function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:stdgo.GoUInt32, ?tflag:stdgo._internal.internal.abi.TFlag, ?align_:stdgo.GoUInt8, ?fieldAlign_:stdgo.GoUInt8, ?kind_:stdgo.GoUInt8, ?equal:(:stdgo._internal.unsafe.UnsafePointer, :stdgo._internal.unsafe.UnsafePointer):Bool, ?gcdata:stdgo.Pointer<stdgo.GoUInt8>, ?str:stdgo._internal.internal.abi.NameOff, ?ptrToThis:stdgo._internal.internal.abi.TypeOff):Void
```


[\(view code\)](<./Abi_Type_.hx#L14>)


## class UncommonType


```haxe
var __1:stdgo.GoUInt32
```


```haxe
var mcount:stdgo.GoUInt16
```


```haxe
var moff:stdgo.GoUInt32
```


```haxe
var pkgPath:stdgo._internal.internal.abi.NameOff
```


```haxe
var xcount:stdgo.GoUInt16
```


### UncommonType function new


```haxe
function new(?pkgPath:stdgo._internal.internal.abi.NameOff, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__1:stdgo.GoUInt32):Void
```


[\(view code\)](<./Abi_UncommonType.hx#L9>)


# Typedefs


```haxe
import stdgo._internal.internal.abi.*
```


## typedef ChanDir


```haxe
typedef ChanDir = stdgo.GoInt;
```


## typedef FuncFlag


```haxe
typedef FuncFlag = stdgo.GoUInt8;
```


## typedef FuncID


```haxe
typedef FuncID = stdgo.GoUInt8;
```


## typedef IntArgRegBitmap


```haxe
typedef IntArgRegBitmap = stdgo.GoArray<stdgo.GoUInt8>;
```


## typedef Kind


```haxe
typedef Kind = stdgo.GoUInt;
```


## typedef NameOff


```haxe
typedef NameOff = stdgo.GoInt32;
```


## typedef TFlag


```haxe
typedef TFlag = stdgo.GoUInt8;
```


## typedef TextOff


```haxe
typedef TextOff = stdgo.GoInt32;
```


## typedef TypeOff


```haxe
typedef TypeOff = stdgo.GoInt32;
```


