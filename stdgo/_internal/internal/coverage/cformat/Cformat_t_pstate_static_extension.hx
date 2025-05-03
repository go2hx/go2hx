package stdgo._internal.internal.coverage.cformat;
@:keep @:allow(stdgo._internal.internal.coverage.cformat.Cformat.T_pstate_asInterface) class T_pstate_static_extension {
    @:keep
    @:tdfield
    static public function _sortUnits( _p:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>, _units:stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L139"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_units), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _ui = (_units[(_i : stdgo.GoInt)] : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu);
            var _uj = (_units[(_j : stdgo.GoInt)] : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu);
            var _ifile = ((@:checkr _p ?? throw "null pointer dereference")._funcs[(_ui._fnfid : stdgo.GoInt)]._file?.__copy__() : stdgo.GoString);
            var _jfile = ((@:checkr _p ?? throw "null pointer dereference")._funcs[(_uj._fnfid : stdgo.GoInt)]._file?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L144"
            if (_ifile != (_jfile)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L145"
                return (_ifile < _jfile : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L149"
            if (_units[(_i : stdgo.GoInt)].coverableUnit.stLine != (_units[(_j : stdgo.GoInt)].coverableUnit.stLine)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L150"
                return (_units[(_i : stdgo.GoInt)].coverableUnit.stLine < _units[(_j : stdgo.GoInt)].coverableUnit.stLine : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L152"
            if (_units[(_i : stdgo.GoInt)].coverableUnit.enLine != (_units[(_j : stdgo.GoInt)].coverableUnit.enLine)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L153"
                return (_units[(_i : stdgo.GoInt)].coverableUnit.enLine < _units[(_j : stdgo.GoInt)].coverableUnit.enLine : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L155"
            if (_units[(_i : stdgo.GoInt)].coverableUnit.stCol != (_units[(_j : stdgo.GoInt)].coverableUnit.stCol)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L156"
                return (_units[(_i : stdgo.GoInt)].coverableUnit.stCol < _units[(_j : stdgo.GoInt)].coverableUnit.stCol : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L158"
            if (_units[(_i : stdgo.GoInt)].coverableUnit.enCol != (_units[(_j : stdgo.GoInt)].coverableUnit.enCol)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L159"
                return (_units[(_i : stdgo.GoInt)].coverableUnit.enCol < _units[(_j : stdgo.GoInt)].coverableUnit.enCol : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cformat/format.go#L161"
            return (_units[(_i : stdgo.GoInt)].coverableUnit.nxStmts < _units[(_j : stdgo.GoInt)].coverableUnit.nxStmts : Bool);
        });
    }
}
