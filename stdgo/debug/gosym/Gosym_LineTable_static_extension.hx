package stdgo.debug.gosym;
class LineTable_static_extension {
    static public function _go12MapFiles(_t:LineTable, _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, _obj:Obj):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _m = (_m : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>);
        final _obj = (_obj : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
        stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12MapFiles(_t, _m, _obj);
    }
    static public function _initFileMap(_t:LineTable):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._initFileMap(_t);
    }
    static public function _go12LineToPC(_t:LineTable, _file:String, _line:StdTypes.Int):haxe.UInt64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _file = (_file : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12LineToPC(_t, _file, _line);
    }
    static public function _go12PCToFile(_t:LineTable, _pc:haxe.UInt64):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12PCToFile(_t, _pc);
    }
    static public function _go12PCToLine(_t:LineTable, _pc:haxe.UInt64):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12PCToLine(_t, _pc);
    }
    static public function _findFileLine(_t:LineTable, _entry:haxe.UInt64, _filetab:std.UInt, _linetab:std.UInt, _filenum:StdTypes.Int, _line:StdTypes.Int, _cutab:Array<std.UInt>):haxe.UInt64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _entry = (_entry : stdgo.GoUInt64);
        final _filetab = (_filetab : stdgo.GoUInt32);
        final _linetab = (_linetab : stdgo.GoUInt32);
        final _filenum = (_filenum : stdgo.GoInt32);
        final _line = (_line : stdgo.GoInt32);
        final _cutab = ([for (i in _cutab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._findFileLine(_t, _entry, _filetab, _linetab, _filenum, _line, _cutab);
    }
    static public function _pcvalue(_t:LineTable, _off:std.UInt, _entry:haxe.UInt64, _targetpc:haxe.UInt64):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _off = (_off : stdgo.GoUInt32);
        final _entry = (_entry : stdgo.GoUInt64);
        final _targetpc = (_targetpc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._pcvalue(_t, _off, _entry, _targetpc);
    }
    static public function _step(_t:LineTable, _p:Array<std.UInt>, _pc:stdgo.Pointer<haxe.UInt64>, _val:stdgo.Pointer<StdTypes.Int>, _first:Bool):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _p = (_p : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._step(_t, _p, _pc, _val, _first);
    }
    static public function _funcData(_t:LineTable, _i:std.UInt):T_funcData {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _i = (_i : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._funcData(_t, _i);
    }
    static public function _funcTab(_t:LineTable):T_funcTab {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._funcTab(_t);
    }
    static public function _functabFieldSize(_t:LineTable):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._functabFieldSize(_t);
    }
    static public function _string(_t:LineTable, _off:std.UInt):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _off = (_off : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._string(_t, _off);
    }
    static public function _stringFrom(_t:LineTable, _arr:Array<std.UInt>, _off:std.UInt):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _arr = ([for (i in _arr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._stringFrom(_t, _arr, _off);
    }
    static public function _funcName(_t:LineTable, _off:std.UInt):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _off = (_off : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._funcName(_t, _off);
    }
    static public function _readvarint(_t:LineTable, _pp:Array<std.UInt>):std.UInt {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _pp = (_pp : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._readvarint(_t, _pp);
    }
    static public function _findFunc(_t:LineTable, _pc:haxe.UInt64):T_funcData {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._findFunc(_t, _pc);
    }
    static public function _go12Funcs(_t:LineTable):Array<Func> {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return [for (i in stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12Funcs(_t)) i];
    }
    static public function _parsePclnTab(_t:LineTable):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._parsePclnTab(_t);
    }
    static public function _uintptr(_t:LineTable, _b:Array<std.UInt>):haxe.UInt64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._uintptr(_t, _b);
    }
    static public function _isGo12(_t:LineTable):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._isGo12(_t);
    }
    static public function lineToPC(_t:LineTable, _line:StdTypes.Int, _maxpc:haxe.UInt64):haxe.UInt64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _line = (_line : stdgo.GoInt);
        final _maxpc = (_maxpc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension.lineToPC(_t, _line, _maxpc);
    }
    static public function pCToLine(_t:LineTable, _pc:haxe.UInt64):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension.pCToLine(_t, _pc);
    }
    static public function _slice(_t:LineTable, _pc:haxe.UInt64):LineTable {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._slice(_t, _pc);
    }
    static public function _parse(_t:LineTable, _targetPC:haxe.UInt64, _targetLine:StdTypes.Int):stdgo.Tuple.Tuple3<Array<std.UInt>, haxe.UInt64, StdTypes.Int> {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        final _targetPC = (_targetPC : stdgo.GoUInt64);
        final _targetLine = (_targetLine : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._parse(_t, _targetPC, _targetLine);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
}
