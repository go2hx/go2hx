package stdgo.debug.gosym;
class Table_static_extension {
    static public function symByAddr(_t:Table, _addr:haxe.UInt64):Sym {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>);
        final _addr = (_addr : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.symByAddr(_t, _addr);
    }
    static public function lookupFunc(_t:Table, _name:String):Func {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.lookupFunc(_t, _name);
    }
    static public function lookupSym(_t:Table, _name:String):Sym {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.lookupSym(_t, _name);
    }
    static public function lineToPC(_t:Table, _file:String, _line:StdTypes.Int):stdgo.Tuple.Tuple3<haxe.UInt64, Func, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>);
        final _file = (_file : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.lineToPC(_t, _file, _line);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pCToLine(_t:Table, _pc:haxe.UInt64):stdgo.Tuple.Tuple3<String, StdTypes.Int, Func> {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>);
        final _pc = (_pc : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.pCToLine(_t, _pc);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pCToFunc(_t:Table, _pc:haxe.UInt64):Func {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.pCToFunc(_t, _pc);
    }
}
