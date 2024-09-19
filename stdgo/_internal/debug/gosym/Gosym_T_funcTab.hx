package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension) class T_funcTab {
    @:embedded
    public var lineTable : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
    public var _sz : stdgo.GoInt = 0;
    public function new(?lineTable:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, ?_sz:stdgo.GoInt) {
        if (lineTable != null) this.lineTable = lineTable;
        if (_sz != null) this._sz = _sz;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lineToPC(_line:stdgo.GoInt, _maxpc:stdgo.GoUInt64):stdgo.GoUInt64 return this.lineTable.lineToPC(_line, _maxpc);
    @:embedded
    public function pctoLine(__0:stdgo.GoUInt64):stdgo.GoInt return this.lineTable.pctoLine(__0);
    @:embedded
    public function _findFileLine(_entry:stdgo.GoUInt64, _filetab:stdgo.GoUInt32, _linetab:stdgo.GoUInt32, _filenum:stdgo.GoInt32, _line:stdgo.GoInt32, _cutab:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return this.lineTable._findFileLine(_entry, _filetab, _linetab, _filenum, _line, _cutab);
    @:embedded
    public function _findFunc(__0:stdgo.GoUInt64):stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData return this.lineTable._findFunc(__0);
    @:embedded
    public function _funcData(__0:stdgo.GoUInt32):stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData return this.lineTable._funcData(__0);
    @:embedded
    public function _funcName(__0:stdgo.GoUInt32):stdgo.GoString return this.lineTable._funcName(__0);
    @:embedded
    public function _funcTab():stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab return this.lineTable._funcTab();
    @:embedded
    public function _functabFieldSize():stdgo.GoInt return this.lineTable._functabFieldSize();
    @:embedded
    public function _go12Funcs():stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> return this.lineTable._go12Funcs();
    @:embedded
    public function _go12LineToPC(_path:stdgo.GoString, _line:stdgo.GoInt):stdgo.GoUInt64 return this.lineTable._go12LineToPC(_path, _line);
    @:embedded
    public function _go12MapFiles(_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>) this.lineTable._go12MapFiles(_m, _obj);
    @:embedded
    public function _go12PCToFile(__0:stdgo.GoUInt64):stdgo.GoString return this.lineTable._go12PCToFile(__0);
    @:embedded
    public function _go12PCToLine(__0:stdgo.GoUInt64):stdgo.GoInt return this.lineTable._go12PCToLine(__0);
    @:embedded
    public function _initFileMap() this.lineTable._initFileMap();
    @:embedded
    public function _isGo12():Bool return this.lineTable._isGo12();
    @:embedded
    public function _parse(_targetPC:stdgo.GoUInt64, _targetLine:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } return this.lineTable._parse(_targetPC, _targetLine);
    @:embedded
    public function _parsePclnTab() this.lineTable._parsePclnTab();
    @:embedded
    public function _pcvalue(_off:stdgo.GoUInt32, _entry:stdgo.GoUInt64, _targetpc:stdgo.GoUInt64):stdgo.GoInt32 return this.lineTable._pcvalue(_off, _entry, _targetpc);
    @:embedded
    public function _readvarint(_pp:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32 return this.lineTable._readvarint(_pp);
    @:embedded
    public function _slice(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> return this.lineTable._slice(__0);
    @:embedded
    public function _step(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _pc:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.Pointer<stdgo.GoInt32>, _first:Bool):Bool return this.lineTable._step(_p, _pc, _val, _first);
    @:embedded
    public function _string(__0:stdgo.GoUInt32):stdgo.GoString return this.lineTable._string(__0);
    @:embedded
    public function _stringFrom(_arr:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoUInt32):stdgo.GoString return this.lineTable._stringFrom(_arr, _off);
    @:embedded
    public function _uintptr(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return this.lineTable._uintptr(_b);
    public function __copy__() {
        return new T_funcTab(lineTable, _sz);
    }
}
