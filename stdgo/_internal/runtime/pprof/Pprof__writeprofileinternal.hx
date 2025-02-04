package stdgo._internal.runtime.pprof;
function _writeProfileInternal(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt, _name:stdgo.GoString, _runtimeProfile:stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord> -> { var _0 : stdgo.GoInt; var _1 : Bool; }):stdgo.Error {
        var _p:stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>);
        var __tmp__ = _runtimeProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>)), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        while (true) {
            _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>);
            {
                var __tmp__ = _runtimeProfile(_p);
                _n = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                _p = (_p.__slice__(0, _n) : stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>);
                break;
            };
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_p), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_p[(_i : stdgo.GoInt)].cycles > _p[(_j : stdgo.GoInt)].cycles : Bool);
        });
        if ((_debug <= (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.runtime.pprof.Pprof__printcountcycleprofile._printCountCycleProfile(_w, ("contentions" : stdgo.GoString), ("delay" : stdgo.GoString), _p);
        };
        var _b = stdgo._internal.bufio.Bufio_newwriter.newWriter(_w);
        var _tw = stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(_w, (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
        _w = stdgo.Go.asInterface(_tw);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("--- %v:\n" : stdgo.GoString), stdgo.Go.toInterface(_name));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("cycles/second=%v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.pprof.Pprof__runtime_cyclespersecond._runtime_cyclesPerSecond()));
        if (_name == (("mutex" : stdgo.GoString))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("sampling period=%d\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_setmutexprofilefraction.setMutexProfileFraction((-1 : stdgo.GoInt))));
        };
        for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>);
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%v %v @" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").cycles), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").count));
            for (__0 => _pc in @:check2r _r.stack()) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (" %#x" : stdgo.GoString), stdgo.Go.toInterface(_pc));
            };
            stdgo._internal.fmt.Fmt_fprint.fprint(_w, stdgo.Go.toInterface(("\n" : stdgo.GoString)));
            if ((_debug > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.runtime.pprof.Pprof__printstackrecord._printStackRecord(_w, @:check2r _r.stack(), true);
            };
        };
        if ((_tw != null && ((_tw : Dynamic).__nil__ == null || !(_tw : Dynamic).__nil__))) {
            @:check2r _tw.flush();
        };
        return @:check2r _b.flush();
    }
