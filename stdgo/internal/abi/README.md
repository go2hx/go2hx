# Module: `stdgo.internal.abi`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _addChecked(_p:stdgo.unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo.unsafe.UnsafePointer`](<#function-_addchecked>)

- [`function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void`](<#function-_assertisapoweroftwo>)

- [`function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_unsafeslicefor>)

- [`function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.GoString`](<#function-_unsafestringfor>)

- [`function _writeVarint(_buf:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.GoInt`](<#function-_writevarint>)

- [`function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#function-commonoffset>)

- [`function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-commonsize>)

- [`function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-funcpcabi0>)

- [`function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-funcpcabiinternal>)

- [`function imethodSize(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-imethodsize>)

- [`function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#function-initializedoffset>)

- [`function kindOff(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-kindoff>)

- [`function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):stdgo.internal.abi.Name`](<#function-newname>)

- [`function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#function-newoffset>)

- [`function ptrBytesOff(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-ptrbytesoff>)

- [`function sizeOff(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-sizeoff>)

- [`function structFieldSize(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-structfieldsize>)

- [`function tflagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt`](<#function-tflagoff>)

- [`function uncommonSize():stdgo.GoUInt64`](<#function-uncommonsize>)

- [class ArrayType](<#class-arraytype>)

  - [`function align():stdgo.GoInt`](<#arraytype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#arraytype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#arraytype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#arraytype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#arraytype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#arraytype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#arraytype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#arraytype-function-gcslice>)

  - [`function hasName():Bool`](<#arraytype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#arraytype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#arraytype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#arraytype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#arraytype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#arraytype-function-kind>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#arraytype-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?elem:stdgo.Ref<stdgo.internal.abi.Type>, ?slice:stdgo.Ref<stdgo.internal.abi.Type>, ?len:stdgo.GoUIntptr):Void`](<#arraytype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#arraytype-function-nummethod>)

  - [`function pointers():Bool`](<#arraytype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#arraytype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#arraytype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#arraytype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#arraytype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#arraytype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#arraytype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#arraytype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#arraytype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#arraytype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#arraytype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#arraytype-function-gcslice>)

  - [`function hasName():Bool`](<#arraytype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#arraytype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#arraytype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#arraytype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#arraytype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#arraytype-function-kind>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#arraytype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#arraytype-function-nummethod>)

  - [`function pointers():Bool`](<#arraytype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#arraytype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#arraytype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#arraytype-function-uncommon>)

- [class ChanType](<#class-chantype>)

  - [`function align():stdgo.GoInt`](<#chantype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#chantype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#chantype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#chantype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#chantype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#chantype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#chantype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#chantype-function-gcslice>)

  - [`function hasName():Bool`](<#chantype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#chantype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#chantype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#chantype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#chantype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#chantype-function-kind>)

  - [`function len():stdgo.GoInt`](<#chantype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#chantype-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?elem:stdgo.Ref<stdgo.internal.abi.Type>, ?dir:Null<stdgo.internal.abi.ChanDir>):Void`](<#chantype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#chantype-function-nummethod>)

  - [`function pointers():Bool`](<#chantype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#chantype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#chantype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#chantype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#chantype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#chantype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#chantype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#chantype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#chantype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#chantype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#chantype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#chantype-function-gcslice>)

  - [`function hasName():Bool`](<#chantype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#chantype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#chantype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#chantype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#chantype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#chantype-function-kind>)

  - [`function len():stdgo.GoInt`](<#chantype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#chantype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#chantype-function-nummethod>)

  - [`function pointers():Bool`](<#chantype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#chantype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#chantype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#chantype-function-uncommon>)

- [class FuncType](<#class-functype>)

  - [`function align():stdgo.GoInt`](<#functype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#functype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#functype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#functype-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#functype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#functype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#functype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#functype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#functype-function-gcslice>)

  - [`function hasName():Bool`](<#functype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#functype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#functype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#functype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#functype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#functype-function-kind>)

  - [`function len():stdgo.GoInt`](<#functype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#functype-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?inCount:stdgo.GoUInt16, ?outCount:stdgo.GoUInt16):Void`](<#functype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#functype-function-nummethod>)

  - [`function pointers():Bool`](<#functype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#functype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#functype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#functype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#functype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#functype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#functype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#functype-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#functype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#functype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#functype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#functype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#functype-function-gcslice>)

  - [`function hasName():Bool`](<#functype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#functype-function-ifaceindir>)

  - [`function inSlice():stdgo.Slice<stdgo.Ref<stdgo.internal.abi.Type>>`](<#functype-function-inslice>)

  - [`function in_( _i:stdgo.GoInt):stdgo.Ref<stdgo.internal.abi.Type>`](<#functype-function-in_>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#functype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#functype-function-isdirectiface>)

  - [`function isVariadic():Bool`](<#functype-function-isvariadic>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#functype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#functype-function-kind>)

  - [`function len():stdgo.GoInt`](<#functype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#functype-function-maptype>)

  - [`function numIn():stdgo.GoInt`](<#functype-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#functype-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#functype-function-numout>)

  - [`function out( _i:stdgo.GoInt):stdgo.Ref<stdgo.internal.abi.Type>`](<#functype-function-out>)

  - [`function outSlice():stdgo.Slice<stdgo.Ref<stdgo.internal.abi.Type>>`](<#functype-function-outslice>)

  - [`function pointers():Bool`](<#functype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#functype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#functype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#functype-function-uncommon>)

- [class Imethod](<#class-imethod>)

  - [`function new(?name:Null<stdgo.internal.abi.NameOff>, ?typ:Null<stdgo.internal.abi.TypeOff>):Void`](<#imethod-function-new>)

- [class InterfaceType](<#class-interfacetype>)

  - [`function align():stdgo.GoInt`](<#interfacetype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#interfacetype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#interfacetype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#interfacetype-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#interfacetype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#interfacetype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#interfacetype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#interfacetype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#interfacetype-function-gcslice>)

  - [`function hasName():Bool`](<#interfacetype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#interfacetype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#interfacetype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#interfacetype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#interfacetype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#interfacetype-function-kind>)

  - [`function len():stdgo.GoInt`](<#interfacetype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#interfacetype-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?pkgPath:stdgo.internal.abi.Name, ?methods:stdgo.Slice<stdgo.internal.abi.Imethod>):Void`](<#interfacetype-function-new>)

  - [`function pointers():Bool`](<#interfacetype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#interfacetype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#interfacetype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#interfacetype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#interfacetype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#interfacetype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#interfacetype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#interfacetype-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#interfacetype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#interfacetype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#interfacetype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#interfacetype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#interfacetype-function-gcslice>)

  - [`function hasName():Bool`](<#interfacetype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#interfacetype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#interfacetype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#interfacetype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#interfacetype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#interfacetype-function-kind>)

  - [`function len():stdgo.GoInt`](<#interfacetype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#interfacetype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#interfacetype-function-nummethod>)

  - [`function pointers():Bool`](<#interfacetype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#interfacetype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#interfacetype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#interfacetype-function-uncommon>)

- [class MapType](<#class-maptype>)

  - [`function align():stdgo.GoInt`](<#maptype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#maptype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#maptype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#maptype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#maptype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#maptype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#maptype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#maptype-function-gcslice>)

  - [`function hasName():Bool`](<#maptype-function-hasname>)

  - [`function hasher(:stdgo.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr`](<#maptype-function-hasher>)

  - [`function ifaceIndir():Bool`](<#maptype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#maptype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#maptype-function-isdirectiface>)

  - [`function kind():stdgo.internal.abi.Kind`](<#maptype-function-kind>)

  - [`function len():stdgo.GoInt`](<#maptype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#maptype-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?key:stdgo.Ref<stdgo.internal.abi.Type>, ?elem:stdgo.Ref<stdgo.internal.abi.Type>, ?bucket:stdgo.Ref<stdgo.internal.abi.Type>, ?hasher:(:stdgo.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr, ?keySize:stdgo.GoUInt8, ?valueSize:stdgo.GoUInt8, ?bucketSize:stdgo.GoUInt16, ?flags:stdgo.GoUInt32):Void`](<#maptype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#maptype-function-nummethod>)

  - [`function pointers():Bool`](<#maptype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#maptype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#maptype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#maptype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#maptype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#maptype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#maptype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#maptype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#maptype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#maptype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#maptype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#maptype-function-gcslice>)

  - [`function hasName():Bool`](<#maptype-function-hasname>)

  - [`function hashMightPanic():Bool`](<#maptype-function-hashmightpanic>)

  - [`function ifaceIndir():Bool`](<#maptype-function-ifaceindir>)

  - [`function indirectElem():Bool`](<#maptype-function-indirectelem>)

  - [`function indirectKey():Bool`](<#maptype-function-indirectkey>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#maptype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#maptype-function-isdirectiface>)

  - [`function kind():stdgo.internal.abi.Kind`](<#maptype-function-kind>)

  - [`function len():stdgo.GoInt`](<#maptype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#maptype-function-maptype>)

  - [`function needKeyUpdate():Bool`](<#maptype-function-needkeyupdate>)

  - [`function numMethod():stdgo.GoInt`](<#maptype-function-nummethod>)

  - [`function pointers():Bool`](<#maptype-function-pointers>)

  - [`function reflexiveKey():Bool`](<#maptype-function-reflexivekey>)

  - [`function size():stdgo.GoUIntptr`](<#maptype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#maptype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#maptype-function-uncommon>)

- [class Method](<#class-method>)

  - [`function new(?name:Null<stdgo.internal.abi.NameOff>, ?mtyp:Null<stdgo.internal.abi.TypeOff>, ?ifn:Null<stdgo.internal.abi.TextOff>, ?tfn:Null<stdgo.internal.abi.TextOff>):Void`](<#method-function-new>)

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

  - [`function _align_( _a:stdgo.GoUInt8):stdgo.internal.abi.Offset`](<#offset-function-align>)

  - [`function _plus( _x:stdgo.GoUInt64):stdgo.internal.abi.Offset`](<#offset-function-_plus>)

  - [`function align( _a:stdgo.GoUInt8):stdgo.internal.abi.Offset`](<#offset-function-align>)

  - [`function d16():stdgo.internal.abi.Offset`](<#offset-function-d16>)

  - [`function d32():stdgo.internal.abi.Offset`](<#offset-function-d32>)

  - [`function d64():stdgo.internal.abi.Offset`](<#offset-function-d64>)

  - [`function d8():stdgo.internal.abi.Offset`](<#offset-function-d8>)

  - [`function interface_():stdgo.internal.abi.Offset`](<#offset-function-interface_>)

  - [`function offset():stdgo.GoUInt64`](<#offset-function-offset>)

  - [`function p():stdgo.internal.abi.Offset`](<#offset-function-p>)

  - [`function plusUncommon():stdgo.internal.abi.Offset`](<#offset-function-plusuncommon>)

  - [`function slice():stdgo.internal.abi.Offset`](<#offset-function-slice>)

  - [`function string():stdgo.internal.abi.Offset`](<#offset-function-string>)

- [class PtrType](<#class-ptrtype>)

  - [`function align():stdgo.GoInt`](<#ptrtype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#ptrtype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#ptrtype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#ptrtype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#ptrtype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#ptrtype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#ptrtype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#ptrtype-function-gcslice>)

  - [`function hasName():Bool`](<#ptrtype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#ptrtype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#ptrtype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#ptrtype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#ptrtype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#ptrtype-function-kind>)

  - [`function len():stdgo.GoInt`](<#ptrtype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#ptrtype-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?elem:stdgo.Ref<stdgo.internal.abi.Type>):Void`](<#ptrtype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#ptrtype-function-nummethod>)

  - [`function pointers():Bool`](<#ptrtype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#ptrtype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#ptrtype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#ptrtype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#ptrtype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#ptrtype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#ptrtype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#ptrtype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#ptrtype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#ptrtype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#ptrtype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#ptrtype-function-gcslice>)

  - [`function hasName():Bool`](<#ptrtype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#ptrtype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#ptrtype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#ptrtype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#ptrtype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#ptrtype-function-kind>)

  - [`function len():stdgo.GoInt`](<#ptrtype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#ptrtype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#ptrtype-function-nummethod>)

  - [`function pointers():Bool`](<#ptrtype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#ptrtype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#ptrtype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#ptrtype-function-uncommon>)

- [class RegArgs](<#class-regargs>)

  - [`function new(?ints:stdgo.GoArray<stdgo.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo.unsafe.UnsafePointer>, ?returnIsPtr:Null<stdgo.internal.abi.IntArgRegBitmap>):Void`](<#regargs-function-new>)

  - [`function dump():Void`](<#regargs-function-dump>)

  - [`function intRegArgAddr( _reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo.unsafe.UnsafePointer`](<#regargs-function-intregargaddr>)

- [class SliceType](<#class-slicetype>)

  - [`function align():stdgo.GoInt`](<#slicetype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#slicetype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#slicetype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#slicetype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#slicetype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#slicetype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#slicetype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#slicetype-function-gcslice>)

  - [`function hasName():Bool`](<#slicetype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#slicetype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#slicetype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#slicetype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#slicetype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#slicetype-function-kind>)

  - [`function len():stdgo.GoInt`](<#slicetype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#slicetype-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?elem:stdgo.Ref<stdgo.internal.abi.Type>):Void`](<#slicetype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#slicetype-function-nummethod>)

  - [`function pointers():Bool`](<#slicetype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#slicetype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#slicetype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#slicetype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#slicetype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#slicetype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#slicetype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#slicetype-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#slicetype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#slicetype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#slicetype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#slicetype-function-gcslice>)

  - [`function hasName():Bool`](<#slicetype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#slicetype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#slicetype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#slicetype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#slicetype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#slicetype-function-kind>)

  - [`function len():stdgo.GoInt`](<#slicetype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#slicetype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#slicetype-function-nummethod>)

  - [`function pointers():Bool`](<#slicetype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#slicetype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#slicetype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#slicetype-function-uncommon>)

- [class StructField](<#class-structfield>)

  - [`function new(?name:stdgo.internal.abi.Name, ?typ:stdgo.Ref<stdgo.internal.abi.Type>, ?offset:stdgo.GoUIntptr):Void`](<#structfield-function-new>)

  - [`function embedded():Bool`](<#structfield-function-embedded>)

- [class StructType](<#class-structtype>)

  - [`function align():stdgo.GoInt`](<#structtype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#structtype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#structtype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#structtype-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#structtype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#structtype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#structtype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#structtype-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#structtype-function-gcslice>)

  - [`function hasName():Bool`](<#structtype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#structtype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#structtype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#structtype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#structtype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#structtype-function-kind>)

  - [`function len():stdgo.GoInt`](<#structtype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#structtype-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?pkgPath:stdgo.internal.abi.Name, ?fields:stdgo.Slice<stdgo.internal.abi.StructField>):Void`](<#structtype-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#structtype-function-nummethod>)

  - [`function pointers():Bool`](<#structtype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#structtype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#structtype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#structtype-function-uncommon>)

  - [`function align():stdgo.GoInt`](<#structtype-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#structtype-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#structtype-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#structtype-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#structtype-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#structtype-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#structtype-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#structtype-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#structtype-function-gcslice>)

  - [`function hasName():Bool`](<#structtype-function-hasname>)

  - [`function ifaceIndir():Bool`](<#structtype-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#structtype-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#structtype-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#structtype-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#structtype-function-kind>)

  - [`function len():stdgo.GoInt`](<#structtype-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#structtype-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#structtype-function-nummethod>)

  - [`function pointers():Bool`](<#structtype-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#structtype-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#structtype-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#structtype-function-uncommon>)

- [class T\_uncommon\_42\_\_\_localname\_\_\_u](<#class-t_uncommon_42localnameu>)

  - [`function align():stdgo.GoInt`](<#t_uncommon_42localnameu-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#t_uncommon_42localnameu-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#t_uncommon_42localnameu-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_42localnameu-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#t_uncommon_42localnameu-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommon_42localnameu-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#t_uncommon_42localnameu-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommon_42localnameu-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommon_42localnameu-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommon_42localnameu-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#t_uncommon_42localnameu-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommon_42localnameu-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_42localnameu-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#t_uncommon_42localnameu-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommon_42localnameu-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#t_uncommon_42localnameu-function-maptype>)

  - [`function new(?ptrType:stdgo.internal.abi.PtrType, ?_u:stdgo.internal.abi.UncommonType):Void`](<#t_uncommon_42localnameu-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommon_42localnameu-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommon_42localnameu-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommon_42localnameu-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#t_uncommon_42localnameu-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#t_uncommon_42localnameu-function-uncommon>)

- [class T\_uncommon\_43\_\_\_localname\_\_\_u](<#class-t_uncommon_43localnameu>)

  - [`function align():stdgo.GoInt`](<#t_uncommon_43localnameu-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#t_uncommon_43localnameu-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#t_uncommon_43localnameu-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_43localnameu-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_43localnameu-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#t_uncommon_43localnameu-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommon_43localnameu-function-fieldalign>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommon_43localnameu-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommon_43localnameu-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommon_43localnameu-function-ifaceindir>)

  - [`function inSlice():stdgo.Slice<stdgo.Ref<stdgo.internal.abi.Type>>`](<#t_uncommon_43localnameu-function-inslice>)

  - [`function in_(_i:stdgo.GoInt):stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_43localnameu-function-in_>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#t_uncommon_43localnameu-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommon_43localnameu-function-isdirectiface>)

  - [`function isVariadic():Bool`](<#t_uncommon_43localnameu-function-isvariadic>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_43localnameu-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#t_uncommon_43localnameu-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommon_43localnameu-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#t_uncommon_43localnameu-function-maptype>)

  - [`function new(?funcType:stdgo.internal.abi.FuncType, ?_u:stdgo.internal.abi.UncommonType):Void`](<#t_uncommon_43localnameu-function-new>)

  - [`function numIn():stdgo.GoInt`](<#t_uncommon_43localnameu-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommon_43localnameu-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#t_uncommon_43localnameu-function-numout>)

  - [`function out(_i:stdgo.GoInt):stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_43localnameu-function-out>)

  - [`function outSlice():stdgo.Slice<stdgo.Ref<stdgo.internal.abi.Type>>`](<#t_uncommon_43localnameu-function-outslice>)

  - [`function pointers():Bool`](<#t_uncommon_43localnameu-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommon_43localnameu-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#t_uncommon_43localnameu-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#t_uncommon_43localnameu-function-uncommon>)

- [class T\_uncommon\_44\_\_\_localname\_\_\_u](<#class-t_uncommon_44localnameu>)

  - [`function align():stdgo.GoInt`](<#t_uncommon_44localnameu-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#t_uncommon_44localnameu-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#t_uncommon_44localnameu-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_44localnameu-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#t_uncommon_44localnameu-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommon_44localnameu-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#t_uncommon_44localnameu-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommon_44localnameu-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommon_44localnameu-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommon_44localnameu-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#t_uncommon_44localnameu-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommon_44localnameu-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_44localnameu-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#t_uncommon_44localnameu-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommon_44localnameu-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#t_uncommon_44localnameu-function-maptype>)

  - [`function new(?sliceType:stdgo.internal.abi.SliceType, ?_u:stdgo.internal.abi.UncommonType):Void`](<#t_uncommon_44localnameu-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommon_44localnameu-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommon_44localnameu-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommon_44localnameu-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#t_uncommon_44localnameu-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#t_uncommon_44localnameu-function-uncommon>)

- [class T\_uncommon\_45\_\_\_localname\_\_\_u](<#class-t_uncommon_45localnameu>)

  - [`function align():stdgo.GoInt`](<#t_uncommon_45localnameu-function-align>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#t_uncommon_45localnameu-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_45localnameu-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#t_uncommon_45localnameu-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommon_45localnameu-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#t_uncommon_45localnameu-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommon_45localnameu-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommon_45localnameu-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommon_45localnameu-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#t_uncommon_45localnameu-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommon_45localnameu-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_45localnameu-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#t_uncommon_45localnameu-function-kind>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#t_uncommon_45localnameu-function-maptype>)

  - [`function new(?arrayType:stdgo.internal.abi.ArrayType, ?_u:stdgo.internal.abi.UncommonType):Void`](<#t_uncommon_45localnameu-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommon_45localnameu-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommon_45localnameu-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommon_45localnameu-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#t_uncommon_45localnameu-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#t_uncommon_45localnameu-function-uncommon>)

- [class T\_uncommon\_46\_\_\_localname\_\_\_u](<#class-t_uncommon_46localnameu>)

  - [`function align():stdgo.GoInt`](<#t_uncommon_46localnameu-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#t_uncommon_46localnameu-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#t_uncommon_46localnameu-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_46localnameu-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#t_uncommon_46localnameu-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommon_46localnameu-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#t_uncommon_46localnameu-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommon_46localnameu-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommon_46localnameu-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommon_46localnameu-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#t_uncommon_46localnameu-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommon_46localnameu-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_46localnameu-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#t_uncommon_46localnameu-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommon_46localnameu-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#t_uncommon_46localnameu-function-maptype>)

  - [`function new(?chanType:stdgo.internal.abi.ChanType, ?_u:stdgo.internal.abi.UncommonType):Void`](<#t_uncommon_46localnameu-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommon_46localnameu-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommon_46localnameu-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommon_46localnameu-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#t_uncommon_46localnameu-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#t_uncommon_46localnameu-function-uncommon>)

- [class T\_uncommon\_47\_\_\_localname\_\_\_u](<#class-t_uncommon_47localnameu>)

  - [`function align():stdgo.GoInt`](<#t_uncommon_47localnameu-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#t_uncommon_47localnameu-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#t_uncommon_47localnameu-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_47localnameu-function-common>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#t_uncommon_47localnameu-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommon_47localnameu-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#t_uncommon_47localnameu-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommon_47localnameu-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommon_47localnameu-function-hasname>)

  - [`function hashMightPanic():Bool`](<#t_uncommon_47localnameu-function-hashmightpanic>)

  - [`function ifaceIndir():Bool`](<#t_uncommon_47localnameu-function-ifaceindir>)

  - [`function indirectElem():Bool`](<#t_uncommon_47localnameu-function-indirectelem>)

  - [`function indirectKey():Bool`](<#t_uncommon_47localnameu-function-indirectkey>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#t_uncommon_47localnameu-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommon_47localnameu-function-isdirectiface>)

  - [`function kind():stdgo.internal.abi.Kind`](<#t_uncommon_47localnameu-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommon_47localnameu-function-len>)

  - [`function needKeyUpdate():Bool`](<#t_uncommon_47localnameu-function-needkeyupdate>)

  - [`function new(?mapType:stdgo.internal.abi.MapType, ?_u:stdgo.internal.abi.UncommonType):Void`](<#t_uncommon_47localnameu-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommon_47localnameu-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommon_47localnameu-function-pointers>)

  - [`function reflexiveKey():Bool`](<#t_uncommon_47localnameu-function-reflexivekey>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommon_47localnameu-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#t_uncommon_47localnameu-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#t_uncommon_47localnameu-function-uncommon>)

- [class T\_uncommon\_48\_\_\_localname\_\_\_u](<#class-t_uncommon_48localnameu>)

  - [`function align():stdgo.GoInt`](<#t_uncommon_48localnameu-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#t_uncommon_48localnameu-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#t_uncommon_48localnameu-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_48localnameu-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_48localnameu-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#t_uncommon_48localnameu-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommon_48localnameu-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#t_uncommon_48localnameu-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommon_48localnameu-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommon_48localnameu-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommon_48localnameu-function-ifaceindir>)

  - [`function isDirectIface():Bool`](<#t_uncommon_48localnameu-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_48localnameu-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#t_uncommon_48localnameu-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommon_48localnameu-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#t_uncommon_48localnameu-function-maptype>)

  - [`function new(?interfaceType:stdgo.internal.abi.InterfaceType, ?_u:stdgo.internal.abi.UncommonType):Void`](<#t_uncommon_48localnameu-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommon_48localnameu-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommon_48localnameu-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommon_48localnameu-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#t_uncommon_48localnameu-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#t_uncommon_48localnameu-function-uncommon>)

- [class T\_uncommon\_49\_\_\_localname\_\_\_u](<#class-t_uncommon_49localnameu>)

  - [`function align():stdgo.GoInt`](<#t_uncommon_49localnameu-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#t_uncommon_49localnameu-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#t_uncommon_49localnameu-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_49localnameu-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_49localnameu-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#t_uncommon_49localnameu-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#t_uncommon_49localnameu-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#t_uncommon_49localnameu-function-functype>)

  - [`function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>`](<#t_uncommon_49localnameu-function-gcslice>)

  - [`function hasName():Bool`](<#t_uncommon_49localnameu-function-hasname>)

  - [`function ifaceIndir():Bool`](<#t_uncommon_49localnameu-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#t_uncommon_49localnameu-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#t_uncommon_49localnameu-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#t_uncommon_49localnameu-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#t_uncommon_49localnameu-function-kind>)

  - [`function len():stdgo.GoInt`](<#t_uncommon_49localnameu-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#t_uncommon_49localnameu-function-maptype>)

  - [`function new(?type:stdgo.internal.abi.Type, ?_u:stdgo.internal.abi.UncommonType):Void`](<#t_uncommon_49localnameu-function-new>)

  - [`function numMethod():stdgo.GoInt`](<#t_uncommon_49localnameu-function-nummethod>)

  - [`function pointers():Bool`](<#t_uncommon_49localnameu-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#t_uncommon_49localnameu-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#t_uncommon_49localnameu-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#t_uncommon_49localnameu-function-uncommon>)

- [class Type](<#class-type>)

  - [`function equal(:stdgo.unsafe.UnsafePointer, :stdgo.unsafe.UnsafePointer):Bool`](<#type-function-equal>)

  - [`function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:stdgo.GoUInt32, ?tflag:Null<stdgo.internal.abi.TFlag>, ?align_:stdgo.GoUInt8, ?fieldAlign_:stdgo.GoUInt8, ?kind_:stdgo.GoUInt8, ?equal:(:stdgo.unsafe.UnsafePointer, :stdgo.unsafe.UnsafePointer):Bool, ?gcdata:stdgo.Pointer<stdgo.GoUInt8>, ?str:Null<stdgo.internal.abi.NameOff>, ?ptrToThis:Null<stdgo.internal.abi.TypeOff>):Void`](<#type-function-new>)

  - [`function align():stdgo.GoInt`](<#type-function-align>)

  - [`function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>`](<#type-function-arraytype>)

  - [`function chanDir():stdgo.internal.abi.ChanDir`](<#type-function-chandir>)

  - [`function common():stdgo.Ref<stdgo.internal.abi.Type>`](<#type-function-common>)

  - [`function elem():stdgo.Ref<stdgo.internal.abi.Type>`](<#type-function-elem>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#type-function-exportedmethods>)

  - [`function fieldAlign():stdgo.GoInt`](<#type-function-fieldalign>)

  - [`function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>`](<#type-function-functype>)

  - [`function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoByte>`](<#type-function-gcslice>)

  - [`function hasName():Bool`](<#type-function-hasname>)

  - [`function ifaceIndir():Bool`](<#type-function-ifaceindir>)

  - [`function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>`](<#type-function-interfacetype>)

  - [`function isDirectIface():Bool`](<#type-function-isdirectiface>)

  - [`function key():stdgo.Ref<stdgo.internal.abi.Type>`](<#type-function-key>)

  - [`function kind():stdgo.internal.abi.Kind`](<#type-function-kind>)

  - [`function len():stdgo.GoInt`](<#type-function-len>)

  - [`function mapType():stdgo.Ref<stdgo.internal.abi.MapType>`](<#type-function-maptype>)

  - [`function numMethod():stdgo.GoInt`](<#type-function-nummethod>)

  - [`function pointers():Bool`](<#type-function-pointers>)

  - [`function size():stdgo.GoUIntptr`](<#type-function-size>)

  - [`function structType():stdgo.Ref<stdgo.internal.abi.StructType>`](<#type-function-structtype>)

  - [`function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>`](<#type-function-uncommon>)

- [class UncommonType](<#class-uncommontype>)

  - [`function new(?pkgPath:Null<stdgo.internal.abi.NameOff>, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__1:stdgo.GoUInt32):Void`](<#uncommontype-function-new>)

  - [`function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>`](<#uncommontype-function-exportedmethods>)

  - [`function methods():stdgo.Slice<stdgo.internal.abi.Method>`](<#uncommontype-function-methods>)

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
import stdgo.internal.abi.Abi
```


```haxe
final argsSizeUnknown:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



ArgsSizeUnknown is set in Func.argsize to mark all functions
whose argument size is unknown \(C vararg functions, and
assembly code without an explicit specification\).
This value is generated by the compiler, assembler, or linker.  

```haxe
final array:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final bool_:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final bothDir:stdgo.internal.abi.ChanDir = ((3 : stdgo.internal.abi.Abi.ChanDir))
```



chan  

```haxe
final chan:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final complex128:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final complex64:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final effectiveFloatRegSize:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



EffectiveFloatRegSize describes the width of floating point
registers on the current platform from the ABI's perspective.  


Since Go only supports 32\-bit and 64\-bit floating point primitives,
this number should be either 0, 4, or 8. 0 indicates no floating
point registers for the ABI or that floating point values will be
passed via the softfloat ABI.  


For platforms that support larger floating point register widths,
such as x87's 80\-bit "registers" \(not that we support x87 currently\),
use 8.  

```haxe
final float32:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final float64:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final floatArgRegs:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



FloatArgRegs is the number of registers dedicated
to passing floating\-point argument values. Result registers are
identical to argument registers, so this number is used for
those too.  

```haxe
final func:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final funcFlagAsm:stdgo.internal.abi.FuncFlag = ((4 : stdgo.internal.abi.Abi.FuncFlag))
```



FuncFlagAsm indicates that a function was implemented in assembly.  

```haxe
final funcFlagSPWrite:stdgo.internal.abi.FuncFlag = ((4 : stdgo.internal.abi.Abi.FuncFlag))
```



FuncFlagSPWrite indicates a function that writes an arbitrary value to SP
\(any write other than adding or subtracting a constant amount\).
The traceback routines cannot encode such changes into the
pcsp tables, so the function traceback cannot safely unwind past
SPWrite functions. Stopping at an SPWrite function is considered
to be an incomplete unwinding of the stack. In certain contexts
\(in particular garbage collector stack scans\) that is a fatal error.  

```haxe
final funcFlagTopFrame:stdgo.internal.abi.FuncFlag = ((4 : stdgo.internal.abi.Abi.FuncFlag))
```



FuncFlagTopFrame indicates a function that appears at the top of its stack.
The traceback routine stop at such a function and consider that a
successful, complete traversal of the stack.
Examples of TopFrame functions include goexit, which appears
at the top of a user goroutine stack, and mstart, which appears
at the top of a system goroutine stack.  

```haxe
final funcIDNormal:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```



not a special function  

```haxe
final funcIDWrapper:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```



any autogenerated code \(hash/eq algorithms, method wrappers, etc.\)  

```haxe
final funcID_abort:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_asmcgocall:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_asyncPreempt:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_cgocallback:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_debugCallV2:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_gcBgMarkWorker:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_goexit:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_gogo:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_gopanic:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_handleAsyncEvent:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_mcall:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_morestack:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_mstart:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_panicwrap:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_rt0_go:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_runfinq:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_runtime_main:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_sigpanic:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_systemstack:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcID_systemstack_switch:stdgo.internal.abi.FuncID = ((21 : stdgo.internal.abi.Abi.FuncID))
```


```haxe
final funcdata_ArgInfo:stdgo.GoUInt64 = ((5i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final funcdata_ArgLiveInfo:stdgo.GoUInt64 = ((6i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final funcdata_ArgsPointerMaps:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final funcdata_InlTree:stdgo.GoUInt64 = ((3i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final funcdata_LocalsPointerMaps:stdgo.GoUInt64 = ((1i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final funcdata_OpenCodedDeferInfo:stdgo.GoUInt64 = ((4i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final funcdata_StackObjects:stdgo.GoUInt64 = ((2i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final funcdata_WrapInfo:stdgo.GoUInt64 = ((7i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final int16:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final int32:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final int64:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final int8:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final intArgRegs:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



IntArgRegs is the number of registers dedicated
to passing integer argument values. Result registers are identical
to argument registers, so this number is used for those too.  

```haxe
final int_:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final interface_:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final invalid:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final invalidDir:stdgo.internal.abi.ChanDir = ((0 : stdgo.internal.abi.Abi.ChanDir))
```


```haxe
final kindDirectIface:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```



TODO \(khr, drchase\) why aren't these in TFlag?  Investigate, fix if possible.  

```haxe
final kindGCProg:stdgo.GoUInt64 = ((64i64 : stdgo.StdGoTypes.GoUInt64))
```



Type.gc points to GC program  

```haxe
final kindMask:stdgo.GoUInt64 = ((31i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final map:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final mapBucketCount:stdgo.GoUInt64 = ((8i64 : stdgo.StdGoTypes.GoUInt64))
```



Map constants common to several packages
runtime/runtime\-gdb.py:MapTypePrinter contains its own copy  

```haxe
final mapBucketCountBits:stdgo.GoUInt64 = ((3i64 : stdgo.StdGoTypes.GoUInt64))
```



Map constants common to several packages
runtime/runtime\-gdb.py:MapTypePrinter contains its own copy  


log2 of number of elements in a bucket.  

```haxe
final mapMaxElemBytes:stdgo.GoUInt64 = ((128i64 : stdgo.StdGoTypes.GoUInt64))
```



Map constants common to several packages
runtime/runtime\-gdb.py:MapTypePrinter contains its own copy  


Must fit in a uint8.  

```haxe
final mapMaxKeyBytes:stdgo.GoUInt64 = ((128i64 : stdgo.StdGoTypes.GoUInt64))
```



Map constants common to several packages
runtime/runtime\-gdb.py:MapTypePrinter contains its own copy  


Must fit in a uint8.  

```haxe
final pcdata_ArgLiveIndex:stdgo.GoUInt64 = ((3i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final pcdata_InlTreeIndex:stdgo.GoUInt64 = ((2i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final pcdata_StackMapIndex:stdgo.GoUInt64 = ((1i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final pcdata_UnsafePoint:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



IDs for PCDATA and FUNCDATA tables in Go binaries.  


These must agree with ../../../runtime/funcdata.h.  

```haxe
final pointer:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final recvDir:stdgo.internal.abi.ChanDir = ((2 : stdgo.internal.abi.Abi.ChanDir))
```



\<\-chan  

```haxe
final sendDir:stdgo.internal.abi.ChanDir = ((2 : stdgo.internal.abi.Abi.ChanDir))
```



chan\<\-  

```haxe
final slice:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final stackBig:stdgo.GoUInt64 = ((4096i64 : stdgo.StdGoTypes.GoUInt64))
```



Functions that need frames \<= StackBig can assume that neither
SP\-framesize nor stackGuard\-StackSmall will underflow, and thus use a
more efficient check. In order to ensure this, StackBig must be \<= the
size of the unmapped space at zero.  

```haxe
final stackNosplitBase:stdgo.GoUInt64 = ((800i64 : stdgo.StdGoTypes.GoUInt64))
```



StackNosplitBase is the base maximum number of bytes that a chain of
NOSPLIT functions can use.  


This value must be multiplied by the stack guard multiplier, so do not
use it directly. See runtime/stack.go:stackNosplit and
cmd/internal/objabi/stack.go:StackNosplit.  

```haxe
final stackSmall:stdgo.GoUInt64 = ((128i64 : stdgo.StdGoTypes.GoUInt64))
```



After a stack split check the SP is allowed to be StackSmall bytes below
the stack guard.  


Functions that need frames \<= StackSmall can perform the stack check
using a single comparison directly between the stack guard and the SP
because we ensure that StackSmall bytes of stack space are available
beyond the stack guard.  

```haxe
final string:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final struct_:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final tflagExtraStar:stdgo.internal.abi.TFlag = ((2 : stdgo.internal.abi.Abi.TFlag))
```



TFlagExtraStar means the name in the str field has an
extraneous '\*' prefix. This is because for most types T in
a program, the type \*T also exists and reusing the str data
saves binary size.  

```haxe
final tflagNamed:stdgo.internal.abi.TFlag = ((4 : stdgo.internal.abi.Abi.TFlag))
```



TFlagNamed means the type has a name.  

```haxe
final tflagRegularMemory:stdgo.internal.abi.TFlag = ((8 : stdgo.internal.abi.Abi.TFlag))
```



TFlagRegularMemory means that equal and hash functions can treat
this type as a single region of t.size bytes.  

```haxe
final tflagUncommon:stdgo.internal.abi.TFlag = ((1 : stdgo.internal.abi.Abi.TFlag))
```



TFlagUncommon means that there is a data with a type, UncommonType,
just beyond the shared\-per\-type common data.  That is, the data
for struct types will store their UncommonType at one offset, the
data for interface types will store their UncommonType at a different
offset.  UncommonType is always accessed via a pointer that is computed
using trust\-us\-we\-are\-the\-implementors pointer arithmetic.  


For example, if t.Kind\(\) == Struct and t.tflag&TFlagUncommon \!= 0,
then t has UncommonType data and it can be accessed as:  

```
	type structTypeUncommon struct {
		structType
		u UncommonType
	}
	u := &(*structTypeUncommon)(unsafe.Pointer(t)).u
```
```haxe
final uint:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final uint16:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final uint32:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final uint64:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final uint8:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final uintptr:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


```haxe
final unsafePointRestart1:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



UnsafePointRestart1\(2\) apply on a sequence of instructions, within
which if an async preemption happens, we should back off the PC
to the start of the sequence when resuming.
We need two so we can distinguish the start/end of the sequence
in case that two sequences are next to each other.  

```haxe
final unsafePointRestart2:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



Special values for the PCDATA\_UnsafePoint table.  

```haxe
final unsafePointRestartAtEntry:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



Like UnsafePointRestart1, but back to function entry if async preempted.  

```haxe
final unsafePointSafe:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



Special values for the PCDATA\_UnsafePoint table.  


Safe for async preemption  

```haxe
final unsafePointUnsafe:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



Special values for the PCDATA\_UnsafePoint table.  


Unsafe for async preemption  

```haxe
final unsafePointer:stdgo.internal.abi.Kind = ((26u32 : stdgo.internal.abi.Abi.Kind))
```


# Variables


```haxe
import stdgo.internal.abi.Abi
```


```haxe
var _kindNames:stdgo.Slice<stdgo.GoString>
```


# Functions


```haxe
import stdgo.internal.abi.Abi
```


## function \_addChecked


```haxe
function _addChecked(_p:stdgo.unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo.unsafe.UnsafePointer
```



addChecked returns p\+x.  


The whySafe string is ignored, so that the function still inlines
as efficiently as p\+x, but all call sites should use the string to
record why the addition is safe, which is to say why the addition
does not cause x to advance to the very end of p's allocation
and therefore point incorrectly at the next block in memory.  

[\(view code\)](<./Abi.hx#L1648>)


## function \_assertIsAPowerOfTwo


```haxe
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Abi.hx#L1590>)


## function \_unsafeSliceFor


```haxe
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Abi.hx#L1707>)


## function \_unsafeStringFor


```haxe
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Abi.hx#L1704>)


## function \_writeVarint


```haxe
function _writeVarint(_buf:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.GoInt
```



writeVarint writes n to buf in varint form. Returns the
number of bytes written. n must be nonnegative.
Writes at most 10 bytes.  

[\(view code\)](<./Abi.hx#L1656>)


## function commonOffset


```haxe
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



CommonOffset returns the Offset to the data after the common portion of type data structures.  

[\(view code\)](<./Abi.hx#L1612>)


## function commonSize


```haxe
function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```



CommonSize returns sizeof\(Type\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1535>)


## function funcPCABI0


```haxe
function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr
```



FuncPCABI0 returns the entry PC of the function f, which must be a
direct reference of a function defined as ABI0. Otherwise it is a
compile\-time error.  


Implemented as a compile intrinsic.  

[\(view code\)](<./Abi.hx#L1622>)


## function funcPCABIInternal


```haxe
function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr
```



FuncPCABIInternal returns the entry PC of the function f. If f is a
direct reference of a function, it must be defined as ABIInternal.
Otherwise it is a compile\-time error. If f is not a direct reference
of a defined function, it assumes that f is a func value. Otherwise
the behavior is undefined.  


Implemented as a compile intrinsic.  

[\(view code\)](<./Abi.hx#L1635>)


## function imethodSize


```haxe
function imethodSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```



IMethodSize returns sizeof\(IMethod\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1554>)


## function initializedOffset


```haxe
function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.  

[\(view code\)](<./Abi.hx#L1602>)


## function kindOff


```haxe
function kindOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```



KindOff returns the offset of Type.Kind\_ for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1560>)


## function newName


```haxe
function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):stdgo.internal.abi.Name
```


[\(view code\)](<./Abi.hx#L1670>)


## function newOffset


```haxe
function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



NewOffset returns a new Offset with offset 0 and alignment 1.  

[\(view code\)](<./Abi.hx#L1584>)


## function ptrBytesOff


```haxe
function ptrBytesOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```



PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1572>)


## function sizeOff


```haxe
function sizeOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```



SizeOff returns the offset of Type.Size\_ for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1566>)


## function structFieldSize


```haxe
function structFieldSize(_ptrSize:stdgo.GoInt):stdgo.GoInt
```



StructFieldSize returns sizeof\(StructField\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1541>)


## function tflagOff


```haxe
function tflagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt
```



TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1578>)


## function uncommonSize


```haxe
function uncommonSize():stdgo.GoUInt64
```



UncommonSize returns sizeof\(UncommonType\).  This currently does not depend on ptrSize.
This exported function is in an internal package, so it may change to depend on ptrSize in the future.  

[\(view code\)](<./Abi.hx#L1548>)


# Classes


```haxe
import stdgo.internal.abi.*
```


## class ArrayType



ArrayType represents a fixed array type.  

```haxe
var elem:stdgo.Ref<stdgo.internal.abi.Type>
```


```haxe
var len:stdgo.GoUIntptr
```


```haxe
var slice:stdgo.Ref<stdgo.internal.abi.Type>
```


```haxe
var type:stdgo.internal.abi.Type
```


### ArrayType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L899>)


### ArrayType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L901>)


### ArrayType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L903>)


### ArrayType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L905>)


### ArrayType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L907>)


### ArrayType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L909>)


### ArrayType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L911>)


### ArrayType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L913>)


### ArrayType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L915>)


### ArrayType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L917>)


### ArrayType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L919>)


### ArrayType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L921>)


### ArrayType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L923>)


### ArrayType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L925>)


### ArrayType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L927>)


### ArrayType function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?elem:stdgo.Ref<stdgo.internal.abi.Type>, ?slice:stdgo.Ref<stdgo.internal.abi.Type>, ?len:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Abi.hx#L891>)


### ArrayType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L929>)


### ArrayType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L931>)


### ArrayType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L933>)


### ArrayType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L935>)


### ArrayType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L937>)


### ArrayType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3484>)


### ArrayType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3482>)


### ArrayType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3480>)


### ArrayType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3478>)


### ArrayType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3476>)


### ArrayType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3474>)


### ArrayType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3472>)


### ArrayType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3470>)


### ArrayType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3468>)


### ArrayType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3466>)


### ArrayType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3464>)


### ArrayType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3462>)


### ArrayType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3460>)


### ArrayType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3458>)


### ArrayType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3456>)


### ArrayType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3454>)


### ArrayType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3452>)


### ArrayType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3450>)


### ArrayType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3448>)


### ArrayType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3446>)


## class ChanType



ChanType represents a channel type  

```haxe
var dir:stdgo.internal.abi.ChanDir
```


```haxe
var elem:stdgo.Ref<stdgo.internal.abi.Type>
```


```haxe
var type:stdgo.internal.abi.Type
```


### ChanType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L959>)


### ChanType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L961>)


### ChanType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L963>)


### ChanType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L965>)


### ChanType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L967>)


### ChanType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L969>)


### ChanType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L971>)


### ChanType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L973>)


### ChanType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L975>)


### ChanType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L977>)


### ChanType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L979>)


### ChanType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L981>)


### ChanType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L983>)


### ChanType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L985>)


### ChanType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L987>)


### ChanType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L989>)


### ChanType function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?elem:stdgo.Ref<stdgo.internal.abi.Type>, ?dir:Null<stdgo.internal.abi.ChanDir>):Void
```


[\(view code\)](<./Abi.hx#L952>)


### ChanType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L991>)


### ChanType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L993>)


### ChanType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L995>)


### ChanType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L997>)


### ChanType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L999>)


### ChanType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3579>)


### ChanType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3577>)


### ChanType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3575>)


### ChanType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3573>)


### ChanType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3571>)


### ChanType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3569>)


### ChanType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3567>)


### ChanType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3565>)


### ChanType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3563>)


### ChanType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3561>)


### ChanType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3559>)


### ChanType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3557>)


### ChanType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3555>)


### ChanType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3553>)


### ChanType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3551>)


### ChanType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3549>)


### ChanType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3547>)


### ChanType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3545>)


### ChanType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3543>)


### ChanType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3541>)


### ChanType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3539>)


## class FuncType



funcType represents a function type.  


A \*Type for each in and out parameter is stored in an array that
directly follows the funcType \(and possibly its uncommonType\). So
a function type with one method, one input, and one output is:  

```
	struct {
		funcType
		uncommonType
		[2]*rtype    // [0] is in, [1] is out
	}
```
```haxe
var inCount:stdgo.GoUInt16
```


```haxe
var outCount:stdgo.GoUInt16
```


```haxe
var type:stdgo.internal.abi.Type
```


### FuncType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1288>)


### FuncType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1290>)


### FuncType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1292>)


### FuncType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1294>)


### FuncType function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1296>)


### FuncType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1298>)


### FuncType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1300>)


### FuncType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L1302>)


### FuncType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L1304>)


### FuncType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1306>)


### FuncType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1308>)


### FuncType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1310>)


### FuncType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1312>)


### FuncType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1314>)


### FuncType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1316>)


### FuncType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1318>)


### FuncType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1320>)


### FuncType function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?inCount:stdgo.GoUInt16, ?outCount:stdgo.GoUInt16):Void
```


[\(view code\)](<./Abi.hx#L1281>)


### FuncType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1322>)


### FuncType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L1324>)


### FuncType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L1326>)


### FuncType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L1328>)


### FuncType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L1330>)


### FuncType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4196>)


### FuncType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L4194>)


### FuncType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L4192>)


### FuncType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4190>)


### FuncType function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4188>)


### FuncType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L4186>)


### FuncType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4184>)


### FuncType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L4182>)


### FuncType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L4180>)


### FuncType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L4178>)


### FuncType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L4176>)


### FuncType function inSlice


```haxe
function inSlice():stdgo.Slice<stdgo.Ref<stdgo.internal.abi.Type>>
```


[\(view code\)](<./Abi.hx#L4111>)


### FuncType function in\_


```haxe
function in_( _i:stdgo.GoInt):stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4149>)


### FuncType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L4174>)


### FuncType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L4172>)


### FuncType function isVariadic


```haxe
function isVariadic():Bool
```


[\(view code\)](<./Abi.hx#L4082>)


### FuncType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4170>)


### FuncType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L4168>)


### FuncType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4166>)


### FuncType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L4164>)


### FuncType function numIn


```haxe
function numIn():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4144>)


### FuncType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4162>)


### FuncType function numOut


```haxe
function numOut():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4139>)


### FuncType function out


```haxe
function out( _i:stdgo.GoInt):stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4134>)


### FuncType function outSlice


```haxe
function outSlice():stdgo.Slice<stdgo.Ref<stdgo.internal.abi.Type>>
```


[\(view code\)](<./Abi.hx#L4087>)


### FuncType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L4160>)


### FuncType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L4158>)


### FuncType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L4156>)


### FuncType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L4154>)


## class Imethod



Imethod represents a method on an interface type  

```haxe
var name:stdgo.internal.abi.NameOff
```


```haxe
var typ:stdgo.internal.abi.TypeOff
```


### Imethod function new


```haxe
function new(?name:Null<stdgo.internal.abi.NameOff>, ?typ:Null<stdgo.internal.abi.TypeOff>):Void
```


[\(view code\)](<./Abi.hx#L871>)


## class InterfaceType


```haxe
var methods:stdgo.Slice<stdgo.internal.abi.Imethod>
```


```haxe
var pkgPath:stdgo.internal.abi.Name
```


```haxe
var type:stdgo.internal.abi.Type
```


### InterfaceType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1081>)


### InterfaceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1083>)


### InterfaceType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1085>)


### InterfaceType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1087>)


### InterfaceType function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1089>)


### InterfaceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1091>)


### InterfaceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1093>)


### InterfaceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L1095>)


### InterfaceType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L1097>)


### InterfaceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1099>)


### InterfaceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1101>)


### InterfaceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1103>)


### InterfaceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1105>)


### InterfaceType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1107>)


### InterfaceType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1109>)


### InterfaceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1111>)


### InterfaceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1113>)


### InterfaceType function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?pkgPath:stdgo.internal.abi.Name, ?methods:stdgo.Slice<stdgo.internal.abi.Imethod>):Void
```


[\(view code\)](<./Abi.hx#L1074>)


### InterfaceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L1115>)


### InterfaceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L1117>)


### InterfaceType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L1119>)


### InterfaceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L1121>)


### InterfaceType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3782>)


### InterfaceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3780>)


### InterfaceType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3778>)


### InterfaceType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3776>)


### InterfaceType function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3774>)


### InterfaceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3772>)


### InterfaceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3770>)


### InterfaceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3768>)


### InterfaceType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3766>)


### InterfaceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3764>)


### InterfaceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3762>)


### InterfaceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3760>)


### InterfaceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3758>)


### InterfaceType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3756>)


### InterfaceType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3754>)


### InterfaceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3752>)


### InterfaceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3750>)


### InterfaceType function numMethod


```haxe
function numMethod():stdgo.GoInt
```



NumMethod returns the number of interface methods in the type's method set.  

[\(view code\)](<./Abi.hx#L3737>)


### InterfaceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3748>)


### InterfaceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3746>)


### InterfaceType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3744>)


### InterfaceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3742>)


## class MapType


```haxe
var bucket:stdgo.Ref<stdgo.internal.abi.Type>
```


```haxe
var bucketSize:stdgo.GoUInt16
```


```haxe
var elem:stdgo.Ref<stdgo.internal.abi.Type>
```


```haxe
var flags:stdgo.GoUInt32
```


```haxe
var key:stdgo.Ref<stdgo.internal.abi.Type>
```


```haxe
var keySize:stdgo.GoUInt8
```


```haxe
var type:stdgo.internal.abi.Type
```


```haxe
var valueSize:stdgo.GoUInt8
```


### MapType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1158>)


### MapType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1160>)


### MapType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1162>)


### MapType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1164>)


### MapType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1166>)


### MapType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1168>)


### MapType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L1170>)


### MapType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L1172>)


### MapType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1174>)


### MapType function hasher


```haxe
function hasher(:stdgo.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr
```



function for hashing keys \(ptr to key, seed\) \-\> hash  

### MapType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1176>)


### MapType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1178>)


### MapType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1180>)


### MapType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1182>)


### MapType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1184>)


### MapType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1186>)


### MapType function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?key:stdgo.Ref<stdgo.internal.abi.Type>, ?elem:stdgo.Ref<stdgo.internal.abi.Type>, ?bucket:stdgo.Ref<stdgo.internal.abi.Type>, ?hasher:(:stdgo.unsafe.UnsafePointer, :stdgo.GoUIntptr):stdgo.GoUIntptr, ?keySize:stdgo.GoUInt8, ?valueSize:stdgo.GoUInt8, ?bucketSize:stdgo.GoUInt16, ?flags:stdgo.GoUInt32):Void
```


[\(view code\)](<./Abi.hx#L1145>)


### MapType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1188>)


### MapType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L1190>)


### MapType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L1192>)


### MapType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L1194>)


### MapType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L1196>)


### MapType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3916>)


### MapType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3914>)


### MapType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3912>)


### MapType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3910>)


### MapType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3908>)


### MapType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3906>)


### MapType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3904>)


### MapType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3902>)


### MapType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3900>)


### MapType function hashMightPanic


```haxe
function hashMightPanic():Bool
```


[\(view code\)](<./Abi.hx#L3849>)


### MapType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3898>)


### MapType function indirectElem


```haxe
function indirectElem():Bool
```


[\(view code\)](<./Abi.hx#L3864>)


### MapType function indirectKey


```haxe
function indirectKey():Bool
```



Note: flag values must match those used in the TMAP case
in ../cmd/compile/internal/reflectdata/reflect.go:writeType.  

[\(view code\)](<./Abi.hx#L3873>)


### MapType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3896>)


### MapType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3894>)


### MapType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3892>)


### MapType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3890>)


### MapType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3888>)


### MapType function needKeyUpdate


```haxe
function needKeyUpdate():Bool
```


[\(view code\)](<./Abi.hx#L3854>)


### MapType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3886>)


### MapType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3884>)


### MapType function reflexiveKey


```haxe
function reflexiveKey():Bool
```


[\(view code\)](<./Abi.hx#L3859>)


### MapType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3882>)


### MapType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3880>)


### MapType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3878>)


## class Method



Method on non\-interface type  

```haxe
var ifn:stdgo.internal.abi.TextOff
```


```haxe
var mtyp:stdgo.internal.abi.TypeOff
```


```haxe
var name:stdgo.internal.abi.NameOff
```


```haxe
var tfn:stdgo.internal.abi.TextOff
```


### Method function new


```haxe
function new(?name:Null<stdgo.internal.abi.NameOff>, ?mtyp:Null<stdgo.internal.abi.TypeOff>, ?ifn:Null<stdgo.internal.abi.TextOff>, ?tfn:Null<stdgo.internal.abi.TextOff>):Void
```


[\(view code\)](<./Abi.hx#L825>)


## class Name


```haxe
var bytes:stdgo.Pointer<stdgo.GoUInt8>
```


### Name function new


```haxe
function new(?bytes:stdgo.Pointer<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Abi.hx#L1485>)


### Name function data


```haxe
function data( _off:stdgo.GoInt):stdgo.Pointer<stdgo.GoByte>
```



Data does pointer arithmetic on n's Bytes, and that arithmetic is asserted to
be safe because the runtime made the call \(other packages use DataChecked\)  

[\(view code\)](<./Abi.hx#L4553>)


### Name function dataChecked


```haxe
function dataChecked( _off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoByte>
```



DataChecked does pointer arithmetic on n's Bytes, and that arithmetic is asserted to
be safe for the reason in whySafe \(which can appear in a backtrace, etc.\)  

[\(view code\)](<./Abi.hx#L4562>)


### Name function hasTag


```haxe
function hasTag():Bool
```



HasTag returns true iff there is tag data following this name  

[\(view code\)](<./Abi.hx#L4536>)


### Name function isBlank


```haxe
function isBlank():Bool
```



IsBlank indicates whether n is "\_".  

[\(view code\)](<./Abi.hx#L4497>)


### Name function isEmbedded


```haxe
function isEmbedded():Bool
```



IsEmbedded returns true iff n is embedded \(an anonymous field\).  

[\(view code\)](<./Abi.hx#L4528>)


### Name function isExported


```haxe
function isExported():Bool
```



IsExported returns "is n exported?"  

[\(view code\)](<./Abi.hx#L4544>)


### Name function name


```haxe
function name():stdgo.GoString
```



Name returns the tag string for n, or empty if there is none.  

[\(view code\)](<./Abi.hx#L4485>)


### Name function readVarint


```haxe
function readVarint( _off:stdgo.GoInt):{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



ReadVarint parses a varint as encoded by encoding/binary.
It returns the number of encoded bytes and the encoded value.  

[\(view code\)](<./Abi.hx#L4510>)


### Name function tag


```haxe
function tag():stdgo.GoString
```



Tag returns the tag string for n, or empty if there is none.  

[\(view code\)](<./Abi.hx#L4472>)


## class Offset



Offset is for computing offsets of type data structures at compile/link time;
the target platform may not be the host platform.  Its state includes the
current offset, necessary alignment for the sequence of types, and the size
of pointers and alignment of slices, interfaces, and strings \(this is for tearing\-
resistant access to these types, if/when that is supported\).  

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


[\(view code\)](<./Abi.hx#L741>)


### Offset function \_align\_


```haxe
function _align_( _a:stdgo.GoUInt8):stdgo.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1958>)


### Offset function \_plus


```haxe
function _plus( _x:stdgo.GoUInt64):stdgo.internal.abi.Offset
```



plus returns the offset obtained by appending a power\-of\-2\-sized\-and\-aligned object to o.  

[\(view code\)](<./Abi.hx#L1941>)


### Offset function align


```haxe
function align( _a:stdgo.GoUInt8):stdgo.internal.abi.Offset
```



Align returns the offset obtained by aligning offset to a multiple of a.
a must be a power of two.  

[\(view code\)](<./Abi.hx#L1952>)


### Offset function d16


```haxe
function d16():stdgo.internal.abi.Offset
```



D16 returns the offset obtained by appending a 16\-bit field to o.  

[\(view code\)](<./Abi.hx#L1925>)


### Offset function d32


```haxe
function d32():stdgo.internal.abi.Offset
```



D32 returns the offset obtained by appending a 32\-bit field to o.  

[\(view code\)](<./Abi.hx#L1917>)


### Offset function d64


```haxe
function d64():stdgo.internal.abi.Offset
```



D64 returns the offset obtained by appending a 64\-bit field to o.  

[\(view code\)](<./Abi.hx#L1909>)


### Offset function d8


```haxe
function d8():stdgo.internal.abi.Offset
```



D8 returns the offset obtained by appending an 8\-bit field to o.  

[\(view code\)](<./Abi.hx#L1933>)


### Offset function interface\_


```haxe
function interface_():stdgo.internal.abi.Offset
```



Interface returns the offset obtained by appending an interface field to o.  

[\(view code\)](<./Abi.hx#L1868>)


### Offset function offset


```haxe
function offset():stdgo.GoUInt64
```



Offset returns the struct\-aligned offset \(size\) of o.
This is at least as large as the current internal offset; it may be larger.  

[\(view code\)](<./Abi.hx#L1860>)


### Offset function p


```haxe
function p():stdgo.internal.abi.Offset
```



D64 returns the offset obtained by appending a pointer field to o.  

[\(view code\)](<./Abi.hx#L1898>)


### Offset function plusUncommon


```haxe
function plusUncommon():stdgo.internal.abi.Offset
```


[\(view code\)](<./Abi.hx#L1850>)


### Offset function slice


```haxe
function slice():stdgo.internal.abi.Offset
```



Slice returns the offset obtained by appending a slice field to o.  

[\(view code\)](<./Abi.hx#L1888>)


### Offset function string


```haxe
function string():stdgo.internal.abi.Offset
```



String returns the offset obtained by appending a string field to o.  

[\(view code\)](<./Abi.hx#L1878>)


## class PtrType


```haxe
var elem:stdgo.Ref<stdgo.internal.abi.Type>
```


```haxe
var type:stdgo.internal.abi.Type
```


### PtrType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1350>)


### PtrType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1352>)


### PtrType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1354>)


### PtrType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1356>)


### PtrType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1358>)


### PtrType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1360>)


### PtrType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L1362>)


### PtrType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L1364>)


### PtrType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1366>)


### PtrType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1368>)


### PtrType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1370>)


### PtrType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1372>)


### PtrType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1374>)


### PtrType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1376>)


### PtrType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1378>)


### PtrType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1380>)


### PtrType function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?elem:stdgo.Ref<stdgo.internal.abi.Type>):Void
```


[\(view code\)](<./Abi.hx#L1344>)


### PtrType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1382>)


### PtrType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L1384>)


### PtrType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L1386>)


### PtrType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L1388>)


### PtrType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L1390>)


### PtrType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4291>)


### PtrType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L4289>)


### PtrType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L4287>)


### PtrType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4285>)


### PtrType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L4283>)


### PtrType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4281>)


### PtrType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L4279>)


### PtrType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L4277>)


### PtrType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L4275>)


### PtrType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L4273>)


### PtrType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L4271>)


### PtrType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L4269>)


### PtrType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4267>)


### PtrType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L4265>)


### PtrType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4263>)


### PtrType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L4261>)


### PtrType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4259>)


### PtrType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L4257>)


### PtrType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L4255>)


### PtrType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L4253>)


### PtrType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L4251>)


## class RegArgs



RegArgs is a struct that has space for each argument
and return value register on the current architecture.  


Assembly code knows the layout of the first two fields
of RegArgs.  


RegArgs also contains additional space to hold pointers
when it may not be safe to keep them only in the integer
register space otherwise.  

```haxe
var floats:stdgo.GoArray<stdgo.GoUInt64>
```


```haxe
var ints:stdgo.GoArray<stdgo.GoUIntptr>
```



Values in these slots should be precisely the bit\-by\-bit
representation of how they would appear in a register.  


This means that on big endian arches, integer values should
be in the top bits of the slot. Floats are usually just
directly represented, but some architectures treat narrow
width floating point values specially \(e.g. they're promoted
first, or they need to be NaN\-boxed\).  

```haxe
var ptrs:stdgo.GoArray<stdgo.unsafe.UnsafePointer>
```



Ptrs is a space that duplicates Ints but with pointer type,
used to make pointers passed or returned  in registers
visible to the GC by making the type unsafe.Pointer.  

```haxe
var returnIsPtr:stdgo.internal.abi.IntArgRegBitmap
```



ReturnIsPtr is a bitmap that indicates which registers
contain or will contain pointers on the return path from
a reflectcall. The i'th bit indicates whether the i'th
register contains or will contain a valid Go pointer.  

### RegArgs function new


```haxe
function new(?ints:stdgo.GoArray<stdgo.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo.unsafe.UnsafePointer>, ?returnIsPtr:Null<stdgo.internal.abi.IntArgRegBitmap>):Void
```


[\(view code\)](<./Abi.hx#L716>)


### RegArgs function dump


```haxe
function dump():Void
```


[\(view code\)](<./Abi.hx#L1759>)


### RegArgs function intRegArgAddr


```haxe
function intRegArgAddr( _reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo.unsafe.UnsafePointer
```



IntRegArgAddr returns a pointer inside of r.Ints\[reg\] that is appropriately
offset for an argument of size argSize.  


argSize must be non\-zero, fit in a register, and a power\-of\-two.  


This method is a helper for dealing with the endianness of different CPU
architectures, since sub\-word\-sized arguments in big endian architectures
need to be "aligned" to the upper edge of the register to be interpreted
by the CPU correctly.  

[\(view code\)](<./Abi.hx#L1747>)


## class SliceType


```haxe
var elem:stdgo.Ref<stdgo.internal.abi.Type>
```


```haxe
var type:stdgo.internal.abi.Type
```


### SliceType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1216>)


### SliceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1218>)


### SliceType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1220>)


### SliceType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1222>)


### SliceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1224>)


### SliceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1226>)


### SliceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L1228>)


### SliceType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L1230>)


### SliceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1232>)


### SliceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1234>)


### SliceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1236>)


### SliceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1238>)


### SliceType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1240>)


### SliceType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1242>)


### SliceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1244>)


### SliceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1246>)


### SliceType function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?elem:stdgo.Ref<stdgo.internal.abi.Type>):Void
```


[\(view code\)](<./Abi.hx#L1210>)


### SliceType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1248>)


### SliceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L1250>)


### SliceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L1252>)


### SliceType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L1254>)


### SliceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L1256>)


### SliceType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4011>)


### SliceType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L4009>)


### SliceType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L4007>)


### SliceType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4005>)


### SliceType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L4003>)


### SliceType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4001>)


### SliceType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3999>)


### SliceType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3997>)


### SliceType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3995>)


### SliceType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3993>)


### SliceType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3991>)


### SliceType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3989>)


### SliceType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3987>)


### SliceType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3985>)


### SliceType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3983>)


### SliceType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3981>)


### SliceType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3979>)


### SliceType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3977>)


### SliceType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3975>)


### SliceType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3973>)


### SliceType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3971>)


## class StructField


```haxe
var name:stdgo.internal.abi.Name
```


```haxe
var offset:stdgo.GoUIntptr
```


```haxe
var typ:stdgo.Ref<stdgo.internal.abi.Type>
```


### StructField function new


```haxe
function new(?name:stdgo.internal.abi.Name, ?typ:stdgo.Ref<stdgo.internal.abi.Type>, ?offset:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Abi.hx#L1404>)


### StructField function embedded


```haxe
function embedded():Bool
```


[\(view code\)](<./Abi.hx#L4306>)


## class StructType


```haxe
var fields:stdgo.Slice<stdgo.internal.abi.StructField>
```


```haxe
var pkgPath:stdgo.internal.abi.Name
```


```haxe
var type:stdgo.internal.abi.Type
```


### StructType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1431>)


### StructType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L1433>)


### StructType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L1435>)


### StructType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1437>)


### StructType function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1439>)


### StructType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L1441>)


### StructType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1443>)


### StructType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L1445>)


### StructType function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L1447>)


### StructType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L1449>)


### StructType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L1451>)


### StructType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L1453>)


### StructType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L1455>)


### StructType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L1457>)


### StructType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L1459>)


### StructType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1461>)


### StructType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L1463>)


### StructType function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?pkgPath:stdgo.internal.abi.Name, ?fields:stdgo.Slice<stdgo.internal.abi.StructField>):Void
```


[\(view code\)](<./Abi.hx#L1424>)


### StructType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L1465>)


### StructType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L1467>)


### StructType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L1469>)


### StructType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L1471>)


### StructType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L1473>)


### StructType function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4408>)


### StructType function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L4406>)


### StructType function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L4404>)


### StructType function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4402>)


### StructType function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4400>)


### StructType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L4398>)


### StructType function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4396>)


### StructType function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L4394>)


### StructType function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L4392>)


### StructType function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L4390>)


### StructType function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L4388>)


### StructType function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L4386>)


### StructType function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L4384>)


### StructType function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L4382>)


### StructType function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L4380>)


### StructType function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4378>)


### StructType function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L4376>)


### StructType function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L4374>)


### StructType function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L4372>)


### StructType function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L4370>)


### StructType function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L4368>)


### StructType function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L4366>)


## class T\_uncommon\_42\_\_\_localname\_\_\_u


```haxe
var _u:stdgo.internal.abi.UncommonType
```


```haxe
var ptrType:stdgo.internal.abi.PtrType
```


### T\_uncommon\_42\_\_\_localname\_\_\_u function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2881>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2883>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2885>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2887>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2889>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2891>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L2893>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2895>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2897>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2899>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2901>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2903>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2905>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2907>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2909>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2911>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function new


```haxe
function new(?ptrType:stdgo.internal.abi.PtrType, ?_u:stdgo.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L2875>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2913>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2915>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2917>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2919>)


### T\_uncommon\_42\_\_\_localname\_\_\_u function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2921>)


## class T\_uncommon\_43\_\_\_localname\_\_\_u


```haxe
var _u:stdgo.internal.abi.UncommonType
```


```haxe
var funcType:stdgo.internal.abi.FuncType
```


### T\_uncommon\_43\_\_\_localname\_\_\_u function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2941>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L2943>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L2945>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2947>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2949>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2951>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2953>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L2955>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2957>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L2959>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function inSlice


```haxe
function inSlice():stdgo.Slice<stdgo.Ref<stdgo.internal.abi.Type>>
```


[\(view code\)](<./Abi.hx#L2963>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function in\_


```haxe
function in_(_i:stdgo.GoInt):stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2961>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L2965>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L2967>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function isVariadic


```haxe
function isVariadic():Bool
```


[\(view code\)](<./Abi.hx#L2969>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2971>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2973>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2975>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L2977>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function new


```haxe
function new(?funcType:stdgo.internal.abi.FuncType, ?_u:stdgo.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L2935>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function numIn


```haxe
function numIn():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2979>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2981>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function numOut


```haxe
function numOut():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2983>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function out


```haxe
function out(_i:stdgo.GoInt):stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2985>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function outSlice


```haxe
function outSlice():stdgo.Slice<stdgo.Ref<stdgo.internal.abi.Type>>
```


[\(view code\)](<./Abi.hx#L2987>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2989>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L2991>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L2993>)


### T\_uncommon\_43\_\_\_localname\_\_\_u function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L2995>)


## class T\_uncommon\_44\_\_\_localname\_\_\_u


```haxe
var _u:stdgo.internal.abi.UncommonType
```


```haxe
var sliceType:stdgo.internal.abi.SliceType
```


### T\_uncommon\_44\_\_\_localname\_\_\_u function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3015>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3017>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3019>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3021>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3023>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3025>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3027>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3029>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3031>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3033>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3035>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3037>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3039>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3041>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3043>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3045>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function new


```haxe
function new(?sliceType:stdgo.internal.abi.SliceType, ?_u:stdgo.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L3009>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3047>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3049>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3051>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3053>)


### T\_uncommon\_44\_\_\_localname\_\_\_u function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3055>)


## class T\_uncommon\_45\_\_\_localname\_\_\_u


```haxe
var _u:stdgo.internal.abi.UncommonType
```


```haxe
var arrayType:stdgo.internal.abi.ArrayType
```


### T\_uncommon\_45\_\_\_localname\_\_\_u function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3075>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3077>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3079>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3081>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3083>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3085>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3087>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3089>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3091>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3093>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3095>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3097>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3099>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3101>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function new


```haxe
function new(?arrayType:stdgo.internal.abi.ArrayType, ?_u:stdgo.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L3069>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3103>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3105>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3107>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3109>)


### T\_uncommon\_45\_\_\_localname\_\_\_u function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3111>)


## class T\_uncommon\_46\_\_\_localname\_\_\_u


```haxe
var _u:stdgo.internal.abi.UncommonType
```


```haxe
var chanType:stdgo.internal.abi.ChanType
```


### T\_uncommon\_46\_\_\_localname\_\_\_u function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3131>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3133>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3135>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3137>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3139>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3141>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3143>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3145>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3147>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3149>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3151>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3153>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3155>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3157>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3159>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3161>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function new


```haxe
function new(?chanType:stdgo.internal.abi.ChanType, ?_u:stdgo.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L3125>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3163>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3165>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3167>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3169>)


### T\_uncommon\_46\_\_\_localname\_\_\_u function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3171>)


## class T\_uncommon\_47\_\_\_localname\_\_\_u


```haxe
var _u:stdgo.internal.abi.UncommonType
```


```haxe
var mapType:stdgo.internal.abi.MapType
```


### T\_uncommon\_47\_\_\_localname\_\_\_u function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3191>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3193>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3195>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3197>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3199>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3201>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3203>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3205>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3207>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function hashMightPanic


```haxe
function hashMightPanic():Bool
```


[\(view code\)](<./Abi.hx#L3209>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3211>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function indirectElem


```haxe
function indirectElem():Bool
```


[\(view code\)](<./Abi.hx#L3213>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function indirectKey


```haxe
function indirectKey():Bool
```


[\(view code\)](<./Abi.hx#L3215>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3217>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3219>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3221>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3223>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function needKeyUpdate


```haxe
function needKeyUpdate():Bool
```


[\(view code\)](<./Abi.hx#L3225>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function new


```haxe
function new(?mapType:stdgo.internal.abi.MapType, ?_u:stdgo.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L3185>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3227>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3229>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function reflexiveKey


```haxe
function reflexiveKey():Bool
```


[\(view code\)](<./Abi.hx#L3231>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3233>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3235>)


### T\_uncommon\_47\_\_\_localname\_\_\_u function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3237>)


## class T\_uncommon\_48\_\_\_localname\_\_\_u


```haxe
var _u:stdgo.internal.abi.UncommonType
```


```haxe
var interfaceType:stdgo.internal.abi.InterfaceType
```


### T\_uncommon\_48\_\_\_localname\_\_\_u function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3257>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3259>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3261>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3263>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3265>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3267>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3269>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3271>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3273>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3275>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3277>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3279>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3281>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3283>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3285>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3287>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function new


```haxe
function new(?interfaceType:stdgo.internal.abi.InterfaceType, ?_u:stdgo.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L3251>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3289>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3291>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3293>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3295>)


### T\_uncommon\_48\_\_\_localname\_\_\_u function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3297>)


## class T\_uncommon\_49\_\_\_localname\_\_\_u


```haxe
var _u:stdgo.internal.abi.UncommonType
```


```haxe
var type:stdgo.internal.abi.Type
```


### T\_uncommon\_49\_\_\_localname\_\_\_u function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3317>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```


[\(view code\)](<./Abi.hx#L3319>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```


[\(view code\)](<./Abi.hx#L3321>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3323>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3325>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3327>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3329>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```


[\(view code\)](<./Abi.hx#L3331>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function gcSlice


```haxe
function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Abi.hx#L3333>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L3335>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function ifaceIndir


```haxe
function ifaceIndir():Bool
```


[\(view code\)](<./Abi.hx#L3337>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```


[\(view code\)](<./Abi.hx#L3339>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function isDirectIface


```haxe
function isDirectIface():Bool
```


[\(view code\)](<./Abi.hx#L3341>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L3343>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L3345>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3347>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```


[\(view code\)](<./Abi.hx#L3349>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function new


```haxe
function new(?type:stdgo.internal.abi.Type, ?_u:stdgo.internal.abi.UncommonType):Void
```


[\(view code\)](<./Abi.hx#L3311>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L3351>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L3353>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Abi.hx#L3355>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```


[\(view code\)](<./Abi.hx#L3357>)


### T\_uncommon\_49\_\_\_localname\_\_\_u function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```


[\(view code\)](<./Abi.hx#L3359>)


## class Type



Type is the runtime representation of a Go type.  


Type is also referenced implicitly
\(in the form of expressions involving constants and arch.PtrSize\)
in cmd/compile/internal/reflectdata/reflect.go
and cmd/link/internal/ld/decodesym.go
\(e.g. data\[2\*arch.PtrSize\+4\] references the TFlag field\)
unsafe.OffsetOf\(Type\{\}.TFlag\) cannot be used directly in those
places because it varies with cross compilation and experiments.  

```haxe
var align_:stdgo.GoUInt8
```


```haxe
var fieldAlign_:stdgo.GoUInt8
```


```haxe
var gcdata:stdgo.Pointer<stdgo.GoUInt8>
```



GCData stores the GC type data for the garbage collector.
If the KindGCProg bit is set in kind, GCData is a GC program.
Otherwise it is a ptrmask bitmap. See mbitmap.go for details.  

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
var ptrToThis:stdgo.internal.abi.TypeOff
```


```haxe
var size_:stdgo.GoUIntptr
```


```haxe
var str:stdgo.internal.abi.NameOff
```


```haxe
var tflag:stdgo.internal.abi.TFlag
```


### Type function equal


```haxe
function equal(:stdgo.unsafe.UnsafePointer, :stdgo.unsafe.UnsafePointer):Bool
```



function for comparing objects of this type
\(ptr to object A, ptr to object B\) \-\> ==?  

### Type function new


```haxe
function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:stdgo.GoUInt32, ?tflag:Null<stdgo.internal.abi.TFlag>, ?align_:stdgo.GoUInt8, ?fieldAlign_:stdgo.GoUInt8, ?kind_:stdgo.GoUInt8, ?equal:(:stdgo.unsafe.UnsafePointer, :stdgo.unsafe.UnsafePointer):Bool, ?gcdata:stdgo.Pointer<stdgo.GoUInt8>, ?str:Null<stdgo.internal.abi.NameOff>, ?ptrToThis:Null<stdgo.internal.abi.TypeOff>):Void
```


[\(view code\)](<./Abi.hx#L786>)


### Type function align


```haxe
function align():stdgo.GoInt
```



Align returns the alignment of data with type t.  

[\(view code\)](<./Abi.hx#L2150>)


### Type function arrayType


```haxe
function arrayType():stdgo.Ref<stdgo.internal.abi.ArrayType>
```



ArrayType returns t cast to a \*ArrayType, or nil if its tag does not match.  

[\(view code\)](<./Abi.hx#L2210>)


### Type function chanDir


```haxe
function chanDir():stdgo.internal.abi.ChanDir
```



ChanDir returns the direction of t if t is a channel type, otherwise InvalidDir \(0\).  

[\(view code\)](<./Abi.hx#L2750>)


### Type function common


```haxe
function common():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2781>)


### Type function elem


```haxe
function elem():stdgo.Ref<stdgo.internal.abi.Type>
```



Elem returns the element type for t if t is an array, channel, map, pointer, or slice, otherwise nil.  

[\(view code\)](<./Abi.hx#L2342>)


### Type function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L2133>)


### Type function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2142>)


### Type function funcType


```haxe
function funcType():stdgo.Ref<stdgo.internal.abi.FuncType>
```



FuncType returns t cast to a \*FuncType, or nil if its tag does not match.  

[\(view code\)](<./Abi.hx#L2188>)


### Type function gcSlice


```haxe
function gcSlice( _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Abi.hx#L2830>)


### Type function hasName


```haxe
function hasName():Bool
```


[\(view code\)](<./Abi.hx#L2856>)


### Type function ifaceIndir


```haxe
function ifaceIndir():Bool
```



IfaceIndir reports whether t is stored indirectly in an interface value.  

[\(view code\)](<./Abi.hx#L2846>)


### Type function interfaceType


```haxe
function interfaceType():stdgo.Ref<stdgo.internal.abi.InterfaceType>
```



InterfaceType returns t cast to a \*InterfaceType, or nil if its tag does not match.  

[\(view code\)](<./Abi.hx#L2166>)


### Type function isDirectIface


```haxe
function isDirectIface():Bool
```



isDirectIface reports whether t is stored directly in an interface value.  

[\(view code\)](<./Abi.hx#L2838>)


### Type function key


```haxe
function key():stdgo.Ref<stdgo.internal.abi.Type>
```


[\(view code\)](<./Abi.hx#L2061>)


### Type function kind


```haxe
function kind():stdgo.internal.abi.Kind
```


[\(view code\)](<./Abi.hx#L2861>)


### Type function len


```haxe
function len():stdgo.GoInt
```



Len returns the length of t if t is an array type, otherwise 0  

[\(view code\)](<./Abi.hx#L2789>)


### Type function mapType


```haxe
function mapType():stdgo.Ref<stdgo.internal.abi.MapType>
```



MapType returns t cast to a \*MapType, or nil if its tag does not match.  

[\(view code\)](<./Abi.hx#L2254>)


### Type function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Abi.hx#L2113>)


### Type function pointers


```haxe
function pointers():Bool
```


[\(view code\)](<./Abi.hx#L2851>)


### Type function size


```haxe
function size():stdgo.GoUIntptr
```



Size returns the size of data with type t.  

[\(view code\)](<./Abi.hx#L2158>)


### Type function structType


```haxe
function structType():stdgo.Ref<stdgo.internal.abi.StructType>
```



StructType returns t cast to a \*StructType, or nil if its tag does not match.  

[\(view code\)](<./Abi.hx#L2309>)


### Type function uncommon


```haxe
function uncommon():stdgo.Ref<stdgo.internal.abi.UncommonType>
```



Uncommon returns a pointer to T's "uncommon" data if there is any, otherwise nil  

[\(view code\)](<./Abi.hx#L2512>)


## class UncommonType



UncommonType is present only for defined types or types with methods
\(if T is a defined type, the uncommonTypes for T and \*T have methods\).
Using a pointer to this struct reduces the overall size required
to describe a non\-defined type with no methods.  

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
var pkgPath:stdgo.internal.abi.NameOff
```


```haxe
var xcount:stdgo.GoUInt16
```


### UncommonType function new


```haxe
function new(?pkgPath:Null<stdgo.internal.abi.NameOff>, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__1:stdgo.GoUInt32):Void
```


[\(view code\)](<./Abi.hx#L851>)


### UncommonType function exportedMethods


```haxe
function exportedMethods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3379>)


### UncommonType function methods


```haxe
function methods():stdgo.Slice<stdgo.internal.abi.Method>
```


[\(view code\)](<./Abi.hx#L3387>)


# Typedefs


```haxe
import stdgo.internal.abi.*
```


## typedef ChanDir


```haxe
typedef ChanDir = stdgo.GoInt;
```


## typedef FuncFlag


```haxe
typedef FuncFlag = stdgo.GoUInt8;
```



A FuncFlag records bits about a function, passed to the runtime.  

## typedef FuncID


```haxe
typedef FuncID = stdgo.GoUInt8;
```



A FuncID identifies particular functions that need to be treated
specially by the runtime.
Note that in some situations involving plugins, there may be multiple
copies of a particular special runtime function.  

## typedef IntArgRegBitmap


```haxe
typedef IntArgRegBitmap = stdgo.GoArray<stdgo.GoUInt8>;
```



IntArgRegBitmap is a bitmap large enough to hold one bit per
integer argument/return register.  

## typedef Kind


```haxe
typedef Kind = stdgo.GoUInt;
```



A Kind represents the specific kind of type that a Type represents.
The zero Kind is not a valid kind.  

## typedef NameOff


```haxe
typedef NameOff = stdgo.GoInt32;
```



NameOff is the offset to a name from moduledata.types.  See resolveNameOff in runtime.  

## typedef TFlag


```haxe
typedef TFlag = stdgo.GoUInt8;
```



TFlag is used by a Type to signal what extra type information is
available in the memory directly following the Type value.  

## typedef TextOff


```haxe
typedef TextOff = stdgo.GoInt32;
```



TextOff is an offset from the top of a text section.  See \(rtype\).textOff in runtime.  

## typedef TypeOff


```haxe
typedef TypeOff = stdgo.GoInt32;
```



TypeOff is the offset to a type from moduledata.types.  See resolveTypeOff in runtime.  

