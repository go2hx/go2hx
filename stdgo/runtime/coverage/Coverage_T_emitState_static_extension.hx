package stdgo.runtime.coverage;
class T_emitState_static_extension {
    static public function _emitCounterDataFile(_s:T_emitState, _finalHash:haxe.ds.Vector<std.UInt>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        final _finalHash = ([for (i in _finalHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._emitCounterDataFile(_s, _finalHash, _w);
    }
    static public function visitFuncs(_s:T_emitState, _f:stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitorFn.CounterVisitorFn):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension.visitFuncs(_s, _f);
    }
    static public function _needMetaDataFile(_s:T_emitState):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._needMetaDataFile(_s);
    }
    static public function _emitMetaDataFile(_s:T_emitState, _finalHash:haxe.ds.Vector<std.UInt>, _tlen:haxe.UInt64):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        final _finalHash = ([for (i in _finalHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _tlen = (_tlen : stdgo.GoUInt64);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._emitMetaDataFile(_s, _finalHash, _tlen);
    }
    static public function _openOutputFiles(_s:T_emitState, _metaHash:haxe.ds.Vector<std.UInt>, _metaLen:haxe.UInt64, _which:T_fileType):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        final _metaHash = ([for (i in _metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _metaLen = (_metaLen : stdgo.GoUInt64);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._openOutputFiles(_s, _metaHash, _metaLen, _which);
    }
    static public function _openCounterFile(_s:T_emitState, _metaHash:haxe.ds.Vector<std.UInt>):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        final _metaHash = ([for (i in _metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._openCounterFile(_s, _metaHash);
    }
    static public function _openMetaFile(_s:T_emitState, _metaHash:haxe.ds.Vector<std.UInt>, _metaLen:haxe.UInt64):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        final _metaHash = ([for (i in _metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _metaLen = (_metaLen : stdgo.GoUInt64);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._openMetaFile(_s, _metaHash, _metaLen);
    }
    static public function _emitCounterDataToWriter(_s:T_emitState, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_emitState.T_emitState>);
        return stdgo._internal.runtime.coverage.Coverage_T_emitState_static_extension.T_emitState_static_extension._emitCounterDataToWriter(_s, _w);
    }
}
