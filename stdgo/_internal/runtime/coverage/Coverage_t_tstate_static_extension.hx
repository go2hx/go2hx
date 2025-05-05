package stdgo._internal.runtime.coverage;
@:keep @:allow(stdgo._internal.runtime.coverage.Coverage.T_tstate_asInterface) class T_tstate_static_extension {
    @:keep
    @:tdfield
    static public function _readAuxMetaFiles( _ts:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate>, _metafiles:stdgo.GoString, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>):stdgo.Error {
        @:recv var _ts:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate> = _ts;
        var _mfc:stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection = ({} : stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection);
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_metafiles?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L254"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L255"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error reading auxmetafiles file %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_metafiles), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L257"
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mfc) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L258"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("error reading auxmetafiles file %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_metafiles), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L266"
        for (_i => _ in _mfc.importPaths) {
            var _p = (_mfc.importPaths[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L268"
            {
                var __tmp__ = (_importpaths != null && _importpaths.__exists__(_p?.__copy__()) ? { _0 : _importpaths[_p?.__copy__()], _1 : true } : { _0 : ({  } : stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0), _1 : false }), __0:stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L269"
                    continue;
                };
            };
            var _pod:stdgo._internal.internal.coverage.pods.Pods_pod.Pod = ({} : stdgo._internal.internal.coverage.pods.Pods_pod.Pod);
            _pod.metaFile = _mfc.metaFileFragments[(_i : stdgo.GoInt)]?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L273"
            {
                var _err = (_ts._processPod(_pod?.__copy__(), _importpaths) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L274"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L277"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processPod( _ts:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate>, _p:stdgo._internal.internal.coverage.pods.Pods_pod.Pod, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>):stdgo.Error {
        @:recv var _ts:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate> = _ts;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_p.metaFile?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L140"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L141"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("unable to open meta-data file %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_p.metaFile), stdgo.Go.toInterface(_err));
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L144"
                        _f.close();
                    };
                    a();
                }) });
            };
            var _mfr:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader> = (null : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
            {
                var __tmp__ = stdgo._internal.internal.coverage.decodemeta.Decodemeta_newcoveragemetafilereader.newCoverageMetaFileReader(_f, (null : stdgo.Slice<stdgo.GoUInt8>));
                _mfr = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L148"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L149"
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("error reading meta-data file %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_p.metaFile), stdgo.Go.toInterface(_err));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _newmode = (_mfr.counterMode() : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L152"
            if (_newmode != ((@:checkr _ts ?? throw "null pointer dereference")._cmode)) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L153"
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("internal error: counter mode clash: %q from test harness, %q from data file %s" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _ts ?? throw "null pointer dereference")._cmode.string() : stdgo.GoString)), stdgo.Go.toInterface((_newmode.string() : stdgo.GoString)), stdgo.Go.toInterface(_p.metaFile));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _newgran = (_mfr.counterGranularity() : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity);
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L156"
            {
                var _err = ((@:checkr _ts ?? throw "null pointer dereference")._cm.setModeAndGranularity(_p.metaFile?.__copy__(), stdgo._internal.runtime.coverage.Coverage__cmode._cmode, _newgran) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L157"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            var _pmm = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.runtime.coverage.Coverage_t_pkfunc.T_pkfunc, stdgo.Slice<stdgo.GoUInt32>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.runtime.coverage.Coverage_t_pkfunc.T_pkfunc", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_pk", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_fcn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoUInt32>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.runtime.coverage.Coverage_t_pkfunc.T_pkfunc, stdgo.Slice<stdgo.GoUInt32>>) : stdgo.GoMap<stdgo._internal.runtime.coverage.Coverage_t_pkfunc.T_pkfunc, stdgo.Slice<stdgo.GoUInt32>>);
            var _readcdf = (function(_cdf:stdgo.GoString):stdgo.Error {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    var __tmp__ = stdgo._internal.os.Os_open.open(_cdf?.__copy__()), _cf:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L166"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L167"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("opening counter data file %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_cdf), stdgo.Go.toInterface(_err));
                    };
                    {
                        final __f__ = _cf.close;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = (null : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
                    {
                        var __tmp__ = stdgo._internal.internal.coverage.decodecounter.Decodecounter_newcounterdatareader.newCounterDataReader(_cdf?.__copy__(), stdgo.Go.asInterface(_cf));
                        _cdr = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L172"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L173"
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("reading counter data file %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_cdf), stdgo.Go.toInterface(_err));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var _data:stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload = ({} : stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload);
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L176"
                    while (true) {
                        var __tmp__ = _cdr.nextFunc((stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload>)), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L178"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L179"
                            {
                                final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("reading counter data file %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_cdf), stdgo.Go.toInterface(_err));
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L181"
                        if (!_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L182"
                            break;
                        };
                        var _key = ({ _pk : _data.pkgIdx, _fcn : _data.funcIdx } : stdgo._internal.runtime.coverage.Coverage_t_pkfunc.T_pkfunc);
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L187"
                        {
                            var __tmp__ = (_pmm != null && _pmm.__exists__(_key?.__copy__()) ? { _0 : _pmm[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt32>), _1 : false }), _prev:stdgo.Slice<stdgo.GoUInt32> = __tmp__._0, _found:Bool = __tmp__._1;
                            if (_found) {
                                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L189"
                                {
                                    var __tmp__ = (@:checkr _ts ?? throw "null pointer dereference")._cm.mergeCounters(_data.counters, _prev), _err:stdgo.Error = __tmp__._0, __10:Bool = __tmp__._1;
                                    if (_err != null) {
                                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L190"
                                        {
                                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("processing counter data file %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_cdf), stdgo.Go.toInterface(_err));
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                            };
                        };
                        var _c = _ts.allocateCounters((_data.counters.length));
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L194"
                        _c.__copyTo__(_data.counters);
                        _pmm[_key] = _c;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L197"
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        if (stdgo.Go.recover_exception != null) {
                            final e = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            throw e;
                        };
                        return (null : stdgo.Error);
                    };
                } catch(__exception__) {
                    {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        {
                            function f() {
                                try {
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                    };
                                } catch(__exception__2) {
                                    var exe:Dynamic = __exception__2.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    f();
                                };
                            };
                            f();
                        };
                        if (stdgo.Go.recover_exception != null) {
                            final e = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            throw e;
                        };
                        return (null : stdgo.Error);
                    };
                };
            } : stdgo.GoString -> stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L201"
            for (__4 => _cdf in _p.counterDataFiles) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L202"
                {
                    var _err = (_readcdf(_cdf?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L203"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
            };
            var _np = (_mfr.numPackages() : stdgo.GoUInt32);
            var _payload = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L210"
            {
                var _pkIdx = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                while ((_pkIdx < _np : Bool)) {
                    var _pd:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = (null : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
{
                        var __tmp__ = _mfr.getPackageDecoder(_pkIdx, _payload);
                        _pd = @:tmpset0 __tmp__._0;
                        _payload = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
//"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L213"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L214"
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("reading pkg %d from meta-file %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_pkIdx), stdgo.Go.toInterface(_p.metaFile), stdgo.Go.toInterface(_err));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L216"
                    (@:checkr _ts ?? throw "null pointer dereference")._cf.setPackage(_pd.packagePath().__copy__());
_importpaths[_pd.packagePath()] = ({  } : stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0);
var _fd:stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc = ({} : stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc);
var _nf = (_pd.numFuncs() : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L220"
                    {
                        var _fnIdx = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        while ((_fnIdx < _nf : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L221"
                            {
                                var _err = (_pd.readFunc(_fnIdx, (stdgo.Go.setRef(_fd) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>)) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L222"
                                    {
                                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("reading meta-data file %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_p.metaFile), stdgo.Go.toInterface(_err));
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
var _key = ({ _pk : _pkIdx, _fcn : _fnIdx } : stdgo._internal.runtime.coverage.Coverage_t_pkfunc.T_pkfunc);
var __tmp__ = (_pmm != null && _pmm.__exists__(_key.__copy__()) ? { _0 : _pmm[_key.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt32>), _1 : false }), _counters:stdgo.Slice<stdgo.GoUInt32> = __tmp__._0, _haveCounters:Bool = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L227"
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < (_fd.units.length) : Bool)) {
                                    var _u = (_fd.units[(_i : stdgo.GoInt)] : stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit);
//"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L231"
                                    if (_u.parent != ((0u32 : stdgo.GoUInt32))) {
                                        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L232"
                                        {
                                            _i++;
                                            continue;
                                        };
                                    };
var _count = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L235"
                                    if (_haveCounters) {
                                        _count = _counters[(_i : stdgo.GoInt)];
                                    };
//"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L238"
                                    (@:checkr _ts ?? throw "null pointer dereference")._cf.addUnit(_fd.srcfile.__copy__(), _fd.funcname.__copy__(), _fd.lit, _u.__copy__(), _count);
                                    _i++;
                                };
                            };
                            _fnIdx++;
                        };
                    };
                    _pkIdx++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/testsupport.go#L242"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function allocateCounters( __self__:stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate, _0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt32> return @:_5 __self__.allocateCounters(_0);
}
