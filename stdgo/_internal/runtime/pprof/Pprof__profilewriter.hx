package stdgo._internal.runtime.pprof;
function _profileWriter(_w:stdgo._internal.io.Io_writer.Writer):Void {
        var _b = stdgo._internal.runtime.pprof.Pprof__newprofilebuilder._newProfileBuilder(_w);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L808"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L809"
            stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_duration.Duration));
            var __tmp__ = stdgo._internal.runtime.pprof.Pprof__readprofile._readProfile(), _data:stdgo.Slice<stdgo.GoUInt64> = __tmp__._0, _tags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = __tmp__._1, _eof:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L811"
            {
                var _e = (_b._addCPUData(_data, _tags) : stdgo.Error);
                if (((_e != null) && (_err == null) : Bool)) {
                    _err = _e;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L814"
            if (_eof) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L815"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L818"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L821"
            throw stdgo.Go.toInterface((("runtime/pprof: converting profile: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L823"
        _b._build();
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L824"
        stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done.__send__(true);
    }
