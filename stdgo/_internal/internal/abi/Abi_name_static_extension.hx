package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.Name_asInterface) class Name_static_extension {
    @:keep
    @:tdfield
    static public function tag( _n:stdgo._internal.internal.abi.Abi_name.Name):stdgo.GoString {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        if (!_n.hasTag()) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), _i:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _n.readVarint((((1 : stdgo.GoInt) + _i : stdgo.GoInt) + _l : stdgo.GoInt)), _i2:stdgo.GoInt = __tmp__._0, _l2:stdgo.GoInt = __tmp__._1;
        return stdgo._internal.internal.abi.Abi__unsafestringfor._unsafeStringFor(_n.dataChecked(((((1 : stdgo.GoInt) + _i : stdgo.GoInt) + _l : stdgo.GoInt) + _i2 : stdgo.GoInt), ("non-empty string" : stdgo.GoString)), _l2)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function name( _n:stdgo._internal.internal.abi.Abi_name.Name):stdgo.GoString {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        if (_n.bytes == null) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), _i:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        return stdgo._internal.internal.abi.Abi__unsafestringfor._unsafeStringFor(_n.dataChecked(((1 : stdgo.GoInt) + _i : stdgo.GoInt), ("non-empty string" : stdgo.GoString)), _l)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isBlank( _n:stdgo._internal.internal.abi.Abi_name.Name):Bool {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        if (_n.bytes == null) {
            return false;
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), __233:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        return ((_l == (1 : stdgo.GoInt)) && (_n.data((2 : stdgo.GoInt)).value == (95 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function readVarint( _n:stdgo._internal.internal.abi.Abi_name.Name, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        var _v = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                var _x = (_n.dataChecked((_off + _i : stdgo.GoInt), ("read varint" : stdgo.GoString)).value : stdgo.GoUInt8);
_v = (_v + ((((_x & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) << (((7 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
if ((_x & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _v };
                };
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function isEmbedded( _n:stdgo._internal.internal.abi.Abi_name.Name):Bool {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        return ((_n.bytes.value) & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function hasTag( _n:stdgo._internal.internal.abi.Abi_name.Name):Bool {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        return ((_n.bytes.value) & (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function isExported( _n:stdgo._internal.internal.abi.Abi_name.Name):Bool {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        return ((_n.bytes.value) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function data( _n:stdgo._internal.internal.abi.Abi_name.Name, _off:stdgo.GoInt):stdgo.Pointer<stdgo.GoUInt8> {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        return (stdgo._internal.internal.abi.Abi__addchecked._addChecked((stdgo.Go.toInterface(_n.bytes) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (new stdgo.GoUIntptr(_off) : stdgo.GoUIntptr), ("the runtime doesn\'t need to give you a reason" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function dataChecked( _n:stdgo._internal.internal.abi.Abi_name.Name, _off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt8> {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        return (stdgo._internal.internal.abi.Abi__addchecked._addChecked((stdgo.Go.toInterface(_n.bytes) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (new stdgo.GoUIntptr(_off) : stdgo.GoUIntptr), _whySafe?.__copy__()).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoUInt8>);
    }
}
