package stdgo._internal.internal.coverage.cformat;
@:keep @:allow(stdgo._internal.internal.coverage.cformat.Cformat.Formatter_asInterface) class Formatter_static_extension {
    @:keep
    @:tdfield
    static public function emitFuncs( _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter> = _fm;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _fm ?? throw "null pointer dereference")._cm == ((0 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                throw stdgo.Go.toInterface(("internal error, counter mode unset" : stdgo.GoString));
            };
            var _perc = (function(_covered:stdgo.GoUInt64, _total:stdgo.GoUInt64):stdgo.GoFloat64 {
                if (_total == ((0i64 : stdgo.GoUInt64))) {
                    _total = (1i64 : stdgo.GoUInt64);
                };
                return (((100 : stdgo.GoFloat64) * (_covered : stdgo.GoFloat64) : stdgo.GoFloat64) / (_total : stdgo.GoFloat64) : stdgo.GoFloat64);
            } : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoFloat64);
            var _tabber = stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(_w, (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
            {
                final __f__ = @:check2r _tabber.flush;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _allStmts = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _covStmts = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _pkgs = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _fm ?? throw "null pointer dereference")._pm.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_importpath => _ in (@:checkr _fm ?? throw "null pointer dereference")._pm) {
                _pkgs = (_pkgs.__append__(_importpath?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_pkgs);
            for (__0 => _importpath in _pkgs) {
                var _p = ((@:checkr _fm ?? throw "null pointer dereference")._pm[_importpath] ?? (null : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>));
                if (((@:checkr _p ?? throw "null pointer dereference")._unitTable.length) == ((0 : stdgo.GoInt))) {
                    continue;
                };
                var _units = (new stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu>((0 : stdgo.GoInt).toBasic(), ((@:checkr _p ?? throw "null pointer dereference")._unitTable.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((@:checkr _p ?? throw "null pointer dereference")._unitTable.length) ? (0 : stdgo.GoInt).toBasic() : ((@:checkr _p ?? throw "null pointer dereference")._unitTable.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu)]) : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu>);
                for (_u => _ in (@:checkr _p ?? throw "null pointer dereference")._unitTable) {
                    _units = (_units.__append__(_u?.__copy__()));
                };
                @:check2r _p._sortUnits(_units);
                var _fname = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _ffile = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _flit = (false : Bool);
                var _fline:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
                var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _tstmts = __1, _cstmts = __0;
                var _captureFuncStart = (function(_u:stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu):Void {
                    _fname = (@:checkr _p ?? throw "null pointer dereference")._funcs[(_u._fnfid : stdgo.GoInt)]._fname?.__copy__();
                    _ffile = (@:checkr _p ?? throw "null pointer dereference")._funcs[(_u._fnfid : stdgo.GoInt)]._file?.__copy__();
                    _flit = (@:checkr _p ?? throw "null pointer dereference")._funcs[(_u._fnfid : stdgo.GoInt)]._lit;
                    _fline = _u.coverableUnit.stLine;
                } : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu -> Void);
                var _emitFunc = (function(_u:stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu):stdgo.Error {
                    if (!_flit) {
                        {
                            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_tabber), ("%s:%d:\t%s\t%.1f%%\n" : stdgo.GoString), stdgo.Go.toInterface(_ffile), stdgo.Go.toInterface(_fline), stdgo.Go.toInterface(_fname), stdgo.Go.toInterface(_perc(_cstmts, _tstmts))), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return _err;
                            };
                        };
                    };
                    _captureFuncStart(_u?.__copy__());
                    _allStmts = (_allStmts + (_tstmts) : stdgo.GoUInt64);
                    _covStmts = (_covStmts + (_cstmts) : stdgo.GoUInt64);
                    _tstmts = (0i64 : stdgo.GoUInt64);
                    _cstmts = (0i64 : stdgo.GoUInt64);
                    return (null : stdgo.Error);
                } : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu -> stdgo.Error);
                for (_k => _u in _units) {
                    if (_k == ((0 : stdgo.GoInt))) {
                        _captureFuncStart(_u?.__copy__());
                    } else {
                        if (_fname != ((@:checkr _p ?? throw "null pointer dereference")._funcs[(_u._fnfid : stdgo.GoInt)]._fname)) {
                            {
                                var _err = (_emitFunc(_u?.__copy__()) : stdgo.Error);
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
                    };
                    _tstmts = (_tstmts + ((_u.coverableUnit.nxStmts : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    var _count = ((@:checkr _p ?? throw "null pointer dereference")._unitTable[_u] ?? (0 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    if (_count != ((0u32 : stdgo.GoUInt32))) {
                        _cstmts = (_cstmts + ((_u.coverableUnit.nxStmts : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    };
                };
                {
                    var _err = (_emitFunc((new stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu() : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu)) : stdgo.Error);
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
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_tabber), ("%s\t%s\t%.1f%%\n" : stdgo.GoString), stdgo.Go.toInterface(("total" : stdgo.GoString)), stdgo.Go.toInterface(("(statements)" : stdgo.GoString)), stdgo.Go.toInterface(_perc(_covStmts, _allStmts))), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    @:keep
    @:tdfield
    static public function emitPercent( _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>, _w:stdgo._internal.io.Io_writer.Writer, _covpkgs:stdgo.GoString, _noteEmpty:Bool, _aggregate:Bool):stdgo.Error {
        @:recv var _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter> = _fm;
        var _pkgs = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _fm ?? throw "null pointer dereference")._pm.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_importpath => _ in (@:checkr _fm ?? throw "null pointer dereference")._pm) {
            _pkgs = (_pkgs.__append__(_importpath?.__copy__()));
        };
        var _rep = (function(_cov:stdgo.GoUInt64, _tot:stdgo.GoUInt64):stdgo.Error {
            if (_tot != ((0i64 : stdgo.GoUInt64))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("coverage: %.1f%% of statements%s\n" : stdgo.GoString), stdgo.Go.toInterface((((100 : stdgo.GoFloat64) * (_cov : stdgo.GoFloat64) : stdgo.GoFloat64) / (_tot : stdgo.GoFloat64) : stdgo.GoFloat64)), stdgo.Go.toInterface(_covpkgs)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (_noteEmpty) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("coverage: [no statements]\n" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            return (null : stdgo.Error);
        } : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.Error);
        stdgo._internal.sort.Sort_strings.strings(_pkgs);
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _coveredStmts = __1, _totalStmts = __0;
        for (__0 => _importpath in _pkgs) {
            var _p = ((@:checkr _fm ?? throw "null pointer dereference")._pm[_importpath] ?? (null : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>));
            if (!_aggregate) {
                {
                    final __tmp__0 = (0i64 : stdgo.GoUInt64);
                    final __tmp__1 = (0i64 : stdgo.GoUInt64);
                    _totalStmts = __tmp__0;
                    _coveredStmts = __tmp__1;
                };
            };
            for (_unit => _count in (@:checkr _p ?? throw "null pointer dereference")._unitTable) {
                var _nx = (_unit.coverableUnit.nxStmts : stdgo.GoUInt64);
                _totalStmts = (_totalStmts + (_nx) : stdgo.GoUInt64);
                if (_count != ((0u32 : stdgo.GoUInt32))) {
                    _coveredStmts = (_coveredStmts + (_nx) : stdgo.GoUInt64);
                };
            };
            if (!_aggregate) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\t%s\t\t" : stdgo.GoString), stdgo.Go.toInterface(_importpath)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var _err = (_rep(_coveredStmts, _totalStmts) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
        };
        if (_aggregate) {
            {
                var _err = (_rep(_coveredStmts, _totalStmts) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function emitTextual( _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter> = _fm;
        if ((@:checkr _fm ?? throw "null pointer dereference")._cm == ((0 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            throw stdgo.Go.toInterface(("internal error, counter mode unset" : stdgo.GoString));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("mode: %s\n" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _fm ?? throw "null pointer dereference")._cm.string() : stdgo.GoString))), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _pkgs = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _fm ?? throw "null pointer dereference")._pm.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_importpath => _ in (@:checkr _fm ?? throw "null pointer dereference")._pm) {
            _pkgs = (_pkgs.__append__(_importpath?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_pkgs);
        for (__1 => _importpath in _pkgs) {
            var _p = ((@:checkr _fm ?? throw "null pointer dereference")._pm[_importpath] ?? (null : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>));
            var _units = (new stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu>((0 : stdgo.GoInt).toBasic(), ((@:checkr _p ?? throw "null pointer dereference")._unitTable.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((@:checkr _p ?? throw "null pointer dereference")._unitTable.length) ? (0 : stdgo.GoInt).toBasic() : ((@:checkr _p ?? throw "null pointer dereference")._unitTable.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu)]) : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu>);
            for (_u => _ in (@:checkr _p ?? throw "null pointer dereference")._unitTable) {
                _units = (_units.__append__(_u?.__copy__()));
            };
            @:check2r _p._sortUnits(_units);
            for (__2 => _u in _units) {
                var _count = ((@:checkr _p ?? throw "null pointer dereference")._unitTable[_u] ?? (0 : stdgo.GoUInt32) : stdgo.GoUInt32);
                var _file = ((@:checkr _p ?? throw "null pointer dereference")._funcs[(_u._fnfid : stdgo.GoInt)]._file?.__copy__() : stdgo.GoString);
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s:%d.%d,%d.%d %d %d\n" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_u.coverableUnit.stLine), stdgo.Go.toInterface(_u.coverableUnit.stCol), stdgo.Go.toInterface(_u.coverableUnit.enLine), stdgo.Go.toInterface(_u.coverableUnit.enCol), stdgo.Go.toInterface(_u.coverableUnit.nxStmts), stdgo.Go.toInterface(_count)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function addUnit( _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>, _file:stdgo.GoString, _fname:stdgo.GoString, _isfnlit:Bool, _unit:stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit, _count:stdgo.GoUInt32):Void {
        @:recv var _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter> = _fm;
        if (((@:checkr _fm ?? throw "null pointer dereference")._p == null || ((@:checkr _fm ?? throw "null pointer dereference")._p : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("AddUnit invoked before SetPackage" : stdgo.GoString));
        };
        var _fkey = ({ _file : _file?.__copy__(), _fname : _fname?.__copy__(), _lit : _isfnlit } : stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile);
        var __tmp__ = ((@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._funcTable != null && (@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._funcTable.__exists__(_fkey?.__copy__()) ? { _0 : (@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._funcTable[_fkey?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt32), _1 : false }), _idx:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _idx = ((@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._funcs.length : stdgo.GoUInt32);
            (@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._funcs = ((@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._funcs.__append__(_fkey?.__copy__()));
            (@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._funcTable[_fkey] = _idx;
        };
        var _ukey = ({ _fnfid : _idx, coverableUnit : _unit?.__copy__() } : stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu);
        var _pcount = ((@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._unitTable[_ukey] ?? (0 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _result:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        if ((@:checkr _fm ?? throw "null pointer dereference")._cm == ((1 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            if (((_count != (0u32 : stdgo.GoUInt32)) || (_pcount != (0u32 : stdgo.GoUInt32)) : Bool)) {
                _result = (1u32 : stdgo.GoUInt32);
            };
        } else {
            {
                var __tmp__ = stdgo._internal.internal.coverage.cmerge.Cmerge_saturatingadd.saturatingAdd(_pcount, _count);
                _result = @:tmpset0 __tmp__._0;
            };
        };
        (@:checkr (@:checkr _fm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._unitTable[_ukey] = _result;
    }
    @:keep
    @:tdfield
    static public function setPackage( _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>, _importpath:stdgo.GoString):Void {
        @:recv var _fm:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter> = _fm;
        if (_importpath == ((@:checkr _fm ?? throw "null pointer dereference")._pkg)) {
            return;
        };
        (@:checkr _fm ?? throw "null pointer dereference")._pkg = _importpath?.__copy__();
        var __tmp__ = ((@:checkr _fm ?? throw "null pointer dereference")._pm != null && (@:checkr _fm ?? throw "null pointer dereference")._pm.__exists__(_importpath?.__copy__()) ? { _0 : (@:checkr _fm ?? throw "null pointer dereference")._pm[_importpath?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>), _1 : false }), _ps:stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _ps = (stdgo.Go.setRef(({} : stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate)) : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>);
            (@:checkr _fm ?? throw "null pointer dereference")._pm[_importpath] = _ps;
            (@:checkr _ps ?? throw "null pointer dereference")._unitTable = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu, stdgo.GoUInt32>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_fnfid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "coverableUnit", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "stLine", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "stCol", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "enLine", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "enCol", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "nxStmts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> (0 : stdgo.GoUInt32);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu, stdgo.GoUInt32>) : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu, stdgo.GoUInt32>);
            (@:checkr _ps ?? throw "null pointer dereference")._funcTable = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile, stdgo.GoUInt32>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_file", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_fname", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_lit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> (0 : stdgo.GoUInt32);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile, stdgo.GoUInt32>) : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile, stdgo.GoUInt32>);
        };
        (@:checkr _fm ?? throw "null pointer dereference")._p = _ps;
    }
}
