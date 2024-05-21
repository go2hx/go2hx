# Module: `stdgo._internal.internal.abi`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _addChecked(_p:stdgo._internal.unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo._internal.unsafe.UnsafePointer`](<#function-_addchecked>)

- [`function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void`](<#function-_assertisapoweroftwo>)

- [`function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_unsafeslicefor>)

- [`function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.GoString`](<#function-_unsafestringfor>)

- [`function _writeVarint(_buf:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.GoInt`](<#function-_writevarint>)

- [`function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset`](<#function-commonoffset>)

- [`function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-commonsize>)

- [`function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-funcpcabi0>)

- [`function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-funcpcabiinternal>)

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

  - [`function align():stdgo.GoInt`](<#arraytype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#arraytype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#arraytype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#arraytype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#arraytype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#arraytype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#arraytype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#arraytype-function-gcslice>)

  - [`function hasName():Bool`](<#arraytype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#arraytype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#arraytype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#arraytype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#arraytype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#arraytype-function-kind>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#arraytype-function-maptype>)

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

  - [`function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?dir:Null<stdgo._internal.internal.abi.ChanDir>):Void`](<#chantype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#chantype-function-nummethod>)

  - [`function pointers():Bool`](<#chantype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#chantype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#chantype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#chantype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#chantype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#chantype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#chantype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#chantype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#chantype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#chantype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#chantype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#chantype-function-gcslice>)

  - [`function hasName():Bool`](<#chantype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#chantype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#chantype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#chantype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#chantype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#chantype-function-kind>)

  - [`function len():stdgo.GoInt`](<#chantype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#chantype-function-maptype>)

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

  - [`function align():stdgo.GoInt`](<#functype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#functype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#functype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#functype-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#functype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#functype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#functype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#functype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#functype-function-gcslice>)

  - [`function hasName():Bool`](<#functype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#functype-function-ifaceindir>)

  - [`function inSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>`](<#functype-function-inslice>)

  - [`function in_( _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#functype-function-in_>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#functype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#functype-function-isdirectiface>)

  - [`function isVariadic():Bool`](<#functype-function-isvariadic>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#functype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#functype-function-kind>)

  - [`function len():stdgo.GoInt`](<#functype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#functype-function-maptype>)

  - [`function numIn():stdgo.GoInt`](<#functype-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#functype-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#functype-function-numout>)

  - [`function out( _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#functype-function-out>)

  - [`function outSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>`](<#functype-function-outslice>)

  - [`function pointers():Bool`](<#functype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#functype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#functype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#functype-function-uncommon>)

- [class Imethod](<#class-imethod>)

  - [`function new(?name:Null<stdgo._internal.internal.abi.NameOff>, ?typ:Null<stdgo._internal.internal.abi.TypeOff>):Void`](<#imethod-function-new>)

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

  - [`function align():stdgo.GoInt`](<#interfacetype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#interfacetype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#interfacetype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#interfacetype-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#interfacetype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#interfacetype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#interfacetype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#interfacetype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#interfacetype-function-gcslice>)

  - [`function hasName():Bool`](<#interfacetype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#interfacetype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#interfacetype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#interfacetype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#interfacetype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#interfacetype-function-kind>)

  - [`function len():stdgo.GoInt`](<#interfacetype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#interfacetype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#interfacetype-function-nummethod>)

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

  - [`function align():stdgo.GoInt`](<#maptype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#maptype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#maptype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#maptype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#maptype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#maptype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#maptype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#maptype-function-gcslice>)

  - [`function hasName():Bool`](<#maptype-function-hasname>)

  - [`function hashMightPanic():Bool`](<#maptype-function-hashmightpanic>)

  - [`function ifaceIndir():Bool`](<#maptype-function-ifaceindir>)

  - [`function indirectElem():Bool`](<#maptype-function-indirectelem>)

  - [`function indirectKey():Bool`](<#maptype-function-indirectkey>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#maptype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#maptype-function-isdirectiface>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#maptype-function-kind>)

  - [`function len():stdgo.GoInt`](<#maptype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#maptype-function-maptype>)

  - [`function needKeyUpdate():Bool`](<#maptype-function-needkeyupdate>)

  - [`function numMethod():stdgo.GoInt`](<#maptype-function-nummethod>)

  - [`function pointers():Bool`](<#maptype-function-pointers>)

  - [`function reflexiveKey():Bool`](<#maptype-function-reflexivekey>)

  - [`function size():stdgo.GoUIntptr`](<#maptype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#maptype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#maptype-function-uncommon>)

- [class Method](<#class-method>)

  - [`function new(?name:Null<stdgo._internal.internal.abi.NameOff>, ?mtyp:Null<stdgo._internal.internal.abi.TypeOff>, ?ifn:Null<stdgo._internal.internal.abi.TextOff>, ?tfn:Null<stdgo._internal.internal.abi.TextOff>):Void`](<#method-function-new>)

- [class Name](<#class-name>)

  - [`function new(?bytes:stdgo.Pointer<stdgo.GoUInt8>):Void`](<#name-function-new>)

  - [`function data( _off:stdgo.GoInt):stdgo.Pointer<stdgo.GoByte>`](<#name-function-data>)

  - [`function dataChecked( _off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoByte>`](<#name-function-datachecked>)

  - [`function hasTag():Bool`](<#name-function-hastag>)

  - [`function isBlank():Bool`](<#name-function-isblank>)

  - [`function isEmbedded():Bool`](<#name-function-isembedded>)

  - [`function isExported():Bool`](<#name-function-isexported>)

  - [`function name():stdgo.GoString`](<#name-function-name>)

  - [`function readVarint( _off:stdgo.GoInt):{ _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#name-function-readvarint>)

  - [`function tag():stdgo.GoString`](<#name-function-tag>)

- [class Offset](<#class-offset>)

  - [`function new(?_off:stdgo.GoUInt64, ?_align:stdgo.GoUInt8, ?_ptrSize:stdgo.GoUInt8, ?_sliceAlign:stdgo.GoUInt8):Void`](<#offset-function-new>)

  - [`function _align_( _a:stdgo.GoUInt8):stdgo._internal.internal.abi.Offset`](<#offset-function-align>)

  - [`function _plus( _x:stdgo.GoUInt64):stdgo._internal.internal.abi.Offset`](<#offset-function-_plus>)

  - [`function align( _a:stdgo.GoUInt8):stdgo._internal.internal.abi.Offset`](<#offset-function-align>)

  - [`function d16():stdgo._internal.internal.abi.Offset`](<#offset-function-d16>)

  - [`function d32():stdgo._internal.internal.abi.Offset`](<#offset-function-d32>)

  - [`function d64():stdgo._internal.internal.abi.Offset`](<#offset-function-d64>)

  - [`function d8():stdgo._internal.internal.abi.Offset`](<#offset-function-d8>)

  - [`function interface_():stdgo._internal.internal.abi.Offset`](<#offset-function-interface_>)

  - [`function offset():stdgo.GoUInt64`](<#offset-function-offset>)

  - [`function p():stdgo._internal.internal.abi.Offset`](<#offset-function-p>)

  - [`function plusUncommon():stdgo._internal.internal.abi.Offset`](<#offset-function-plusuncommon>)

  - [`function slice():stdgo._internal.internal.abi.Offset`](<#offset-function-slice>)

  - [`function string():stdgo._internal.internal.abi.Offset`](<#offset-function-string>)

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

  - [`function align():stdgo.GoInt`](<#ptrtype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#ptrtype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#ptrtype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#ptrtype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#ptrtype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#ptrtype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#ptrtype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#ptrtype-function-gcslice>)

  - [`function hasName():Bool`](<#ptrtype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#ptrtype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#ptrtype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#ptrtype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#ptrtype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#ptrtype-function-kind>)

  - [`function len():stdgo.GoInt`](<#ptrtype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#ptrtype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#ptrtype-function-nummethod>)

  - [`function pointers():Bool`](<#ptrtype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#ptrtype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#ptrtype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#ptrtype-function-uncommon>)

- [class RegArgs](<#class-regargs>)

  - [`function new(?ints:stdgo.GoArray<stdgo.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo._internal.unsafe.UnsafePointer>, ?returnIsPtr:Null<stdgo._internal.internal.abi.IntArgRegBitmap>):Void`](<#regargs-function-new>)

  - [`function dump():Void`](<#regargs-function-dump>)

  - [`function intRegArgAddr( _reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.UnsafePointer`](<#regargs-function-intregargaddr>)

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

  - [`function align():stdgo.GoInt`](<#slicetype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#slicetype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#slicetype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#slicetype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#slicetype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#slicetype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#slicetype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#slicetype-function-gcslice>)

  - [`function hasName():Bool`](<#slicetype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#slicetype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#slicetype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#slicetype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#slicetype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#slicetype-function-kind>)

  - [`function len():stdgo.GoInt`](<#slicetype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#slicetype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#slicetype-function-nummethod>)

  - [`function pointers():Bool`](<#slicetype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#slicetype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#slicetype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#slicetype-function-uncommon>)

- [class StructField](<#class-structfield>)

  - [`function new(?name:stdgo._internal.internal.abi.Name, ?typ:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?offset:stdgo.GoUIntptr):Void`](<#structfield-function-new>)

  - [`function embedded():Bool`](<#structfield-function-embedded>)

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

  - [`function align():stdgo.GoInt`](<#structtype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#structtype-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#structtype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#structtype-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#structtype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#structtype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#structtype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#structtype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#structtype-function-gcslice>)

  - [`function hasName():Bool`](<#structtype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#structtype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#structtype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#structtype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#structtype-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#structtype-function-kind>)

  - [`function len():stdgo.GoInt`](<#structtype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#structtype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#structtype-function-nummethod>)

  - [`function pointers():Bool`](<#structtype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#structtype-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#structtype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#structtype-function-uncommon>)

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

  - [`function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:stdgo.GoUInt32, ?tflag:Null<stdgo._internal.internal.abi.TFlag>, ?align_:stdgo.GoUInt8, ?fieldAlign_:stdgo.GoUInt8, ?kind_:stdgo.GoUInt8, ?equal:(:stdgo._internal.unsafe.UnsafePointer, :stdgo._internal.unsafe.UnsafePointer):Bool, ?gcdata:stdgo.Pointer<stdgo.GoUInt8>, ?str:Null<stdgo._internal.internal.abi.NameOff>, ?ptrToThis:Null<stdgo._internal.internal.abi.TypeOff>):Void`](<#type_-function-new>)

  - [`function align():stdgo.GoInt`](<#type_-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>`](<#type_-function-arraytype>)

  - [`function chanDir():stdgo._internal.internal.abi.ChanDir`](<#type_-function-chandir>)

  - [`function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#type_-function-common>)

  - [`function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#type_-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#type_-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#type_-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>`](<#type_-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoByte>`](<#type_-function-gcslice>)

  - [`function hasName():Bool`](<#type_-function-hasname>)

  - [`function ifaceIndir():Bool`](<#type_-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>`](<#type_-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#type_-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>`](<#type_-function-key>)

  - [`function kind():stdgo._internal.internal.abi.Kind`](<#type_-function-kind>)

  - [`function len():stdgo.GoInt`](<#type_-function-len>)

  - [`function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>`](<#type_-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#type_-function-nummethod>)

  - [`function pointers():Bool`](<#type_-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#type_-function-size>)

  - [`function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>`](<#type_-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>`](<#type_-function-uncommon>)

- [class UncommonType](<#class-uncommontype>)

  - [`function new(?pkgPath:Null<stdgo._internal.internal.abi.NameOff>, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__1:stdgo.GoUInt32):Void`](<#uncommontype-function-new>)

  - [`function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#uncommontype-function-exportedmethods>)

  - [`function methods():stdgo.Slice<stdgo._internal.internal.abi.Method>`](<#uncommontype-function-methods>)

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
import stdgo._internal.internal.abi.Abi
```


```haxe
final argsSizeUnknown:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final array:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final bool_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final bothDir:stdgo._internal.internal.abi.ChanDir = ((3 : stdgo._internal.internal.abi.Abi.ChanDir))
```


```haxe
final chan:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final complex128:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final complex64:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final effectiveFloatRegSize:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final float32:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final float64:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final floatArgRegs:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final func:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final funcFlagAsm:stdgo._internal.internal.abi.FuncFlag = ((4 : stdgo._internal.internal.abi.Abi.FuncFlag))
```


```haxe
final funcFlagSPWrite:stdgo._internal.internal.abi.FuncFlag = ((4 : stdgo._internal.internal.abi.Abi.FuncFlag))
```


```haxe
final funcFlagTopFrame:stdgo._internal.internal.abi.FuncFlag = ((4 : stdgo._internal.internal.abi.Abi.FuncFlag))
```


```haxe
final funcIDNormal:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcIDWrapper:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_abort:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_asmcgocall:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_asyncPreempt:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_cgocallback:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_debugCallV2:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_gcBgMarkWorker:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_goexit:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_gogo:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_gopanic:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_handleAsyncEvent:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_mcall:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_morestack:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_mstart:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_panicwrap:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_rt0_go:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_runfinq:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_runtime_main:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_sigpanic:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_systemstack:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
```


```haxe
final funcID_systemstack_switch:stdgo._internal.internal.abi.FuncID = ((21 : stdgo._internal.internal.abi.Abi.FuncID))
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
final int16:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final int32:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final int64:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final int8:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final intArgRegs:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final int_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final interface_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final invalid:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final invalidDir:stdgo._internal.internal.abi.ChanDir = ((0 : stdgo._internal.internal.abi.Abi.ChanDir))
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
final map_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
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
final pointer:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final recvDir:stdgo._internal.internal.abi.ChanDir = ((2 : stdgo._internal.internal.abi.Abi.ChanDir))
```


```haxe
final sendDir:stdgo._internal.internal.abi.ChanDir = ((2 : stdgo._internal.internal.abi.Abi.ChanDir))
```


```haxe
final slice:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
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
final string:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final struct_:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final tflagExtraStar:stdgo._internal.internal.abi.TFlag = ((2 : stdgo._internal.internal.abi.Abi.TFlag))
```


```haxe
final tflagNamed:stdgo._internal.internal.abi.TFlag = ((4 : stdgo._internal.internal.abi.Abi.TFlag))
```


```haxe
final tflagRegularMemory:stdgo._internal.internal.abi.TFlag = ((8 : stdgo._internal.internal.abi.Abi.TFlag))
```


```haxe
final tflagUncommon:stdgo._internal.internal.abi.TFlag = ((1 : stdgo._internal.internal.abi.Abi.TFlag))
```


```haxe
final uint:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final uint16:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final uint32:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final uint64:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final uint8:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


```haxe
final uintptr:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
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
final unsafePointer:stdgo._internal.internal.abi.Kind = ((26u32 : stdgo._internal.internal.abi.Abi.Kind))
```


# Variables


```haxe
import stdgo._internal.internal.abi.Abi
```


```haxe
var _kindNames:stdgo.Slice<stdgo.GoString>
```


# Functions


```haxe
import stdgo._internal.internal.abi.Abi
```


## function \_addChecked


```haxe
function _addChecked(_p:stdgo._internal.unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Abi.hx#L855>)


## function \_assertIsAPowerOfTwo


```haxe
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Abi.hx#L828>)


## function \_unsafeSliceFor


```haxe
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Abi.hx#L909>)


## function \_unsafeStringFor


```haxe
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Abi.hx#L906>)


## function \_writeVarint


```haxe
function _writeVarint(_buf:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L858>)


## function commonOffset


```haxe
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L844>)


## function commonSize


```haxe
function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L798>)


## function funcPCABI0


```haxe
function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L847>)


## function funcPCABIInternal


```haxe
function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L851>)


## function imethodSize


```haxe
function imethodSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L807>)


## function initializedOffset


```haxe
function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L837>)


## function kindOff


```haxe
function kindOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L810>)


## function newName


```haxe
function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):stdgo._internal.internal.abi.Name
```


[\(view code\)](<./Abi.hx#L872>)


## function newOffset


```haxe
function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L822>)


## function ptrBytesOff


```haxe
function ptrBytesOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L816>)


## function sizeOff


```haxe
function sizeOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L813>)


## function structFieldSize


```haxe
function structFieldSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L801>)


## function tflagOff


```haxe
function tflagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L819>)


## function uncommonSize


```haxe
function uncommonSize():stdgo.GoUInt64
```


[\(view code\)](<./Abi.hx#L804>)


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


[\(view code\)](<./Abi.hx#L258>)


### ArrayType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L260>)


### ArrayType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L262>)


### ArrayType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L264>)


### ArrayType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L266>)


### ArrayType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L268>)


### ArrayType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L270>)


### ArrayType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L272>)


### ArrayType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L274>)


### ArrayType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L276>)


### ArrayType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L278>)


### ArrayType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L280>)


### ArrayType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L282>)


### ArrayType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L284>)


### ArrayType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L286>)


### ArrayType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?slice:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?len:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Abi.hx#L250>)


### ArrayType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L288>)


### ArrayType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L290>)


### ArrayType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L292>)


### ArrayType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L294>)


### ArrayType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L296>)


### ArrayType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2476>)


### ArrayType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2474>)


### ArrayType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2472>)


### ArrayType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2470>)


### ArrayType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2468>)


### ArrayType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2466>)


### ArrayType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2464>)


### ArrayType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2462>)


### ArrayType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2460>)


### ArrayType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2458>)


### ArrayType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2456>)


### ArrayType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2454>)


### ArrayType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2452>)


### ArrayType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2450>)


### ArrayType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2448>)


### ArrayType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2446>)


### ArrayType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2444>)


### ArrayType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2442>)


### ArrayType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2440>)


### ArrayType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2438>)


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


[\(view code\)](<./Abi.hx#L313>)


### ChanType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L315>)


### ChanType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L317>)


### ChanType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L319>)


### ChanType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L321>)


### ChanType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L323>)


### ChanType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L325>)


### ChanType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L327>)


### ChanType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L329>)


### ChanType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L331>)


### ChanType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L333>)


### ChanType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L335>)


### ChanType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L337>)


### ChanType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L339>)


### ChanType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L341>)


### ChanType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L343>)


### ChanType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?dir:Null<stdgo._internal.internal.abi.ChanDir>):Void
```


[\(view code\)](<./Abi.hx#L306>)


### ChanType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L345>)


### ChanType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L347>)


### ChanType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L349>)


### ChanType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L351>)


### ChanType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L353>)


### ChanType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2571>)


### ChanType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2569>)


### ChanType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2567>)


### ChanType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2565>)


### ChanType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2563>)


### ChanType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2561>)


### ChanType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2559>)


### ChanType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2557>)


### ChanType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2555>)


### ChanType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2553>)


### ChanType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2551>)


### ChanType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2549>)


### ChanType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2547>)


### ChanType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2545>)


### ChanType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2543>)


### ChanType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2541>)


### ChanType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2539>)


### ChanType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2537>)


### ChanType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2535>)


### ChanType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2533>)


### ChanType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2531>)


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


[\(view code\)](<./Abi.hx#L604>)


### FuncType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L606>)


### FuncType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L608>)


### FuncType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L610>)


### FuncType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L612>)


### FuncType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L614>)


### FuncType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L616>)


### FuncType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L618>)


### FuncType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L620>)


### FuncType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L622>)


### FuncType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L624>)


### FuncType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L626>)


### FuncType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L628>)


### FuncType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L630>)


### FuncType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L632>)


### FuncType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L634>)


### FuncType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L636>)


### FuncType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?inCount:stdgo.GoUInt16, ?outCount:stdgo.GoUInt16):Void
```


[\(view code\)](<./Abi.hx#L597>)


### FuncType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L638>)


### FuncType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L640>)


### FuncType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L642>)


### FuncType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L644>)


### FuncType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L646>)


### FuncType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3174>)


### FuncType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3172>)


### FuncType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3170>)


### FuncType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3168>)


### FuncType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3166>)


### FuncType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3164>)


### FuncType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3162>)


### FuncType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3160>)


### FuncType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3158>)


### FuncType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3156>)


### FuncType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3154>)


### FuncType function inSlice


```haxe
function inSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>
```


[\(view code\)](<./Abi.hx#L3089>)


### FuncType function in\_


```haxe
function in_( _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3127>)


### FuncType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3152>)


### FuncType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3150>)


### FuncType function isVariadic


```haxe
function isVariadic():Bool
```


[\(view code\)](<./Abi.hx#L3060>)


### FuncType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3148>)


### FuncType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3146>)


### FuncType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3144>)


### FuncType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3142>)


### FuncType function numIn


```haxe
function numIn():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3122>)


### FuncType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3140>)


### FuncType function numOut


```haxe
function numOut():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3117>)


### FuncType function out


```haxe
function out( _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3112>)


### FuncType function outSlice


```haxe
function outSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>
```


[\(view code\)](<./Abi.hx#L3065>)


### FuncType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3138>)


### FuncType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3136>)


### FuncType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3134>)


### FuncType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3132>)


## class Imethod


```haxe
var name:stdgo._internal.internal.abi.NameOff
```


```haxe
var typ:stdgo._internal.internal.abi.TypeOff
```


### Imethod function new


```haxe
function new(?name:Null<stdgo._internal.internal.abi.NameOff>, ?typ:Null<stdgo._internal.internal.abi.TypeOff>):Void
```


[\(view code\)](<./Abi.hx#L235>)


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


[\(view code\)](<./Abi.hx#L425>)


### InterfaceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L427>)


### InterfaceType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L429>)


### InterfaceType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L431>)


### InterfaceType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L433>)


### InterfaceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L435>)


### InterfaceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L437>)


### InterfaceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L439>)


### InterfaceType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L441>)


### InterfaceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L443>)


### InterfaceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L445>)


### InterfaceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L447>)


### InterfaceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L449>)


### InterfaceType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L451>)


### InterfaceType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L453>)


### InterfaceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L455>)


### InterfaceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L457>)


### InterfaceType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Name, ?methods:stdgo.Slice<stdgo._internal.internal.abi.Imethod>):Void
```


[\(view code\)](<./Abi.hx#L418>)


### InterfaceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L459>)


### InterfaceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L461>)


### InterfaceType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L463>)


### InterfaceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L465>)


### InterfaceType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2768>)


### InterfaceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2766>)


### InterfaceType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2764>)


### InterfaceType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2762>)


### InterfaceType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2760>)


### InterfaceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2758>)


### InterfaceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2756>)


### InterfaceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2754>)


### InterfaceType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2752>)


### InterfaceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2750>)


### InterfaceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2748>)


### InterfaceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2746>)


### InterfaceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2744>)


### InterfaceType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2742>)


### InterfaceType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2740>)


### InterfaceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2738>)


### InterfaceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2736>)


### InterfaceType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2723>)


### InterfaceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2734>)


### InterfaceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2732>)


### InterfaceType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2730>)


### InterfaceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2728>)


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


[\(view code\)](<./Abi.hx#L494>)


### MapType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L496>)


### MapType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L498>)


### MapType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L500>)


### MapType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L502>)


### MapType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L504>)


### MapType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L506>)


### MapType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L508>)


### MapType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L510>)


### MapType function hasher


```haxe
function hasher(:stdgo._internal.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr
```


### MapType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L512>)


### MapType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L514>)


### MapType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L516>)


### MapType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L518>)


### MapType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L520>)


### MapType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L522>)


### MapType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?key:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?bucket:stdgo.Ref<stdgo._internal.internal.abi.Type_>, ?hasher:(:stdgo._internal.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr, ?keySize:stdgo.GoUInt8, ?valueSize:stdgo.GoUInt8, ?bucketSize:stdgo.GoUInt16, ?flags:stdgo.GoUInt32):Void
```


[\(view code\)](<./Abi.hx#L481>)


### MapType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L524>)


### MapType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L526>)


### MapType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L528>)


### MapType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L530>)


### MapType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L532>)


### MapType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2894>)


### MapType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2892>)


### MapType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2890>)


### MapType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2888>)


### MapType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2886>)


### MapType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2884>)


### MapType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2882>)


### MapType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2880>)


### MapType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2878>)


### MapType function hashMightPanic


```haxe
function hashMightPanic():Bool
```


[\(view code\)](<./Abi.hx#L2831>)


### MapType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2876>)


### MapType function indirectElem


```haxe
function indirectElem():Bool
```


[\(view code\)](<./Abi.hx#L2846>)


### MapType function indirectKey


```haxe
function indirectKey():Bool
```


[\(view code\)](<./Abi.hx#L2851>)


### MapType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2874>)


### MapType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2872>)


### MapType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2870>)


### MapType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2868>)


### MapType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2866>)


### MapType function needKeyUpdate


```haxe
function needKeyUpdate():Bool
```


[\(view code\)](<./Abi.hx#L2836>)


### MapType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2864>)


### MapType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2862>)


### MapType function reflexiveKey


```haxe
function reflexiveKey():Bool
```


[\(view code\)](<./Abi.hx#L2841>)


### MapType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2860>)


### MapType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2858>)


### MapType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2856>)


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
function new(?name:Null<stdgo._internal.internal.abi.NameOff>, ?mtyp:Null<stdgo._internal.internal.abi.TypeOff>, ?ifn:Null<stdgo._internal.internal.abi.TextOff>, ?tfn:Null<stdgo._internal.internal.abi.TextOff>):Void
```


[\(view code\)](<./Abi.hx#L202>)


## class Name


```haxe
var bytes:stdgo.Pointer<stdgo.GoUInt8>
```


### Name function new


```haxe
function new(?bytes:stdgo.Pointer<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Abi.hx#L781>)


### Name function data


```haxe
function data( _off:stdgo.GoInt):stdgo.Pointer<stdgo.GoByte>
```


[\(view code\)](<./Abi.hx#L3475>)


### Name function dataChecked


```haxe
function dataChecked( _off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoByte>
```


[\(view code\)](<./Abi.hx#L3480>)


### Name function hasTag


```haxe
function hasTag():Bool
```


[\(view code\)](<./Abi.hx#L3465>)


### Name function isBlank


```haxe
function isBlank():Bool
```


[\(view code\)](<./Abi.hx#L3436>)


### Name function isEmbedded


```haxe
function isEmbedded():Bool
```


[\(view code\)](<./Abi.hx#L3460>)


### Name function isExported


```haxe
function isExported():Bool
```


[\(view code\)](<./Abi.hx#L3470>)


### Name function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Abi.hx#L3427>)


### Name function readVarint


```haxe
function readVarint( _off:stdgo.GoInt):{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Abi.hx#L3445>)


### Name function tag


```haxe
function tag():stdgo.GoString
```


[\(view code\)](<./Abi.hx#L3417>)


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


[\(view code\)](<./Abi.hx#L145>)


### Offset function \_align\_


```haxe
function _align_( _a:stdgo.GoUInt8):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1068>)


### Offset function \_plus


```haxe
function _plus( _x:stdgo.GoUInt64):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1055>)


### Offset function align


```haxe
function align( _a:stdgo.GoUInt8):stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1062>)


### Offset function d16


```haxe
function d16():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1045>)


### Offset function d32


```haxe
function d32():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1040>)


### Offset function d64


```haxe
function d64():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1035>)


### Offset function d8


```haxe
function d8():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1050>)


### Offset function interface\_


```haxe
function interface_():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1006>)


### Offset function offset


```haxe
function offset():stdgo.GoUInt64
```


[\(view code\)](<./Abi.hx#L1001>)


### Offset function p


```haxe
function p():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1027>)


### Offset function plusUncommon


```haxe
function plusUncommon():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L995>)


### Offset function slice


```haxe
function slice():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1020>)


### Offset function string


```haxe
function string():stdgo._internal.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1013>)


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


[\(view code\)](<./Abi.hx#L661>)


### PtrType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L663>)


### PtrType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L665>)


### PtrType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L667>)


### PtrType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L669>)


### PtrType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L671>)


### PtrType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L673>)


### PtrType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L675>)


### PtrType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L677>)


### PtrType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L679>)


### PtrType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L681>)


### PtrType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L683>)


### PtrType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L685>)


### PtrType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L687>)


### PtrType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L689>)


### PtrType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L691>)


### PtrType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>):Void
```


[\(view code\)](<./Abi.hx#L655>)


### PtrType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L693>)


### PtrType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L695>)


### PtrType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L697>)


### PtrType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L699>)


### PtrType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L701>)


### PtrType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3269>)


### PtrType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3267>)


### PtrType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3265>)


### PtrType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3263>)


### PtrType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3261>)


### PtrType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3259>)


### PtrType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3257>)


### PtrType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3255>)


### PtrType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3253>)


### PtrType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3251>)


### PtrType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3249>)


### PtrType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3247>)


### PtrType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3245>)


### PtrType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3243>)


### PtrType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3241>)


### PtrType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3239>)


### PtrType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3237>)


### PtrType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3235>)


### PtrType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3233>)


### PtrType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3231>)


### PtrType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3229>)


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
function new(?ints:stdgo.GoArray<stdgo.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo._internal.unsafe.UnsafePointer>, ?returnIsPtr:Null<stdgo._internal.internal.abi.IntArgRegBitmap>):Void
```


[\(view code\)](<./Abi.hx#L129>)


### RegArgs function dump


```haxe
function dump():Void
```


[\(view code\)](<./Abi.hx#L939>)


### RegArgs function intRegArgAddr


```haxe
function intRegArgAddr( _reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Abi.hx#L927>)


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


[\(view code\)](<./Abi.hx#L547>)


### SliceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L549>)


### SliceType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L551>)


### SliceType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L553>)


### SliceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L555>)


### SliceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L557>)


### SliceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L559>)


### SliceType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L561>)


### SliceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L563>)


### SliceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L565>)


### SliceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L567>)


### SliceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L569>)


### SliceType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L571>)


### SliceType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L573>)


### SliceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L575>)


### SliceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L577>)


### SliceType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Type_>):Void
```


[\(view code\)](<./Abi.hx#L541>)


### SliceType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L579>)


### SliceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L581>)


### SliceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L583>)


### SliceType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L585>)


### SliceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L587>)


### SliceType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2989>)


### SliceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2987>)


### SliceType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2985>)


### SliceType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2983>)


### SliceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2981>)


### SliceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2979>)


### SliceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2977>)


### SliceType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2975>)


### SliceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2973>)


### SliceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2971>)


### SliceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2969>)


### SliceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2967>)


### SliceType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2965>)


### SliceType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2963>)


### SliceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2961>)


### SliceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2959>)


### SliceType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2957>)


### SliceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2955>)


### SliceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2953>)


### SliceType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2951>)


### SliceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2949>)


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


[\(view code\)](<./Abi.hx#L710>)


### StructField function embedded


```haxe
function embedded():Bool
```


[\(view code\)](<./Abi.hx#L3284>)


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


[\(view code\)](<./Abi.hx#L732>)


### StructType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L734>)


### StructType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L736>)


### StructType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L738>)


### StructType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L740>)


### StructType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L742>)


### StructType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L744>)


### StructType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L746>)


### StructType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L748>)


### StructType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L750>)


### StructType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L752>)


### StructType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L754>)


### StructType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L756>)


### StructType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L758>)


### StructType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L760>)


### StructType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L762>)


### StructType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L764>)


### StructType function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Name, ?fields:stdgo.Slice<stdgo._internal.internal.abi.StructField>):Void
```


[\(view code\)](<./Abi.hx#L725>)


### StructType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L766>)


### StructType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L768>)


### StructType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L770>)


### StructType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L772>)


### StructType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L774>)


### StructType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3386>)


### StructType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3384>)


### StructType function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3382>)


### StructType function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3380>)


### StructType function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3378>)


### StructType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3376>)


### StructType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3374>)


### StructType function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3372>)


### StructType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3370>)


### StructType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3368>)


### StructType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3366>)


### StructType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3364>)


### StructType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3362>)


### StructType function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L3360>)


### StructType function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3358>)


### StructType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3356>)


### StructType function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3354>)


### StructType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3352>)


### StructType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3350>)


### StructType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3348>)


### StructType function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3346>)


### StructType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3344>)


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


[\(view code\)](<./Abi.hx#L1908>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1910>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1912>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1914>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1916>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1918>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L1920>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L1922>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1924>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1926>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1928>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1930>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1932>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1934>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1936>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1938>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function new


```haxe
function new(?ptrType:stdgo._internal.internal.abi.PtrType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L1902>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1940>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L1942>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L1944>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L1946>)


### T\_uncommon\_\_\_localname\_\_\_u\_8324 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L1948>)


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


[\(view code\)](<./Abi.hx#L1963>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1965>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1967>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1969>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1971>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1973>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1975>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L1977>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1979>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1981>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function inSlice


```haxe
function inSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>
```


[\(view code\)](<./Abi.hx#L1985>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function in\_


```haxe
function in_(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1983>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1987>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1989>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function isVariadic


```haxe
function isVariadic():Bool
```


[\(view code\)](<./Abi.hx#L1991>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1993>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1995>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1997>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1999>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function new


```haxe
function new(?funcType:stdgo._internal.internal.abi.FuncType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L1957>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function numIn


```haxe
function numIn():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2001>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2003>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function numOut


```haxe
function numOut():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2005>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function out


```haxe
function out(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2007>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function outSlice


```haxe
function outSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Type_>>
```


[\(view code\)](<./Abi.hx#L2009>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2011>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2013>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2015>)


### T\_uncommon\_\_\_localname\_\_\_u\_8423 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2017>)


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


[\(view code\)](<./Abi.hx#L2032>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2034>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2036>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2038>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2040>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2042>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2044>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2046>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2048>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2050>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2052>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2054>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2056>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2058>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2060>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2062>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function new


```haxe
function new(?sliceType:stdgo._internal.internal.abi.SliceType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L2026>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2064>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2066>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2068>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2070>)


### T\_uncommon\_\_\_localname\_\_\_u\_8524 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2072>)


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


[\(view code\)](<./Abi.hx#L2087>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2089>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2091>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2093>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2095>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2097>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2099>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2101>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2103>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2105>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2107>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2109>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2111>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2113>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function new


```haxe
function new(?arrayType:stdgo._internal.internal.abi.ArrayType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L2081>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2115>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2117>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2119>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2121>)


### T\_uncommon\_\_\_localname\_\_\_u\_8626 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2123>)


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


[\(view code\)](<./Abi.hx#L2138>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2140>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2142>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2144>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2146>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2148>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2150>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2152>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2154>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2156>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2158>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2160>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2162>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2164>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2166>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2168>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function new


```haxe
function new(?chanType:stdgo._internal.internal.abi.ChanType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L2132>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2170>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2172>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2174>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2176>)


### T\_uncommon\_\_\_localname\_\_\_u\_8727 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2178>)


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


[\(view code\)](<./Abi.hx#L2193>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2195>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2197>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2199>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2201>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2203>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2205>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2207>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2209>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function hashMightPanic


```haxe
function hashMightPanic():Bool
```


[\(view code\)](<./Abi.hx#L2211>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2213>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function indirectElem


```haxe
function indirectElem():Bool
```


[\(view code\)](<./Abi.hx#L2215>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function indirectKey


```haxe
function indirectKey():Bool
```


[\(view code\)](<./Abi.hx#L2217>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2219>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2221>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2223>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2225>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function needKeyUpdate


```haxe
function needKeyUpdate():Bool
```


[\(view code\)](<./Abi.hx#L2227>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function new


```haxe
function new(?mapType:stdgo._internal.internal.abi.MapType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L2187>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2229>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2231>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function reflexiveKey


```haxe
function reflexiveKey():Bool
```


[\(view code\)](<./Abi.hx#L2233>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2235>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2237>)


### T\_uncommon\_\_\_localname\_\_\_u\_8826 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2239>)


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


[\(view code\)](<./Abi.hx#L2254>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2256>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2258>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2260>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2262>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2264>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2266>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2268>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2270>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2272>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2274>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2276>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2278>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2280>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2282>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2284>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function new


```haxe
function new(?interfaceType:stdgo._internal.internal.abi.InterfaceType, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L2248>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2286>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2288>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2290>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2292>)


### T\_uncommon\_\_\_localname\_\_\_u\_8930 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2294>)


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


[\(view code\)](<./Abi.hx#L2309>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2311>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2313>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2315>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2317>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2319>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2321>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2323>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2325>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2327>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2329>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2331>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2333>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L2335>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2337>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2339>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2341>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function new


```haxe
function new(?type:stdgo._internal.internal.abi.Type_, ?_u:stdgo._internal.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L2303>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2343>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2345>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2347>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2349>)


### T\_uncommon\_\_\_localname\_\_\_u\_9033 function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2351>)


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
function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:stdgo.GoUInt32, ?tflag:Null<stdgo._internal.internal.abi.TFlag>, ?align_:stdgo.GoUInt8, ?fieldAlign_:stdgo.GoUInt8, ?kind_:stdgo.GoUInt8, ?equal:(:stdgo._internal.unsafe.UnsafePointer, :stdgo._internal.unsafe.UnsafePointer):Bool, ?gcdata:stdgo.Pointer<stdgo.GoUInt8>, ?str:Null<stdgo._internal.internal.abi.NameOff>, ?ptrToThis:Null<stdgo._internal.internal.abi.TypeOff>):Void
```


[\(view code\)](<./Abi.hx#L168>)


### Type\_ function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1218>)


### Type\_ function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo._internal.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1266>)


### Type\_ function chanDir


```haxe
function chanDir():stdgo._internal.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1791>)


### Type\_ function common


```haxe
function common():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1822>)


### Type\_ function elem


```haxe
function elem():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1389>)


### Type\_ function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1204>)


### Type\_ function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1213>)


### Type\_ function funcType


```haxe
function funcType():stdgo.Ref<stdgo._internal.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L1247>)


### Type\_ function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Abi.hx#L1868>)


### Type\_ function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1888>)


### Type\_ function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1878>)


### Type\_ function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1228>)


### Type\_ function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1873>)


### Type\_ function key


```haxe
function key():stdgo.Ref<stdgo._internal.internal.abi.Type_>
```


[\(view code\)](<./Abi.hx#L1132>)


### Type\_ function kind


```haxe
function kind():stdgo._internal.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1893>)


### Type\_ function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1827>)


### Type\_ function mapType


```haxe
function mapType():stdgo.Ref<stdgo._internal.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1307>)


### Type\_ function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1184>)


### Type\_ function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L1883>)


### Type\_ function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L1223>)


### Type\_ function structType


```haxe
function structType():stdgo.Ref<stdgo._internal.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L1359>)


### Type\_ function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo._internal.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L1556>)


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
function new(?pkgPath:Null<stdgo._internal.internal.abi.NameOff>, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__1:stdgo.GoUInt32):Void
```


[\(view code\)](<./Abi.hx#L220>)


### UncommonType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2371>)


### UncommonType function methods


```haxe
function methods():stdgo.Slice<stdgo._internal.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2379>)


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


