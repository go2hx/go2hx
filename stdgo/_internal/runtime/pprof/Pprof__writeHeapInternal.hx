package stdgo._internal.runtime.pprof;
function _writeHeapInternal(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt, _defaultSampleType:stdgo.GoString):stdgo.Error {
        var _memStats:stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>);
        if (_debug != ((0 : stdgo.GoInt))) {
            _memStats = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_MemStats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>);
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats(_memStats);
        };
        var _p:stdgo.Slice<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
        var __tmp__ = stdgo._internal.runtime.Runtime_memProfile.memProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>), true), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        while (true) {
            _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
            {
                var __tmp__ = stdgo._internal.runtime.Runtime_memProfile.memProfile(_p, true);
                _n = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (_ok) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
                break;
            };
        };
        if (_debug == ((0 : stdgo.GoInt))) {
            return stdgo._internal.runtime.pprof.Pprof__writeHeapProto._writeHeapProto(_w, _p, (stdgo._internal.runtime.Runtime_memProfileRate.memProfileRate : stdgo.GoInt64), _defaultSampleType?.__copy__());
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_p), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_p[(_i : stdgo.GoInt)].inUseBytes() > _p[(_j : stdgo.GoInt)].inUseBytes() : Bool);
        });
        var _b = stdgo._internal.bufio.Bufio_newWriter.newWriter(_w);
        var _tw = stdgo._internal.text.tabwriter.Tabwriter_newWriter.newWriter(stdgo.Go.asInterface(_b), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
        _w = stdgo.Go.asInterface(_tw);
        var _total:stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord = ({} : stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord);
        for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
            _total.allocBytes = (_total.allocBytes + (_r.allocBytes) : stdgo.GoInt64);
            _total.allocObjects = (_total.allocObjects + (_r.allocObjects) : stdgo.GoInt64);
            _total.freeBytes = (_total.freeBytes + (_r.freeBytes) : stdgo.GoInt64);
            _total.freeObjects = (_total.freeObjects + (_r.freeObjects) : stdgo.GoInt64);
        };
        var _rate = ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_memProfileRate.memProfileRate : stdgo.GoInt);
        var _inUseBytes = (_total.inUseBytes() : stdgo.GoInt64);
        var _allocBytes = (_total.allocBytes : stdgo.GoInt64);
        if (_inUseBytes == (_allocBytes)) {
            _allocBytes++;
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("heap profile: %d: %d [%d: %d] @ heap/%d\n" : stdgo.GoString), stdgo.Go.toInterface(_total.inUseObjects()), stdgo.Go.toInterface(_inUseBytes), stdgo.Go.toInterface(_total.allocObjects), stdgo.Go.toInterface(_allocBytes), stdgo.Go.toInterface(_rate));
        for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%d: %d [%d: %d] @" : stdgo.GoString), stdgo.Go.toInterface(_r.inUseObjects()), stdgo.Go.toInterface(_r.inUseBytes()), stdgo.Go.toInterface(_r.allocObjects), stdgo.Go.toInterface(_r.allocBytes));
            for (__0 => _pc in _r.stack()) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (" %#x" : stdgo.GoString), stdgo.Go.toInterface(_pc));
            };
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n" : stdgo.GoString));
            stdgo._internal.runtime.pprof.Pprof__printStackRecord._printStackRecord(_w, _r.stack(), false);
        };
        var _s = _memStats;
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n# runtime.MemStats\n" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Alloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.alloc));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# TotalAlloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.totalAlloc));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Sys = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.sys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Lookups = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.lookups));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Mallocs = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.mallocs));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Frees = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.frees));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapAlloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.heapAlloc));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.heapSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapIdle = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.heapIdle));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapInuse = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.heapInuse));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapReleased = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.heapReleased));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapObjects = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.heapObjects));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Stack = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.stackInuse), stdgo.Go.toInterface(_s.stackSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# MSpan = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.mspanInuse), stdgo.Go.toInterface(_s.mspanSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# MCache = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.mcacheInuse), stdgo.Go.toInterface(_s.mcacheSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# BuckHashSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.buckHashSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# GCSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.gcsys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# OtherSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.otherSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NextGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.nextGC));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# LastGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.lastGC));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# PauseNs = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.pauseNs));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# PauseEnd = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.pauseEnd));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NumGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.numGC));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NumForcedGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_s.numForcedGC));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# GCCPUFraction = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s.gccpufraction));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# DebugGC = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s.debugGC));
        stdgo._internal.runtime.pprof.Pprof__addMaxRSS._addMaxRSS(_w);
        _tw.flush();
        return _b.flush();
    }
