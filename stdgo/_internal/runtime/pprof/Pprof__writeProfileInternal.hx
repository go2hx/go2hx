package stdgo._internal.runtime.pprof;
function _writeProfileInternal(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt, _name:stdgo.GoString, _runtimeProfile:stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord> -> { var _0 : stdgo.GoInt; var _1 : Bool; }):stdgo.Error {
        var _p:stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>);
        var __tmp__ = _runtimeProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>)), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        while (true) {
            _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>);
            {
                var __tmp__ = _runtimeProfile(_p);
                _n = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (_ok) {
                _p = (_p.__slice__(0, _n) : stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>);
                break;
            };
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_p), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_p[(_i : stdgo.GoInt)].cycles > _p[(_j : stdgo.GoInt)].cycles : Bool);
        });
        if ((_debug <= (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.runtime.pprof.Pprof__printCountCycleProfile._printCountCycleProfile(_w, ("contentions" : stdgo.GoString), ("delay" : stdgo.GoString), _p);
        };
        var _b = stdgo._internal.bufio.Bufio_newWriter.newWriter(_w);
        var _tw = stdgo._internal.text.tabwriter.Tabwriter_newWriter.newWriter(_w, (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
        _w = stdgo.Go.asInterface(_tw);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("--- %v:\n" : stdgo.GoString), stdgo.Go.toInterface(_name));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("cycles/second=%v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.pprof.Pprof__runtime_cyclesPerSecond._runtime_cyclesPerSecond()));
        if (_name == (("mutex" : stdgo.GoString))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("sampling period=%d\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_setMutexProfileFraction.setMutexProfileFraction((-1 : stdgo.GoInt))));
        };
        for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>);
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%v %v @" : stdgo.GoString), stdgo.Go.toInterface(_r.cycles), stdgo.Go.toInterface(_r.count));
            for (__0 => _pc in _r.stack()) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (" %#x" : stdgo.GoString), stdgo.Go.toInterface(_pc));
            };
            stdgo._internal.fmt.Fmt_fprint.fprint(_w, stdgo.Go.toInterface(("\n" : stdgo.GoString)));
            if ((_debug > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.runtime.pprof.Pprof__printStackRecord._printStackRecord(_w, _r.stack(), true);
            };
        };
        if (_tw != null && ((_tw : Dynamic).__nil__ == null || !(_tw : Dynamic).__nil__)) {
            _tw.flush();
        };
        return _b.flush();
    }
