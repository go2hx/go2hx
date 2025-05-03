package stdgo._internal.runtime.pprof;
function _writeHeapInternal(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt, _defaultSampleType:stdgo.GoString):stdgo.Error {
        var _memStats:stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L543"
        if (_debug != ((0 : stdgo.GoInt))) {
            _memStats = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_memstats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L547"
            stdgo._internal.runtime.Runtime_readmemstats.readMemStats(_memStats);
        };
        var _p:stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
        var __tmp__ = stdgo._internal.runtime.Runtime_memprofile.memProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>), true), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L558"
        while (true) {
            _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            {
                var __tmp__ = stdgo._internal.runtime.Runtime_memprofile.memProfile(_p, true);
                _n = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L564"
            if (_ok) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L566"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L571"
        if (_debug == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L572"
            return stdgo._internal.runtime.pprof.Pprof__writeheapproto._writeHeapProto(_w, _p, (stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate : stdgo.GoInt64), _defaultSampleType?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L575"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_p), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L575"
            return (_p[(_i : stdgo.GoInt)].inUseBytes() > _p[(_j : stdgo.GoInt)].inUseBytes() : Bool);
        });
        var _b = stdgo._internal.bufio.Bufio_newwriter.newWriter(_w);
        var _tw = stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(stdgo.Go.asInterface(_b), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
        _w = stdgo.Go.asInterface(_tw);
        var _total:stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord = ({} : stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L582"
        for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            _total.allocBytes = (_total.allocBytes + ((@:checkr _r ?? throw "null pointer dereference").allocBytes) : stdgo.GoInt64);
            _total.allocObjects = (_total.allocObjects + ((@:checkr _r ?? throw "null pointer dereference").allocObjects) : stdgo.GoInt64);
            _total.freeBytes = (_total.freeBytes + ((@:checkr _r ?? throw "null pointer dereference").freeBytes) : stdgo.GoInt64);
            _total.freeObjects = (_total.freeObjects + ((@:checkr _r ?? throw "null pointer dereference").freeObjects) : stdgo.GoInt64);
        };
        var _rate = ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate : stdgo.GoInt);
        var _inUseBytes = (_total.inUseBytes() : stdgo.GoInt64);
        var _allocBytes = (_total.allocBytes : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L603"
        if (_inUseBytes == (_allocBytes)) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L604"
            _allocBytes++;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L607"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("heap profile: %d: %d [%d: %d] @ heap/%d\n" : stdgo.GoString), stdgo.Go.toInterface(_total.inUseObjects()), stdgo.Go.toInterface(_inUseBytes), stdgo.Go.toInterface(_total.allocObjects), stdgo.Go.toInterface(_allocBytes), stdgo.Go.toInterface(_rate));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L612"
        for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L614"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%d: %d [%d: %d] @" : stdgo.GoString), stdgo.Go.toInterface(_r.inUseObjects()), stdgo.Go.toInterface(_r.inUseBytes()), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").allocObjects), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").allocBytes));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L617"
            for (__0 => _pc in _r.stack()) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L618"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (" %#x" : stdgo.GoString), stdgo.Go.toInterface(_pc));
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L620"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L621"
            stdgo._internal.runtime.pprof.Pprof__printstackrecord._printStackRecord(_w, _r.stack(), false);
        };
        var _s = _memStats;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L627"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n# runtime.MemStats\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L628"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Alloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").alloc));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L629"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# TotalAlloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").totalAlloc));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L630"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Sys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").sys));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L631"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Lookups = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").lookups));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L632"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Mallocs = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mallocs));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L633"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Frees = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").frees));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L635"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapAlloc = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapAlloc));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L636"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapSys));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L637"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapIdle = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapIdle));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L638"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapInuse = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapInuse));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L639"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapReleased = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapReleased));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L640"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapObjects = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").heapObjects));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L642"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Stack = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").stackInuse), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").stackSys));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L643"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# MSpan = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mSpanInuse), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mSpanSys));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L644"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# MCache = %d / %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mCacheInuse), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").mCacheSys));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L645"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# BuckHashSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").buckHashSys));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L646"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# GCSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").gCSys));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L647"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# OtherSys = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").otherSys));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L649"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NextGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").nextGC));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L650"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# LastGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").lastGC));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L651"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# PauseNs = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").pauseNs));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L652"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# PauseEnd = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").pauseEnd));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L653"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NumGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").numGC));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L654"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NumForcedGC = %d\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").numForcedGC));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L655"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# GCCPUFraction = %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").gCCPUFraction));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L656"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# DebugGC = %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").debugGC));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L659"
        stdgo._internal.runtime.pprof.Pprof__addmaxrss._addMaxRSS(_w);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L661"
        _tw.flush();
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L662"
        return _b.flush();
    }
