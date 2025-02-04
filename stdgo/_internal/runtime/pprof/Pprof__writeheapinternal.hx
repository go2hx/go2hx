package stdgo._internal.runtime.pprof;
function _writeHeapInternal(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt, _defaultSampleType:stdgo.GoString):stdgo.Error {
        var _memStats:stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
        if (_debug != ((0 : stdgo.GoInt))) {
            _memStats = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_memstats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
            stdgo._internal.runtime.Runtime_readmemstats.readMemStats(_memStats);
        };
        var _p:stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
        var __tmp__ = stdgo._internal.runtime.Runtime_memprofile.memProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>), true), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        while (true) {
            _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            {
                var __tmp__ = stdgo._internal.runtime.Runtime_memprofile.memProfile(_p, true);
                _n = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
                break;
            };
        };
        if (_debug == ((0 : stdgo.GoInt))) {
            return stdgo._internal.runtime.pprof.Pprof__writeheapproto._writeHeapProto(_w, _p, (stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate : stdgo.GoInt64), _defaultSampleType?.__copy__());
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_p), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (@:check2 _p[(_i : stdgo.GoInt)].inUseBytes() > @:check2 _p[(_j : stdgo.GoInt)].inUseBytes() : Bool);
        });
        var _b = stdgo._internal.bufio.Bufio_newwriter.newWriter(_w);
        var _tw = stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(stdgo.Go.asInterface(_b), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
        _w = stdgo.Go.asInterface(_tw);
        var _total:stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord = ({} : stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord);
        for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            _total.allocBytes = (_total.allocBytes + ((@:checkr _r ?? throw "null pointer dereference").allocBytes) : stdgo.GoInt64);
            _total.allocObjects = (_total.allocObjects + ((@:checkr _r ?? throw "null pointer dereference").allocObjects) : stdgo.GoInt64);
            _total.freeBytes = (_total.freeBytes + ((@:checkr _r ?? throw "null pointer dereference").freeBytes) : stdgo.GoInt64);
            _total.freeObjects = (_total.freeObjects + ((@:checkr _r ?? throw "null pointer dereference").freeObjects) : stdgo.GoInt64);
        };
        var _rate = ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate : stdgo.GoInt);
        var _inUseBytes = (@:check2 _total.inUseBytes() : stdgo.GoInt64);
        var _allocBytes = (_total.allocBytes : stdgo.GoInt64);
        if (_inUseBytes == (_allocBytes)) {
            _allocBytes++;
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("heap profile: %d: %d [%d: %d] @ heap/%d\n" : stdgo.GoString), stdgo.Go.toInterface(@:check2 _total.inUseObjects()), stdgo.Go.toInterface(_inUseBytes), stdgo.Go.toInterface(_total.allocObjects), stdgo.Go.toInterface(_allocBytes), stdgo.Go.toInterface(_rate));
        for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%d: %d [%d: %d] @" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _r.inUseObjects()), stdgo.Go.toInterface(@:check2r _r.inUseBytes()), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").allocObjects), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").allocBytes));
            for (__0 => _pc in @:check2r _r.stack()) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (" %#x" : stdgo.GoString), stdgo.Go.toInterface(_pc));
            };
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n" : stdgo.GoString));
            stdgo._internal.runtime.pprof.Pprof__printstackrecord._printStackRecord(_w, @:check2r _r.stack(), false);
        };
        var _s = _memStats;
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n# runtime.MemStats\n" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Alloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").alloc));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# TotalAlloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").totalAlloc));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Sys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").sys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Lookups = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").lookups));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Mallocs = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mallocs));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Frees = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").frees));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapAlloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapAlloc));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapIdle = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapIdle));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapInuse = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapInuse));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapReleased = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapReleased));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapObjects = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapObjects));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Stack = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").stackInuse), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").stackSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# MSpan = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mSpanInuse), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mSpanSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# MCache = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mCacheInuse), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mCacheSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# BuckHashSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").buckHashSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# GCSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").gCSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# OtherSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").otherSys));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NextGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").nextGC));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# LastGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").lastGC));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# PauseNs = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").pauseNs));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# PauseEnd = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").pauseEnd));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NumGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").numGC));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NumForcedGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").numForcedGC));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# GCCPUFraction = %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").gCCPUFraction));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# DebugGC = %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").debugGC));
        stdgo._internal.runtime.pprof.Pprof__addmaxrss._addMaxRSS(_w);
        @:check2r _tw.flush();
        return @:check2r _b.flush();
    }
