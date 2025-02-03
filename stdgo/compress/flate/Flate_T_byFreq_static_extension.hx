package stdgo.compress.flate;
class T_byFreq_static_extension {
    static public function swap(_s:T_byFreq, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_T_byFreq_static_extension.T_byFreq_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_byFreq, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_T_byFreq_static_extension.T_byFreq_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_byFreq):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_byFreq_static_extension.T_byFreq_static_extension.len(_s);
    }
    static public function _sort(_s:T_byFreq, _a:Array<T_literalNode>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_byFreq.T_byFreq>);
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        stdgo._internal.compress.flate.Flate_T_byFreq_static_extension.T_byFreq_static_extension._sort(_s, _a);
    }
}
