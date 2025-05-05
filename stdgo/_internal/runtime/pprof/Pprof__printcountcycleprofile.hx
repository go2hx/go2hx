package stdgo._internal.runtime.pprof;
function _printCountCycleProfile(_w:stdgo._internal.io.Io_writer.Writer, _countName:stdgo.GoString, _cycleName:stdgo.GoString, _records:stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>):stdgo.Error {
        var _b = stdgo._internal.runtime.pprof.Pprof__newprofilebuilder._newProfileBuilder(_w);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L377"
        _b._pbValueType((11 : stdgo.GoInt), _countName?.__copy__(), ("count" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L378"
        (@:checkr _b ?? throw "null pointer dereference")._pb._int64Opt((12 : stdgo.GoInt), (1i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L379"
        _b._pbValueType((1 : stdgo.GoInt), _countName?.__copy__(), ("count" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L380"
        _b._pbValueType((1 : stdgo.GoInt), _cycleName?.__copy__(), ("nanoseconds" : stdgo.GoString));
        var _cpuGHz = ((stdgo._internal.runtime.pprof.Pprof__runtime_cyclespersecond._runtime_cyclesPerSecond() : stdgo.GoFloat64) / (1e+09 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _values = (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _locs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L386"
        for (__0 => _r in _records) {
            _values[(0 : stdgo.GoInt)] = _r.count;
            _values[(1 : stdgo.GoInt)] = (((_r.cycles : stdgo.GoFloat64) / _cpuGHz : stdgo.GoFloat64) : stdgo.GoInt64);
            _locs = _b._appendLocsForStack((_locs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>), _r.stack());
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L392"
            _b._pbSample(_values, _locs, null);
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L394"
        _b._build();
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L395"
        return (null : stdgo.Error);
    }
