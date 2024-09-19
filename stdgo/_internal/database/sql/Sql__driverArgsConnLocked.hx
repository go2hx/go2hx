package stdgo._internal.database.sql;
function _driverArgsConnLocked(_ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _nvargs = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue)]) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
            var _want = (-1 : stdgo.GoInt);
            var _si:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt);
            var _cc:stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker = ({} : stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker);
            if (_ds != null && ((_ds : Dynamic).__nil__ == null || !(_ds : Dynamic).__nil__)) {
                _si = _ds._si;
                _want = _ds._si.numInput();
                _cc._want = _want;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : false };
            }, _nvc = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : false };
                    };
                    _nvc = __tmp__._0;
                    _ok = __tmp__._1;
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si) : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter)) : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter), _1 : false };
            }, _cci = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _cc._cci = _cci;
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            for (__22 => _arg in _args) {
                var _nv = (stdgo.Go.setRef(_nvargs[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_arg : stdgo._internal.database.sql.Sql_NamedArg.NamedArg)) : stdgo._internal.database.sql.Sql_NamedArg.NamedArg), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.database.sql.Sql_NamedArg.NamedArg), _1 : false };
                    }, _np = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            _err = stdgo._internal.database.sql.Sql__validateNamedValueName._validateNamedValueName(_np.name?.__copy__());
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : _err };
                            };
                        };
                        _arg = _np.value;
                        _nv.name = _np.name?.__copy__();
                    };
                };
                _nv.ordinal = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                _nv.value = stdgo.Go.toInterface(_arg);
                var _checker = stdgo._internal.database.sql.Sql__defaultCheckNamedValue._defaultCheckNamedValue;
                var _nextCC = (false : Bool);
                if (_nvc != null) {
                    _nextCC = _cci != null;
                    _checker = _nvc.checkNamedValue;
                } else if (_cci != null) {
                    _checker = _cc.checkNamedValue;
                };
                @:label("nextCheck") _err = _checker(_nv);
                {
                    final __value__ = _err;
                    if (__value__ == null) {
                        _n++;
                        continue;
                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errRemoveArgument.errRemoveArgument))) {
                        _nvargs = (_nvargs.__slice__(0, ((_nvargs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                        continue;
                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errSkip.errSkip))) {
                        if (_nextCC) {
                            _nextCC = false;
                            _checker = _cc.checkNamedValue;
                        } else {
                            _checker = stdgo._internal.database.sql.Sql__defaultCheckNamedValue._defaultCheckNamedValue;
                        };
                        @:goto "nextCheck";
                    } else {
                        return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: converting argument %s type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__describeNamedValue._describeNamedValue(_nv)), stdgo.Go.toInterface(_err)) };
                    };
                };
            };
            if (((_want != (-1 : stdgo.GoInt)) && (_nvargs.length != _want) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d arguments, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface((_nvargs.length))) };
            };
            return { _0 : _nvargs, _1 : (null : stdgo.Error) };
        });
    }
