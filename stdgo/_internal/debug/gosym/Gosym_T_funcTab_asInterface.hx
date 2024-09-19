package stdgo._internal.debug.gosym;
class T_funcTab_asInterface {
    @:keep
    public dynamic function _uint(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__.value._uint(_b);
    @:keep
    public dynamic function _funcOff(_i:stdgo.GoInt):stdgo.GoUInt64 return __self__.value._funcOff(_i);
    @:keep
    public dynamic function _pc(_i:stdgo.GoInt):stdgo.GoUInt64 return __self__.value._pc(_i);
    @:keep
    public dynamic function count():stdgo.GoInt return __self__.value.count();
    @:embedded
    public dynamic function _uintptr(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__.value._uintptr(_b);
    @:embedded
    public dynamic function _stringFrom(_arr:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoUInt32):stdgo.GoString return __self__.value._stringFrom(_arr, _off);
    @:embedded
    public dynamic function _string(__0:stdgo.GoUInt32):stdgo.GoString return __self__.value._string(__0);
    @:embedded
    public dynamic function _step(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _pc:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.Pointer<stdgo.GoInt32>, _first:Bool):Bool return __self__.value._step(_p, _pc, _val, _first);
    @:embedded
    public dynamic function _slice(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> return __self__.value._slice(__0);
    @:embedded
    public dynamic function _readvarint(_pp:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32 return __self__.value._readvarint(_pp);
    @:embedded
    public dynamic function _pcvalue(_off:stdgo.GoUInt32, _entry:stdgo.GoUInt64, _targetpc:stdgo.GoUInt64):stdgo.GoInt32 return __self__.value._pcvalue(_off, _entry, _targetpc);
    @:embedded
    public dynamic function _parsePclnTab():Void __self__.value._parsePclnTab();
    @:embedded
    public dynamic function _parse(_targetPC:stdgo.GoUInt64, _targetLine:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } return __self__.value._parse(_targetPC, _targetLine);
    @:embedded
    public dynamic function _isGo12():Bool return __self__.value._isGo12();
    @:embedded
    public dynamic function _initFileMap():Void __self__.value._initFileMap();
    @:embedded
    public dynamic function _go12PCToLine(__0:stdgo.GoUInt64):stdgo.GoInt return __self__.value._go12PCToLine(__0);
    @:embedded
    public dynamic function _go12PCToFile(__0:stdgo.GoUInt64):stdgo.GoString return __self__.value._go12PCToFile(__0);
    @:embedded
    public dynamic function _go12MapFiles(_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>):Void __self__.value._go12MapFiles(_m, _obj);
    @:embedded
    public dynamic function _go12LineToPC(_path:stdgo.GoString, _line:stdgo.GoInt):stdgo.GoUInt64 return __self__.value._go12LineToPC(_path, _line);
    @:embedded
    public dynamic function _go12Funcs():stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> return __self__.value._go12Funcs();
    @:embedded
    public dynamic function _functabFieldSize():stdgo.GoInt return __self__.value._functabFieldSize();
    @:embedded
    public dynamic function _funcTab():stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab return __self__.value._funcTab();
    @:embedded
    public dynamic function _funcName(__0:stdgo.GoUInt32):stdgo.GoString return __self__.value._funcName(__0);
    @:embedded
    public dynamic function _funcData(__0:stdgo.GoUInt32):stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData return __self__.value._funcData(__0);
    @:embedded
    public dynamic function _findFunc(__0:stdgo.GoUInt64):stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData return __self__.value._findFunc(__0);
    @:embedded
    public dynamic function _findFileLine(_entry:stdgo.GoUInt64, _filetab:stdgo.GoUInt32, _linetab:stdgo.GoUInt32, _filenum:stdgo.GoInt32, _line:stdgo.GoInt32, _cutab:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__.value._findFileLine(_entry, _filetab, _linetab, _filenum, _line, _cutab);
    @:embedded
    public dynamic function pctoLine(__0:stdgo.GoUInt64):stdgo.GoInt return __self__.value.pctoLine(__0);
    @:embedded
    public dynamic function lineToPC(_line:stdgo.GoInt, _maxpc:stdgo.GoUInt64):stdgo.GoUInt64 return __self__.value.lineToPC(_line, _maxpc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
