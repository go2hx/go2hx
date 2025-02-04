package stdgo._internal.runtime.pprof;
function _writeHeapProto(_w:stdgo._internal.io.Io_writer.Writer, _p:stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>, _rate:stdgo.GoInt64, _defaultSampleType:stdgo.GoString):stdgo.Error {
        var _b = stdgo._internal.runtime.pprof.Pprof__newprofilebuilder._newProfileBuilder(_w);
        @:check2r _b._pbValueType((11 : stdgo.GoInt), ("space" : stdgo.GoString), ("bytes" : stdgo.GoString));
        @:check2 (@:checkr _b ?? throw "null pointer dereference")._pb._int64Opt((12 : stdgo.GoInt), _rate);
        @:check2r _b._pbValueType((1 : stdgo.GoInt), ("alloc_objects" : stdgo.GoString), ("count" : stdgo.GoString));
        @:check2r _b._pbValueType((1 : stdgo.GoInt), ("alloc_space" : stdgo.GoString), ("bytes" : stdgo.GoString));
        @:check2r _b._pbValueType((1 : stdgo.GoInt), ("inuse_objects" : stdgo.GoString), ("count" : stdgo.GoString));
        @:check2r _b._pbValueType((1 : stdgo.GoInt), ("inuse_space" : stdgo.GoString), ("bytes" : stdgo.GoString));
        if (_defaultSampleType != ((stdgo.Go.str() : stdgo.GoString))) {
            @:check2 (@:checkr _b ?? throw "null pointer dereference")._pb._int64Opt((14 : stdgo.GoInt), @:check2r _b._stringIndex(_defaultSampleType?.__copy__()));
        };
        var _values = (new stdgo.Slice<stdgo.GoInt64>(4, 4, ...[(0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _locs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        for (__0 => _r in _p) {
            var _hideRuntime = (true : Bool);
            {
                var _tries = (0 : stdgo.GoInt);
                while ((_tries < (2 : stdgo.GoInt) : Bool)) {
                    var _stk = @:check2 _r.stack();
if (_hideRuntime) {
                        for (_i => _addr in _stk) {
                            {
                                var _f = stdgo._internal.runtime.Runtime_funcforpc.funcForPC(_addr);
                                if (((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(@:check2r _f.name()?.__copy__(), ("runtime." : stdgo.GoString)) : Bool)) {
                                    continue;
                                };
                            };
                            _stk = (_stk.__slice__(_i) : stdgo.Slice<stdgo.GoUIntptr>);
                            break;
                        };
                    };
_locs = @:check2r _b._appendLocsForStack((_locs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>), _stk);
if (((_locs.length) > (0 : stdgo.GoInt) : Bool)) {
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
                var __tmp__ = stdgo._internal.runtime.pprof.Pprof__scaleheapsample._scaleHeapSample(@:check2 _r.inUseObjects(), @:check2 _r.inUseBytes(), _rate);
                _values[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                _values[(3 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
            };
            var _blockSize:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            if ((_r.allocObjects > (0i64 : stdgo.GoInt64) : Bool)) {
                _blockSize = (_r.allocBytes / _r.allocObjects : stdgo.GoInt64);
            };
            @:check2r _b._pbSample(_values, _locs, function():Void {
                if (_blockSize != ((0i64 : stdgo.GoInt64))) {
                    @:check2r _b._pbLabel((3 : stdgo.GoInt), ("bytes" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _blockSize);
                };
            });
        };
        @:check2r _b._build();
        return (null : stdgo.Error);
    }
