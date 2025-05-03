package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.T_funcData_asInterface) class T_funcData_static_extension {
    @:keep
    @:tdfield
    static public function _field( _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData, _n:stdgo.GoUInt32):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L469"
        if (((_n == (0u32 : stdgo.GoUInt32)) || (_n > (9u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L470"
            throw stdgo.Go.toInterface(("bad funcdata field" : stdgo.GoString));
        };
        var _sz0 = ((@:checkr _f._t ?? throw "null pointer dereference")._ptrsize : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L475"
        if (((@:checkr _f._t ?? throw "null pointer dereference")._version >= (4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version) : Bool)) {
            _sz0 = (4u32 : stdgo.GoUInt32);
        };
        var _off = (_sz0 + (((_n - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _data = (_f._data.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L480"
        return (@:checkr _f._t ?? throw "null pointer dereference")._binary.uint32(_data);
    }
    @:keep
    @:tdfield
    static public function _cuOffset( _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L463"
        return _f._field((8u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _pcln( _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L462"
        return _f._field((6u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _pcfile( _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L461"
        return _f._field((5u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _deferreturn( _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L460"
        return _f._field((3u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _nameOff( _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData):stdgo.GoUInt32 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L459"
        return _f._field((1u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _entryPC( _f:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData>):stdgo.GoUInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L451"
        if (((@:checkr (@:checkr _f ?? throw "null pointer dereference")._t ?? throw "null pointer dereference")._version >= (4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L454"
            return (((@:checkr (@:checkr _f ?? throw "null pointer dereference")._t ?? throw "null pointer dereference")._binary.uint32((@:checkr _f ?? throw "null pointer dereference")._data) : stdgo.GoUInt64) + (@:checkr (@:checkr _f ?? throw "null pointer dereference")._t ?? throw "null pointer dereference")._textStart : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L456"
        return (@:checkr _f ?? throw "null pointer dereference")._t._uintptr((@:checkr _f ?? throw "null pointer dereference")._data);
    }
    @:keep
    @:tdfield
    static public function isZero( _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData):Bool {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L444"
        return (({
            final value = _f._t;
            (value == null || (value : Dynamic).__nil__);
        }) && (_f._data == null) : Bool);
    }
}
