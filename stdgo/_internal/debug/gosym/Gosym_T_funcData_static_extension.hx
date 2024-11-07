package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.T_funcData_asInterface) class T_funcData_static_extension {
    @:keep
    static public function _field( _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData, _n:stdgo.GoUInt32):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData = _f?.__copy__();
        if (((_n == (0u32 : stdgo.GoUInt32)) || (_n > (9u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bad funcdata field" : stdgo.GoString));
        };
        var _sz0 = (_f._t._ptrsize : stdgo.GoUInt32);
        if ((_f._t._version >= (4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version) : Bool)) {
            _sz0 = (4u32 : stdgo.GoUInt32);
        };
        var _off = (_sz0 + (((_n - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _data = (_f._data.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>);
        return _f._t._binary.uint32(_data);
    }
    @:keep
    static public function _cuOffset( _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData = _f?.__copy__();
        return _f._field((8u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function _pcln( _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData = _f?.__copy__();
        return _f._field((6u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function _pcfile( _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData = _f?.__copy__();
        return _f._field((5u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function _deferreturn( _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData = _f?.__copy__();
        return _f._field((3u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function _nameOff( _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData = _f?.__copy__();
        return _f._field((1u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function _entryPC( _f:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData>):stdgo.GoUInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData> = _f;
        if ((_f._t._version >= (4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version) : Bool)) {
            return ((_f._t._binary.uint32(_f._data) : stdgo.GoUInt64) + _f._t._textStart : stdgo.GoUInt64);
        };
        return _f._t._uintptr(_f._data);
    }
    @:keep
    static public function isZero( _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData):Bool {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData = _f?.__copy__();
        return ((_f._t == null || (_f._t : Dynamic).__nil__) && (_f._data == null) : Bool);
    }
}
