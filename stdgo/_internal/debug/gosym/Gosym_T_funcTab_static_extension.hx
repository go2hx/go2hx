package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.T_funcTab_asInterface) class T_funcTab_static_extension {
    @:keep
    static public function _uint( _f:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab = _f?.__copy__();
        if (_f._sz == ((4 : stdgo.GoInt))) {
            return (_f.lineTable._binary.uint32(_b) : stdgo.GoUInt64);
        };
        return _f.lineTable._binary.uint64(_b);
    }
    @:keep
    static public function _funcOff( _f:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _i:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab = _f?.__copy__();
        return _f._uint((_f.lineTable._functab.__slice__((((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) * _f._sz : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _pc( _f:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _i:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab = _f?.__copy__();
        var _u = (_f._uint((_f.lineTable._functab.__slice__((((2 : stdgo.GoInt) * _i : stdgo.GoInt) * _f._sz : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        if ((_f.lineTable._version >= (4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version) : Bool)) {
            _u = (_u + (_f.lineTable._textStart) : stdgo.GoUInt64);
        };
        return _u;
    }
    @:keep
    static public function count( _f:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):stdgo.GoInt {
        @:recv var _f:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab = _f?.__copy__();
        return (_f.lineTable._nfunctab : stdgo.GoInt);
    }
    @:embedded
    public static function _uintptr( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__._uintptr(_b);
    @:embedded
    public static function _stringFrom( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _arr:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoUInt32):stdgo.GoString return __self__._stringFrom(_arr, _off);
    @:embedded
    public static function _string( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:stdgo.GoUInt32):stdgo.GoString return __self__._string(__0);
    @:embedded
    public static function _step( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _pc:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.Pointer<stdgo.GoInt32>, _first:Bool):Bool return __self__._step(_p, _pc, _val, _first);
    @:embedded
    public static function _slice( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> return __self__._slice(__0);
    @:embedded
    public static function _readvarint( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _pp:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32 return __self__._readvarint(_pp);
    @:embedded
    public static function _pcvalue( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _off:stdgo.GoUInt32, _entry:stdgo.GoUInt64, _targetpc:stdgo.GoUInt64):stdgo.GoInt32 return __self__._pcvalue(_off, _entry, _targetpc);
    @:embedded
    public static function _parsePclnTab( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab) __self__._parsePclnTab();
    @:embedded
    public static function _parse( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _targetPC:stdgo.GoUInt64, _targetLine:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } return __self__._parse(_targetPC, _targetLine);
    @:embedded
    public static function _isGo12( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):Bool return __self__._isGo12();
    @:embedded
    public static function _initFileMap( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab) __self__._initFileMap();
    @:embedded
    public static function _go12PCToLine( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:stdgo.GoUInt64):stdgo.GoInt return __self__._go12PCToLine(__0);
    @:embedded
    public static function _go12PCToFile( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:stdgo.GoUInt64):stdgo.GoString return __self__._go12PCToFile(__0);
    @:embedded
    public static function _go12MapFiles( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>) __self__._go12MapFiles(_m, _obj);
    @:embedded
    public static function _go12LineToPC( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _path:stdgo.GoString, _line:stdgo.GoInt):stdgo.GoUInt64 return __self__._go12LineToPC(_path, _line);
    @:embedded
    public static function _go12Funcs( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> return __self__._go12Funcs();
    @:embedded
    public static function _functabFieldSize( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):stdgo.GoInt return __self__._functabFieldSize();
    @:embedded
    public static function _funcTab( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab return __self__._funcTab();
    @:embedded
    public static function _funcName( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:stdgo.GoUInt32):stdgo.GoString return __self__._funcName(__0);
    @:embedded
    public static function _funcData( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:stdgo.GoUInt32):stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData return __self__._funcData(__0);
    @:embedded
    public static function _findFunc( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:stdgo.GoUInt64):stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData return __self__._findFunc(__0);
    @:embedded
    public static function _findFileLine( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _entry:stdgo.GoUInt64, _filetab:stdgo.GoUInt32, _linetab:stdgo.GoUInt32, _filenum:stdgo.GoInt32, _line:stdgo.GoInt32, _cutab:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__._findFileLine(_entry, _filetab, _linetab, _filenum, _line, _cutab);
    @:embedded
    public static function pctoLine( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:stdgo.GoUInt64):stdgo.GoInt return __self__.pctoLine(__0);
    @:embedded
    public static function lineToPC( __self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _line:stdgo.GoInt, _maxpc:stdgo.GoUInt64):stdgo.GoUInt64 return __self__.lineToPC(_line, _maxpc);
}
