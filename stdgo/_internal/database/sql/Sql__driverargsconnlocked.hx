package stdgo._internal.database.sql;
function _driverArgsConnLocked(_ci:stdgo._internal.database.sql.driver.Driver_conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>; var _1 : stdgo.Error; } {
        var _cci_3602983:stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter = (null : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter);
        var _nvc_3602886:stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker = (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker);
        var _want_3602555:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nvargs_3602339:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        var _nextCC_3604083:Bool = false;
        var _ok_3603373:Bool = false;
        var _ok_3602891:Bool = false;
        var _cc_3602592:stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker = ({} : stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker);
        var _si_3602572:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt);
        var _i_3603332_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3603311:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nv_3603347:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        var _arg_3603325:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _err_3603296:stdgo.Error = (null : stdgo.Error);
        var _checker_3604047:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> -> stdgo.Error = null;
        var _np_3603369:stdgo._internal.database.sql.Sql_namedarg.NamedArg = ({} : stdgo._internal.database.sql.Sql_namedarg.NamedArg);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _nvargs_3602339 = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue)]) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    _want_3602555 = (-1 : stdgo.GoInt);
                    if ((_ds != null && ((_ds : Dynamic).__nil__ == null || !(_ds : Dynamic).__nil__))) {
                        _gotoNext = 3602619i32;
                    } else {
                        _gotoNext = 3602886i32;
                    };
                } else if (__value__ == (3602619i32)) {
                    _si_3602572 = (@:checkr _ds ?? throw "null pointer dereference")._si;
                    _want_3602555 = (@:checkr _ds ?? throw "null pointer dereference")._si.numInput();
                    _cc_3602592._want = _want_3602555;
                    _gotoNext = 3602886i32;
                } else if (__value__ == (3602886i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_3602572) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_3602886 = @:tmpset0 __tmp__._0;
                        _ok_3602891 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3602891) {
                        _gotoNext = 3602935i32;
                    } else {
                        _gotoNext = 3602983i32;
                    };
                } else if (__value__ == (3602935i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_3602886 = @:tmpset0 __tmp__._0;
                        _ok_3602891 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3602983i32;
                } else if (__value__ == (3602983i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_3602572) : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter)) : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter), _1 : false };
                        };
                        _cci_3602983 = @:tmpset0 __tmp__._0;
                        _ok_3602891 = @:tmpset0 __tmp__._1;
                    };
                    if (_ok_3602891) {
                        _gotoNext = 3603029i32;
                    } else {
                        _gotoNext = 3603292i32;
                    };
                } else if (__value__ == (3603029i32)) {
                    _cc_3602592._cci = _cci_3602983;
                    _gotoNext = 3603292i32;
                } else if (__value__ == (3603292i32)) {
                    if ((0i32 : stdgo.GoInt) < (_args.length)) {
                        _gotoNext = 3604671i32;
                    } else {
                        _gotoNext = 3604763i32;
                    };
                } else if (__value__ == (3603322i32)) {
                    _i_3603332_0++;
                    _gotoNext = 3604672i32;
                } else if (__value__ == (3603343i32)) {
                    _arg_3603325 = stdgo.Go.toInterface(_args[(_i_3603332_0 : stdgo.GoInt)]);
                    _nv_3603347 = (stdgo.Go.setRef(_nvargs_3602339[(_n_3603311 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_arg_3603325 : stdgo._internal.database.sql.Sql_namedarg.NamedArg)) : stdgo._internal.database.sql.Sql_namedarg.NamedArg), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.database.sql.Sql_namedarg.NamedArg), _1 : false };
                            };
                            _np_3603369 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3603373 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3603373) {
                            _gotoNext = 3603398i32;
                        } else {
                            _gotoNext = 3603528i32;
                        };
                    };
                } else if (__value__ == (3603398i32)) {
                    {
                        _err_3603296 = stdgo._internal.database.sql.Sql__validatenamedvaluename._validateNamedValueName(_np_3603369.name?.__copy__());
                        if (_err_3603296 != null) {
                            _gotoNext = 3603456i32;
                        } else {
                            _gotoNext = 3603486i32;
                        };
                    };
                } else if (__value__ == (3603456i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : _err_3603296 };
                    _gotoNext = 3603486i32;
                } else if (__value__ == (3603486i32)) {
                    _arg_3603325 = _np_3603369.value;
                    (@:checkr _nv_3603347 ?? throw "null pointer dereference").name = _np_3603369.name?.__copy__();
                    _gotoNext = 3603528i32;
                } else if (__value__ == (3603528i32)) {
                    (@:checkr _nv_3603347 ?? throw "null pointer dereference").ordinal = (_n_3603311 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    (@:checkr _nv_3603347 ?? throw "null pointer dereference").value = stdgo.Go.toInterface(_arg_3603325);
                    _checker_3604047 = stdgo._internal.database.sql.Sql__defaultchecknamedvalue._defaultCheckNamedValue;
                    _nextCC_3604083 = false;
                    _gotoNext = 3604101i32;
                } else if (__value__ == (3604101i32)) {
                    if (_nvc_3602886 != null) {
                        _gotoNext = 3604112i32;
                    } else if (_cci_3602983 != null) {
                        _gotoNext = 3604187i32;
                    } else {
                        _gotoNext = 3604242i32;
                    };
                } else if (__value__ == (3604112i32)) {
                    _nextCC_3604083 = _cci_3602983 != null;
                    _checker_3604047 = _nvc_3602886.checkNamedValue;
                    _gotoNext = 3604242i32;
                } else if (__value__ == (3604187i32)) {
                    _checker_3604047 = _cc_3602592.checkNamedValue;
                    _gotoNext = 3604242i32;
                } else if (__value__ == (3604242i32)) {
                    _gotoNext = 3604242i32;
                    _err_3603296 = _checker_3604047(_nv_3603347);
                    _gotoNext = 3604275i32;
                } else if (__value__ == (3604275i32)) {
                    {
                        final __value__ = _err_3603296;
                        if (__value__ == null) {
                            _gotoNext = 3604290i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errremoveargument.errRemoveArgument))) {
                            _gotoNext = 3604321i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errskip.errSkip))) {
                            _gotoNext = 3604401i32;
                        } else {
                            _gotoNext = 3604563i32;
                        };
                    };
                } else if (__value__ == (3604290i32)) {
                    _n_3603311++;
                    _i_3603332_0++;
                    _gotoNext = 3604672i32;
                } else if (__value__ == (3604321i32)) {
                    _nvargs_3602339 = (_nvargs_3602339.__slice__(0, ((_nvargs_3602339.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    _i_3603332_0++;
                    _gotoNext = 3604672i32;
                } else if (__value__ == (3604401i32)) {
                    if (_nextCC_3604083) {
                        _gotoNext = 3604435i32;
                    } else {
                        _gotoNext = 3604499i32;
                    };
                } else if (__value__ == (3604435i32)) {
                    _nextCC_3604083 = false;
                    _checker_3604047 = _cc_3602592.checkNamedValue;
                    _gotoNext = 3604546i32;
                } else if (__value__ == (3604499i32)) {
                    _gotoNext = 3604499i32;
                    _checker_3604047 = stdgo._internal.database.sql.Sql__defaultchecknamedvalue._defaultCheckNamedValue;
                    var __blank__ = 0i32;
                    _gotoNext = 3604546i32;
                } else if (__value__ == (3604546i32)) {
                    _gotoNext = 3604242i32;
                } else if (__value__ == (3604563i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: converting argument %s type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__describenamedvalue._describeNamedValue(_nv_3603347)), stdgo.Go.toInterface(_err_3603296)) };
                    _gotoNext = 3603322i32;
                } else if (__value__ == (3604671i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo.Go.toInterface(_args[(0i32 : stdgo.GoInt)]);
                        _i_3603332_0 = __tmp__0;
                        _arg_3603325 = __tmp__1;
                    };
                    _gotoNext = 3604672i32;
                } else if (__value__ == (3604672i32)) {
                    if (_i_3603332_0 < (_args.length)) {
                        _gotoNext = 3603343i32;
                    } else {
                        _gotoNext = 3604763i32;
                    };
                } else if (__value__ == (3604763i32)) {
                    if (((_want_3602555 != (-1 : stdgo.GoInt)) && (_nvargs_3602339.length != _want_3602555) : Bool)) {
                        _gotoNext = 3604800i32;
                    } else {
                        _gotoNext = 3604889i32;
                    };
                } else if (__value__ == (3604800i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d arguments, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want_3602555), stdgo.Go.toInterface((_nvargs_3602339.length))) };
                    _gotoNext = 3604889i32;
                } else if (__value__ == (3604889i32)) {
                    return { _0 : _nvargs_3602339, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
