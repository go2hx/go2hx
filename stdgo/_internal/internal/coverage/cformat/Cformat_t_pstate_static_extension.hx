package stdgo._internal.internal.coverage.cformat;
@:keep @:allow(stdgo._internal.internal.coverage.cformat.Cformat.T_pstate_asInterface) class T_pstate_static_extension {
    @:keep
    @:tdfield
    static public function _sortUnits( _p:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>, _units:stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate> = _p;
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_units), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _ui = (_units[(_i : stdgo.GoInt)] : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu);
            var _uj = (_units[(_j : stdgo.GoInt)] : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu);
            var _ifile = ((@:checkr _p ?? throw "null pointer dereference")._funcs[(_ui._fnfid : stdgo.GoInt)]._file?.__copy__() : stdgo.GoString);
            var _jfile = ((@:checkr _p ?? throw "null pointer dereference")._funcs[(_uj._fnfid : stdgo.GoInt)]._file?.__copy__() : stdgo.GoString);
            if (_ifile != (_jfile)) {
                return (_ifile < _jfile : Bool);
            };
            if (_units[(_i : stdgo.GoInt)].coverableUnit.stLine != (_units[(_j : stdgo.GoInt)].coverableUnit.stLine)) {
                return (_units[(_i : stdgo.GoInt)].coverableUnit.stLine < _units[(_j : stdgo.GoInt)].coverableUnit.stLine : Bool);
            };
            if (_units[(_i : stdgo.GoInt)].coverableUnit.enLine != (_units[(_j : stdgo.GoInt)].coverableUnit.enLine)) {
                return (_units[(_i : stdgo.GoInt)].coverableUnit.enLine < _units[(_j : stdgo.GoInt)].coverableUnit.enLine : Bool);
            };
            if (_units[(_i : stdgo.GoInt)].coverableUnit.stCol != (_units[(_j : stdgo.GoInt)].coverableUnit.stCol)) {
                return (_units[(_i : stdgo.GoInt)].coverableUnit.stCol < _units[(_j : stdgo.GoInt)].coverableUnit.stCol : Bool);
            };
            if (_units[(_i : stdgo.GoInt)].coverableUnit.enCol != (_units[(_j : stdgo.GoInt)].coverableUnit.enCol)) {
                return (_units[(_i : stdgo.GoInt)].coverableUnit.enCol < _units[(_j : stdgo.GoInt)].coverableUnit.enCol : Bool);
            };
            return (_units[(_i : stdgo.GoInt)].coverableUnit.nxStmts < _units[(_j : stdgo.GoInt)].coverableUnit.nxStmts : Bool);
        });
    }
}
