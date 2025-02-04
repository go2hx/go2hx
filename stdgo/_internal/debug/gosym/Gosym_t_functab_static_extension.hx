package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.T_funcTab_asInterface) class T_funcTab_static_extension {
    @:keep
    @:tdfield
    static public function _uint( _f:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab = _f?.__copy__();
        if (_f._sz == ((4 : stdgo.GoInt))) {
            return (_f.lineTable._binary.uint32(_b) : stdgo.GoUInt64);
        };
        return _f.lineTable._binary.uint64(_b);
    }
    @:keep
    @:tdfield
    static public function _funcOff( _f:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _i:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab = _f?.__copy__();
        return _f._uint((_f.lineTable._functab.__slice__((((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) * _f._sz : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _pc( _f:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _i:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab = _f?.__copy__();
        var _u = (_f._uint((_f.lineTable._functab.__slice__((((2 : stdgo.GoInt) * _i : stdgo.GoInt) * _f._sz : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        if ((_f.lineTable._version >= (4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version) : Bool)) {
            _u = (_u + (_f.lineTable._textStart) : stdgo.GoUInt64);
        };
        return _u;
    }
    @:keep
    @:tdfield
    static public function count( _f:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):stdgo.GoInt {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab = _f?.__copy__();
        return (_f.lineTable._nfunctab : stdgo.GoInt);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _uintptr( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_5 __self__._uintptr(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _stringFrom( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.GoString return @:_5 __self__._stringFrom(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _string( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt32):stdgo.GoString return @:_5 __self__._string(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _step( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _1:stdgo.Pointer<stdgo.GoUInt64>, _2:stdgo.Pointer<stdgo.GoInt32>, _3:Bool):Bool return @:_5 __self__._step(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _slice( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> return @:_5 __self__._slice(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _readvarint( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32 return @:_5 __self__._readvarint(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _pcvalue( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt32, _1:stdgo.GoUInt64, _2:stdgo.GoUInt64):stdgo.GoInt32 return @:_5 __self__._pcvalue(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _parsePclnTab( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):Void return @:_5 __self__._parsePclnTab();
    @:embedded
    @:embeddededffieldsffun
    public static function _parse( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt64, _1:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } return @:_5 __self__._parse(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _isGo12( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):Bool return @:_5 __self__._isGo12();
    @:embedded
    @:embeddededffieldsffun
    public static function _initFileMap( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):Void return @:_5 __self__._initFileMap();
    @:embedded
    @:embeddededffieldsffun
    public static function _go12PCToLine( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt64):stdgo.GoInt return @:_5 __self__._go12PCToLine(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _go12PCToFile( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt64):stdgo.GoString return @:_5 __self__._go12PCToFile(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _go12MapFiles( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>, _1:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>):Void return @:_5 __self__._go12MapFiles(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _go12LineToPC( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoString, _1:stdgo.GoInt):stdgo.GoUInt64 return @:_5 __self__._go12LineToPC(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _go12Funcs( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func> return @:_5 __self__._go12Funcs();
    @:embedded
    @:embeddededffieldsffun
    public static function _functabFieldSize( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):stdgo.GoInt return @:_5 __self__._functabFieldSize();
    @:embedded
    @:embeddededffieldsffun
    public static function _funcTab( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab return @:_5 __self__._funcTab();
    @:embedded
    @:embeddededffieldsffun
    public static function _funcName( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt32):stdgo.GoString return @:_5 __self__._funcName(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _funcData( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt32):stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData return @:_5 __self__._funcData(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _findFunc( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt64):stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData return @:_5 __self__._findFunc(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _findFileLine( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt64, _1:stdgo.GoUInt32, _2:stdgo.GoUInt32, _3:stdgo.GoInt32, _4:stdgo.GoInt32, _5:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_5 __self__._findFileLine(_0, _1, _2, _3, _4, _5);
    @:embedded
    @:embeddededffieldsffun
    public static function pCToLine( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoUInt64):stdgo.GoInt return @:_5 __self__.pCToLine(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function lineToPC( __self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:stdgo.GoInt, _1:stdgo.GoUInt64):stdgo.GoUInt64 return @:_5 __self__.lineToPC(_0, _1);
}
