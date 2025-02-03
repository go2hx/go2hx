package stdgo.internal.abi;
class Abi {
    /**
        CommonSize returns sizeof(Type) for a compilation target with a given ptrSize
    **/
    static public inline function commonSize(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_commonSize.commonSize(_ptrSize);
    }
    /**
        StructFieldSize returns sizeof(StructField) for a compilation target with a given ptrSize
    **/
    static public inline function structFieldSize(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_structFieldSize.structFieldSize(_ptrSize);
    }
    /**
        UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
        This exported function is in an internal package, so it may change to depend on ptrSize in the future.
    **/
    static public inline function uncommonSize():haxe.UInt64 {
        return stdgo._internal.internal.abi.Abi_uncommonSize.uncommonSize();
    }
    /**
        IMethodSize returns sizeof(IMethod) for a compilation target with a given ptrSize
    **/
    static public inline function iMethodSize(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_iMethodSize.iMethodSize(_ptrSize);
    }
    /**
        KindOff returns the offset of Type.Kind_ for a compilation target with a given ptrSize
    **/
    static public inline function kindOff(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_kindOff.kindOff(_ptrSize);
    }
    /**
        SizeOff returns the offset of Type.Size_ for a compilation target with a given ptrSize
    **/
    static public inline function sizeOff(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_sizeOff.sizeOff(_ptrSize);
    }
    /**
        PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize
    **/
    static public inline function ptrBytesOff(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_ptrBytesOff.ptrBytesOff(_ptrSize);
    }
    /**
        TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize
    **/
    static public inline function tFlagOff(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_tFlagOff.tFlagOff(_ptrSize);
    }
    /**
        NewOffset returns a new Offset with offset 0 and alignment 1.
    **/
    static public inline function newOffset(_ptrSize:std.UInt, _twoWordAlignSlices:Bool):Offset {
        final _ptrSize = (_ptrSize : stdgo.GoUInt8);
        return stdgo._internal.internal.abi.Abi_newOffset.newOffset(_ptrSize, _twoWordAlignSlices);
    }
    /**
        InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.
    **/
    static public inline function initializedOffset(_off:StdTypes.Int, _align:std.UInt, _ptrSize:std.UInt, _twoWordAlignSlices:Bool):Offset {
        final _off = (_off : stdgo.GoInt);
        final _align = (_align : stdgo.GoUInt8);
        final _ptrSize = (_ptrSize : stdgo.GoUInt8);
        return stdgo._internal.internal.abi.Abi_initializedOffset.initializedOffset(_off, _align, _ptrSize, _twoWordAlignSlices);
    }
    /**
        CommonOffset returns the Offset to the data after the common portion of type data structures.
    **/
    static public inline function commonOffset(_ptrSize:StdTypes.Int, _twoWordAlignSlices:Bool):Offset {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_commonOffset.commonOffset(_ptrSize, _twoWordAlignSlices);
    }
    static public inline function funcPCTestFn():Void {
        stdgo._internal.internal.abi.Abi_funcPCTestFn.funcPCTestFn();
    }
    /**
        go:noinline
    **/
    static public inline function funcPCTest():stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_funcPCTest.funcPCTest();
    }
    /**
        FuncPCABI0 returns the entry PC of the function f, which must be a
        direct reference of a function defined as ABI0. Otherwise it is a
        compile-time error.
        
        Implemented as a compile intrinsic.
    **/
    static public inline function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr {
        final _f = (_f : stdgo.AnyInterface);
        return stdgo._internal.internal.abi.Abi_funcPCABI0.funcPCABI0(_f);
    }
    /**
        FuncPCABIInternal returns the entry PC of the function f. If f is a
        direct reference of a function, it must be defined as ABIInternal.
        Otherwise it is a compile-time error. If f is not a direct reference
        of a defined function, it assumes that f is a func value. Otherwise
        the behavior is undefined.
        
        Implemented as a compile intrinsic.
    **/
    static public inline function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr {
        final _f = (_f : stdgo.AnyInterface);
        return stdgo._internal.internal.abi.Abi_funcPCABIInternal.funcPCABIInternal(_f);
    }
    static public inline function newName(_n:String, _tag:String, _exported:Bool, _embedded:Bool):Name {
        final _n = (_n : stdgo.GoString);
        final _tag = (_tag : stdgo.GoString);
        return stdgo._internal.internal.abi.Abi_newName.newName(_n, _tag, _exported, _embedded);
    }
}
