package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.Offset_asInterface) class Offset_static_extension {
    @:keep
    static public function plusUncommon( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        _o._off = (_o._off + (stdgo._internal.internal.abi.Abi_uncommonSize.uncommonSize()) : stdgo.GoUInt64);
        return _o?.__copy__();
    }
    @:keep
    static public function offset( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo.GoUInt64 {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        return _o.align(_o._align)._off;
    }
    @:keep
    static public function interface_( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((2i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _o?.__copy__();
    }
    @:keep
    static public function string( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((2i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _o?.__copy__();
    }
    @:keep
    static public function slice( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((3i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _o.align(_o._sliceAlign)?.__copy__();
    }
    @:keep
    static public function p( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        if (_o._ptrSize == ((0 : stdgo.GoUInt8))) {
            throw stdgo.Go.toInterface(("This offset has no defined pointer size" : stdgo.GoString));
        };
        return _o._plus((_o._ptrSize : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function d64( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        return _o._plus((8i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function d32( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        return _o._plus((4i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function d16( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        return _o._plus((2i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function d8( _o:stdgo._internal.internal.abi.Abi_Offset.Offset):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        return _o._plus((1i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function _plus( _o:stdgo._internal.internal.abi.Abi_Offset.Offset, _x:stdgo.GoUInt64):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        _o = _o._align_((_x : stdgo.GoUInt8))?.__copy__();
        _o._off = (_o._off + (_x) : stdgo.GoUInt64);
        return _o?.__copy__();
    }
    @:keep
    static public function align( _o:stdgo._internal.internal.abi.Abi_Offset.Offset, _a:stdgo.GoUInt8):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        stdgo._internal.internal.abi.Abi__assertIsAPowerOfTwo._assertIsAPowerOfTwo(_a);
        return _o._align_(_a)?.__copy__();
    }
    @:keep
    static public function _align_( _o:stdgo._internal.internal.abi.Abi_Offset.Offset, _a:stdgo.GoUInt8):stdgo._internal.internal.abi.Abi_Offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_Offset.Offset = _o?.__copy__();
        _o._off = ((((_o._off + (_a : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (-1 ^ ((_a : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((_o._align < _a : Bool)) {
            _o._align = _a;
        };
        return _o?.__copy__();
    }
}