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
    public var lineToPC(get, never) : (stdgo.GoInt, stdgo.GoUInt64) -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_lineToPC():(stdgo.GoInt, stdgo.GoUInt64) -> stdgo.GoUInt64 return @:check3 (this.lineTable ?? throw "null pointer derefrence").lineToPC;
    public var pCToLine(get, never) : stdgo.GoUInt64 -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_pCToLine():stdgo.GoUInt64 -> stdgo.GoInt return @:check3 (this.lineTable ?? throw "null pointer derefrence").pCToLine;
    public var _findFileLine(get, never) : (stdgo.GoUInt64, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoInt32, stdgo.GoInt32, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__findFileLine():(stdgo.GoUInt64, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoInt32, stdgo.GoInt32, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoUInt64 return @:check3 (this.lineTable ?? throw "null pointer derefrence")._findFileLine;
    public var _findFunc(get, never) : stdgo.GoUInt64 -> stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData;
    @:embedded
    @:embeddededffieldsffun
    public function get__findFunc():stdgo.GoUInt64 -> stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData return @:check3 (this.lineTable ?? throw "null pointer derefrence")._findFunc;
    public var _funcData(get, never) : stdgo.GoUInt32 -> stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData;
    @:embedded
    @:embeddededffieldsffun
    public function get__funcData():stdgo.GoUInt32 -> stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData return @:check3 (this.lineTable ?? throw "null pointer derefrence")._funcData;
    public var _funcName(get, never) : stdgo.GoUInt32 -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__funcName():stdgo.GoUInt32 -> stdgo.GoString return @:check3 (this.lineTable ?? throw "null pointer derefrence")._funcName;
    public var _funcTab(get, never) : () -> stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab;
    @:embedded
    @:embeddededffieldsffun
    public function get__funcTab():() -> stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab return @:check3 (this.lineTable ?? throw "null pointer derefrence")._funcTab;
    public var _functabFieldSize(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__functabFieldSize():() -> stdgo.GoInt return @:check3 (this.lineTable ?? throw "null pointer derefrence")._functabFieldSize;
    public var _go12Funcs(get, never) : () -> stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>;
    @:embedded
    @:embeddededffieldsffun
    public function get__go12Funcs():() -> stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> return @:check3 (this.lineTable ?? throw "null pointer derefrence")._go12Funcs;
    public var _go12LineToPC(get, never) : (stdgo.GoString, stdgo.GoInt) -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__go12LineToPC():(stdgo.GoString, stdgo.GoInt) -> stdgo.GoUInt64 return @:check3 (this.lineTable ?? throw "null pointer derefrence")._go12LineToPC;
    public var _go12MapFiles(get, never) : (stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__go12MapFiles():(stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>) -> Void return @:check3 (this.lineTable ?? throw "null pointer derefrence")._go12MapFiles;
    public var _go12PCToFile(get, never) : stdgo.GoUInt64 -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__go12PCToFile():stdgo.GoUInt64 -> stdgo.GoString return @:check3 (this.lineTable ?? throw "null pointer derefrence")._go12PCToFile;
    public var _go12PCToLine(get, never) : stdgo.GoUInt64 -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__go12PCToLine():stdgo.GoUInt64 -> stdgo.GoInt return @:check3 (this.lineTable ?? throw "null pointer derefrence")._go12PCToLine;
    public var _initFileMap(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__initFileMap():() -> Void return @:check3 (this.lineTable ?? throw "null pointer derefrence")._initFileMap;
    public var _isGo12(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isGo12():() -> Bool return @:check3 (this.lineTable ?? throw "null pointer derefrence")._isGo12;
    public var _parse(get, never) : (stdgo.GoUInt64, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; };
    @:embedded
    @:embeddededffieldsffun
    public function get__parse():(stdgo.GoUInt64, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } return @:check3 (this.lineTable ?? throw "null pointer derefrence")._parse;
    public var _parsePclnTab(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__parsePclnTab():() -> Void return @:check3 (this.lineTable ?? throw "null pointer derefrence")._parsePclnTab;
    public var _pcvalue(get, never) : (stdgo.GoUInt32, stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__pcvalue():(stdgo.GoUInt32, stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoInt32 return @:check3 (this.lineTable ?? throw "null pointer derefrence")._pcvalue;
    public var _readvarint(get, never) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__readvarint():stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> -> stdgo.GoUInt32 return @:check3 (this.lineTable ?? throw "null pointer derefrence")._readvarint;
    public var _slice(get, never) : stdgo.GoUInt64 -> stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>;
    @:embedded
    @:embeddededffieldsffun
    public function get__slice():stdgo.GoUInt64 -> stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> return @:check3 (this.lineTable ?? throw "null pointer derefrence")._slice;
    public var _step(get, never) : (stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Pointer<stdgo.GoUInt64>, stdgo.Pointer<stdgo.GoInt32>, Bool) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__step():(stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Pointer<stdgo.GoUInt64>, stdgo.Pointer<stdgo.GoInt32>, Bool) -> Bool return @:check3 (this.lineTable ?? throw "null pointer derefrence")._step;
    public var _string(get, never) : stdgo.GoUInt32 -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__string():stdgo.GoUInt32 -> stdgo.GoString return @:check3 (this.lineTable ?? throw "null pointer derefrence")._string;
    public var _stringFrom(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt32) -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__stringFrom():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt32) -> stdgo.GoString return @:check3 (this.lineTable ?? throw "null pointer derefrence")._stringFrom;
    public var _uintptr(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__uintptr():stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt64 return @:check3 (this.lineTable ?? throw "null pointer derefrence")._uintptr;
    public function __copy__() {
        return new T_funcTab(lineTable, _sz);
    }
}
