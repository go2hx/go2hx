package stdgo._internal.runtime.pprof;
function _writeHeapProto(_w:stdgo._internal.io.Io_writer.Writer, _p:stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>, _rate:stdgo.GoInt64, _defaultSampleType:stdgo.GoString):stdgo.Error {
        var _b = stdgo._internal.runtime.pprof.Pprof__newprofilebuilder._newProfileBuilder(_w);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L17"
        _b._pbValueType((11 : stdgo.GoInt), ("space" : stdgo.GoString), ("bytes" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L18"
        (@:checkr _b ?? throw "null pointer dereference")._pb._int64Opt((12 : stdgo.GoInt), _rate);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L19"
        _b._pbValueType((1 : stdgo.GoInt), ("alloc_objects" : stdgo.GoString), ("count" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L20"
        _b._pbValueType((1 : stdgo.GoInt), ("alloc_space" : stdgo.GoString), ("bytes" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L21"
        _b._pbValueType((1 : stdgo.GoInt), ("inuse_objects" : stdgo.GoString), ("count" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L22"
        _b._pbValueType((1 : stdgo.GoInt), ("inuse_space" : stdgo.GoString), ("bytes" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L23"
        if (_defaultSampleType != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L24"
            (@:checkr _b ?? throw "null pointer dereference")._pb._int64Opt((14 : stdgo.GoInt), _b._stringIndex(_defaultSampleType?.__copy__()));
        };
        var _values = (new stdgo.Slice<stdgo.GoInt64>(4, 4, ...[(0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _locs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L29"
        for (__0 => _r in _p) {
            var _hideRuntime = (true : Bool);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L31"
            {
                var _tries = (0 : stdgo.GoInt);
                while ((_tries < (2 : stdgo.GoInt) : Bool)) {
                    var _stk = _r.stack();
//"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L36"
                    if (_hideRuntime) {
                        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L37"
                        for (_i => _addr in _stk) {
                            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L38"
                            {
                                var _f = stdgo._internal.runtime.Runtime_funcforpc.funcForPC(_addr);
                                if ((({
                                    final value = _f;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                }) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_f.name()?.__copy__(), ("runtime." : stdgo.GoString)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L39"
                                    continue;
                                };
                            };
                            _stk = (_stk.__slice__(_i) : stdgo.Slice<stdgo.GoUIntptr>);
                            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L43"
                            break;
                        };
                    };
_locs = _b._appendLocsForStack((_locs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>), _stk);
//"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L47"
                    if (((_locs.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L48"
                        break;
                    };
_hideRuntime = false;
                    _tries++;
                };
            };
            {
                var __tmp__ = stdgo._internal.runtime.pprof.Pprof__scaleheapsample._scaleHeapSample(_r.allocObjects, _r.allocBytes, _rate);
                _values[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                _values[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.runtime.pprof.Pprof__scaleheapsample._scaleHeapSample(_r.inUseObjects(), _r.inUseBytes(), _rate);
                _values[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                _values[(3 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
            };
            var _blockSize:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L56"
            if ((_r.allocObjects > (0i64 : stdgo.GoInt64) : Bool)) {
                _blockSize = (_r.allocBytes / _r.allocObjects : stdgo.GoInt64);
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L59"
            _b._pbSample(_values, _locs, function():Void {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L60"
                if (_blockSize != ((0i64 : stdgo.GoInt64))) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L61"
                    _b._pbLabel((3 : stdgo.GoInt), ("bytes" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _blockSize);
                };
            });
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L65"
        _b._build();
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L66"
        return (null : stdgo.Error);
    }
