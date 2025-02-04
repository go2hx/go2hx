package stdgo._internal.debug.gosym;
class LineTable_asInterface {
    @:keep
    @:tdfield
    public dynamic function _go12MapFiles(_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>, _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>):Void @:_0 __self__.value._go12MapFiles(_m, _obj);
    @:keep
    @:tdfield
    public dynamic function _initFileMap():Void @:_0 __self__.value._initFileMap();
    @:keep
    @:tdfield
    public dynamic function _go12LineToPC(_file:stdgo.GoString, _line:stdgo.GoInt):stdgo.GoUInt64 return @:_0 __self__.value._go12LineToPC(_file, _line);
    @:keep
    @:tdfield
    public dynamic function _go12PCToFile(_pc:stdgo.GoUInt64):stdgo.GoString return @:_0 __self__.value._go12PCToFile(_pc);
    @:keep
    @:tdfield
    public dynamic function _go12PCToLine(_pc:stdgo.GoUInt64):stdgo.GoInt return @:_0 __self__.value._go12PCToLine(_pc);
    @:keep
    @:tdfield
    public dynamic function _findFileLine(_entry:stdgo.GoUInt64, _filetab:stdgo.GoUInt32, _linetab:stdgo.GoUInt32, _filenum:stdgo.GoInt32, _line:stdgo.GoInt32, _cutab:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_0 __self__.value._findFileLine(_entry, _filetab, _linetab, _filenum, _line, _cutab);
    @:keep
    @:tdfield
    public dynamic function _pcvalue(_off:stdgo.GoUInt32, _entry:stdgo.GoUInt64, _targetpc:stdgo.GoUInt64):stdgo.GoInt32 return @:_0 __self__.value._pcvalue(_off, _entry, _targetpc);
    @:keep
    @:tdfield
    public dynamic function _step(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _pc:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.Pointer<stdgo.GoInt32>, _first:Bool):Bool return @:_0 __self__.value._step(_p, _pc, _val, _first);
    @:keep
    @:tdfield
    public dynamic function _funcData(_i:stdgo.GoUInt32):stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData return @:_0 __self__.value._funcData(_i);
    @:keep
    @:tdfield
    public dynamic function _funcTab():stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab return @:_0 __self__.value._funcTab();
    @:keep
    @:tdfield
    public dynamic function _functabFieldSize():stdgo.GoInt return @:_0 __self__.value._functabFieldSize();
    @:keep
    @:tdfield
    public dynamic function _string(_off:stdgo.GoUInt32):stdgo.GoString return @:_0 __self__.value._string(_off);
    @:keep
    @:tdfield
    public dynamic function _stringFrom(_arr:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoUInt32):stdgo.GoString return @:_0 __self__.value._stringFrom(_arr, _off);
    @:keep
    @:tdfield
    public dynamic function _funcName(_off:stdgo.GoUInt32):stdgo.GoString return @:_0 __self__.value._funcName(_off);
    @:keep
    @:tdfield
    public dynamic function _readvarint(_pp:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32 return @:_0 __self__.value._readvarint(_pp);
    @:keep
    @:tdfield
    public dynamic function _findFunc(_pc:stdgo.GoUInt64):stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData return @:_0 __self__.value._findFunc(_pc);
    @:keep
    @:tdfield
    public dynamic function _go12Funcs():stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func> return @:_0 __self__.value._go12Funcs();
    @:keep
    @:tdfield
    public dynamic function _parsePclnTab():Void @:_0 __self__.value._parsePclnTab();
    @:keep
    @:tdfield
    public dynamic function _uintptr(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_0 __self__.value._uintptr(_b);
    @:keep
    @:tdfield
    public dynamic function _isGo12():Bool return @:_0 __self__.value._isGo12();
    @:keep
    @:tdfield
    public dynamic function lineToPC(_line:stdgo.GoInt, _maxpc:stdgo.GoUInt64):stdgo.GoUInt64 return @:_0 __self__.value.lineToPC(_line, _maxpc);
    @:keep
    @:tdfield
    public dynamic function pCToLine(_pc:stdgo.GoUInt64):stdgo.GoInt return @:_0 __self__.value.pCToLine(_pc);
    @:keep
    @:tdfield
    public dynamic function _slice(_pc:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> return @:_0 __self__.value._slice(_pc);
    @:keep
    @:tdfield
    public dynamic function _parse(_targetPC:stdgo.GoUInt64, _targetLine:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } return @:_0 __self__.value._parse(_targetPC, _targetLine);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.gosym.Gosym_linetablepointer.LineTablePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
