package stdgo._internal.runtime.coverage;
@:keep @:allow(stdgo._internal.runtime.coverage.Coverage.T_tstate_asInterface) class T_tstate_static_extension {
    @:keep
    @:tdfield
    static public function _readAuxMetaFiles( _ts:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate>, _metafiles:stdgo.GoString, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>):stdgo.Error {
        @:recv var _ts:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate> = _ts;
        var _mfc:stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection = ({} : stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection);
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_metafiles?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error reading auxmetafiles file %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_metafiles), stdgo.Go.toInterface(_err));
        };
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mfc) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection>)))) : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("error reading auxmetafiles file %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_metafiles), stdgo.Go.toInterface(_err));
            };
        };
        for (_i => _ in _mfc.importPaths) {
            var _p = (_mfc.importPaths[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = (_importpaths != null && _importpaths.__exists__(_p?.__copy__()) ? { _0 : _importpaths[_p?.__copy__()], _1 : true } : { _0 : ({  } : stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0), _1 : false }), __0:stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    continue;
                };
            };
            var _pod:stdgo._internal.internal.coverage.pods.Pods_pod.Pod = ({} : stdgo._internal.internal.coverage.pods.Pods_pod.Pod);
            _pod.metaFile = _mfc.metaFileFragments[(_i : stdgo.GoInt)]?.__copy__();
            {
                var _err = (@:check2r _ts._processPod(_pod?.__copy__(), _importpaths) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processPod( _ts:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate>, _p:stdgo._internal.internal.coverage.pods.Pods_pod.Pod, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>):stdgo.Error {
        @:recv var _ts:stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate> = _ts;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_p.metaFile?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("unable to open meta-data file %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_p.metaFile), stdgo.Go.toInterface(_err));
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        @:check2r _f.close();
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
            if (_err != null) {
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
            var _newmode = (@:check2r _mfr.counterMode() : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            if (_newmode != ((@:checkr _ts ?? throw "null pointer dereference")._cmode)) {
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
            var _newgran = (@:check2r _mfr.counterGranularity() : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity);
            {
                var _err = (@:check2r (@:checkr _ts ?? throw "null pointer dereference")._cm.setModeAndGranularity(_p.metaFile?.__copy__(), stdgo._internal.runtime.coverage.Coverage__cmode._cmode, _newgran) : stdgo.Error);
                if (_err != null) {
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
                    if (_err != null) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("opening counter data file %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_cdf), stdgo.Go.toInterface(_err));
                    };
                    {
                        final __f__ = @:check2r _cf.close;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    var _cdr:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader> = (null : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
                    {
                        var __tmp__ = stdgo._internal.internal.coverage.decodecounter.Decodecounter_newcounterdatareader.newCounterDataReader(_cdf?.__copy__(), stdgo.Go.asInterface(_cf));
                        _cdr = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
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
                    while (true) {
                        var __tmp__ = @:check2r _cdr.nextFunc((stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload>)), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
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
                        if (!_ok) {
                            break;
                        };
                        var _key = ({ _pk : _data.pkgIdx, _fcn : _data.funcIdx } : stdgo._internal.runtime.coverage.Coverage_t_pkfunc.T_pkfunc);
                        {
                            var __tmp__ = (_pmm != null && _pmm.__exists__(_key?.__copy__()) ? { _0 : _pmm[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt32>), _1 : false }), _prev:stdgo.Slice<stdgo.GoUInt32> = __tmp__._0, _found:Bool = __tmp__._1;
                            if (_found) {
                                {
                                    var __tmp__ = @:check2r (@:checkr _ts ?? throw "null pointer dereference")._cm.mergeCounters(_data.counters, _prev), _err:stdgo.Error = __tmp__._0, __10:Bool = __tmp__._1;
                                    if (_err != null) {
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
                        var _c = @:check2r _ts.allocateCounters((_data.counters.length));
                        _c.__copyTo__(_data.counters);
                        _pmm[_key] = _c;
                    };
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
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
            for (__4 => _cdf in _p.counterDataFiles) {
                {
                    var _err = (_readcdf(_cdf?.__copy__()) : stdgo.Error);
                    if (_err != null) {
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
            var _np = (@:check2r _mfr.numPackages() : stdgo.GoUInt32);
            var _payload = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _pkIdx = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                while ((_pkIdx < _np : Bool)) {
                    var _pd:stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder> = (null : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
{
                        var __tmp__ = @:check2r _mfr.getPackageDecoder(_pkIdx, _payload);
                        _pd = @:tmpset0 __tmp__._0;
                        _payload = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
if (_err != null) {
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
@:check2r (@:checkr _ts ?? throw "null pointer dereference")._cf.setPackage(@:check2r _pd.packagePath().__copy__());
_importpaths[@:check2r _pd.packagePath()] = ({  } : stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0);
var _fd:stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc = ({} : stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc);
var _nf = (@:check2r _pd.numFuncs() : stdgo.GoUInt32);
{
                        var _fnIdx = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        while ((_fnIdx < _nf : Bool)) {
                            {
                                var _err = (@:check2r _pd.readFunc(_fnIdx, (stdgo.Go.setRef(_fd) : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>)) : stdgo.Error);
                                if (_err != null) {
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
{
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < (_fd.units.length) : Bool)) {
                                    var _u = (_fd.units[(_i : stdgo.GoInt)] : stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit);
if (_u.parent != ((0u32 : stdgo.GoUInt32))) {
                                        {
                                            _i++;
                                            continue;
                                        };
                                    };
var _count = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
if (_haveCounters) {
                                        _count = _counters[(_i : stdgo.GoInt)];
                                    };
@:check2r (@:checkr _ts ?? throw "null pointer dereference")._cf.addUnit(_fd.srcfile.__copy__(), _fd.funcname.__copy__(), _fd.lit, _u.__copy__(), _count);
                                    _i++;
                                };
                            };
                            _fnIdx++;
                        };
                    };
                    _pkIdx++;
                };
            };
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
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
