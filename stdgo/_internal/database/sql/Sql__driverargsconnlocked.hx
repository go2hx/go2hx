package stdgo._internal.database.sql;
function _driverArgsConnLocked(_ci:stdgo._internal.database.sql.driver.Driver_conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>; var _1 : stdgo.Error; } {
        var _n_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _si_2:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt);
        var _i_3606903_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_7:stdgo.Error = (null : stdgo.Error);
        var _cc_3:stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker = ({} : stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker);
        var _checker_14:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> -> stdgo.Error = null;
        var _nv_11:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        var _ok_5:Bool = false;
        var _nvc_4:stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker = (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker);
        var _nextCC_15:Bool = false;
        var _ok_13:Bool = false;
        var _arg_10:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _want_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nvargs_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        var _np_12:stdgo._internal.database.sql.Sql_namedarg.NamedArg = ({} : stdgo._internal.database.sql.Sql_namedarg.NamedArg);
        var _cci_6:stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter = (null : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _nvargs_0 = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue)]) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    _want_1 = (-1 : stdgo.GoInt);
                    if ((_ds != null && ((_ds : Dynamic).__nil__ == null || !(_ds : Dynamic).__nil__))) {
                        _gotoNext = 3606190i32;
                    } else {
                        _gotoNext = 3606457i32;
                    };
                } else if (__value__ == (3606190i32)) {
                    _si_2 = (@:checkr _ds ?? throw "null pointer dereference")._si;
                    _want_1 = (@:checkr _ds ?? throw "null pointer dereference")._si.numInput();
                    _cc_3._want = _want_1;
                    _gotoNext = 3606457i32;
                } else if (__value__ == (3606457i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_2) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_4 = @:tmpset0 __tmp__._0;
                        _ok_5 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_5) {
                        _gotoNext = 3606506i32;
                    } else {
                        _gotoNext = 3606554i32;
                    };
                } else if (__value__ == (3606506i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_4 = @:tmpset0 __tmp__._0;
                        _ok_5 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3606554i32;
                } else if (__value__ == (3606554i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_2) : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter)) : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter), _1 : false };
                        };
                        _cci_6 = @:tmpset0 __tmp__._0;
                        _ok_5 = @:tmpset0 __tmp__._1;
                    };
                    if (_ok_5) {
                        _gotoNext = 3606600i32;
                    } else {
                        _gotoNext = 3606863i32;
                    };
                } else if (__value__ == (3606600i32)) {
                    _cc_3._cci = _cci_6;
                    _gotoNext = 3606863i32;
                } else if (__value__ == (3606863i32)) {
                    if ((0i32 : stdgo.GoInt) < (_args.length)) {
                        _gotoNext = 3608242i32;
                    } else {
                        _gotoNext = 3608334i32;
                    };
                } else if (__value__ == (3606893i32)) {
                    _i_3606903_9++;
                    _gotoNext = 3608243i32;
                } else if (__value__ == (3606914i32)) {
                    _arg_10 = stdgo.Go.toInterface(_args[(_i_3606903_9 : stdgo.GoInt)]);
                    _nv_11 = (stdgo.Go.setRef(_nvargs_0[(_n_8 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_arg_10 : stdgo._internal.database.sql.Sql_namedarg.NamedArg)) : stdgo._internal.database.sql.Sql_namedarg.NamedArg), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.database.sql.Sql_namedarg.NamedArg), _1 : false };
                            };
                            _np_12 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_13 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_13) {
                            _gotoNext = 3606969i32;
                        } else {
                            _gotoNext = 3607099i32;
                        };
                    };
                } else if (__value__ == (3606969i32)) {
                    {
                        _err_7 = stdgo._internal.database.sql.Sql__validatenamedvaluename._validateNamedValueName(_np_12.name?.__copy__());
                        if (_err_7 != null) {
                            _gotoNext = 3607027i32;
                        } else {
                            _gotoNext = 3607057i32;
                        };
                    };
                } else if (__value__ == (3607027i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : _err_7 };
                    _gotoNext = 3607057i32;
                } else if (__value__ == (3607057i32)) {
                    _arg_10 = _np_12.value;
                    (@:checkr _nv_11 ?? throw "null pointer dereference").name = _np_12.name?.__copy__();
                    _gotoNext = 3607099i32;
                } else if (__value__ == (3607099i32)) {
                    (@:checkr _nv_11 ?? throw "null pointer dereference").ordinal = (_n_8 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    (@:checkr _nv_11 ?? throw "null pointer dereference").value = stdgo.Go.toInterface(_arg_10);
                    _checker_14 = stdgo._internal.database.sql.Sql__defaultchecknamedvalue._defaultCheckNamedValue;
                    _nextCC_15 = false;
                    _gotoNext = 3607672i32;
                } else if (__value__ == (3607672i32)) {
                    if (_nvc_4 != null) {
                        _gotoNext = 3607683i32;
                    } else if (_cci_6 != null) {
                        _gotoNext = 3607758i32;
                    } else {
                        _gotoNext = 3607813i32;
                    };
                } else if (__value__ == (3607683i32)) {
                    _nextCC_15 = _cci_6 != null;
                    _checker_14 = _nvc_4.checkNamedValue;
                    _gotoNext = 3607813i32;
                } else if (__value__ == (3607758i32)) {
                    _checker_14 = _cc_3.checkNamedValue;
                    _gotoNext = 3607813i32;
                } else if (__value__ == (3607813i32)) {
                    _gotoNext = 3607813i32;
                    _err_7 = _checker_14(_nv_11);
                    _gotoNext = 3607846i32;
                } else if (__value__ == (3607846i32)) {
                    {
                        final __value__ = _err_7;
                        if (__value__ == null) {
                            _gotoNext = 3607861i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errremoveargument.errRemoveArgument))) {
                            _gotoNext = 3607892i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errskip.errSkip))) {
                            _gotoNext = 3607972i32;
                        } else {
                            _gotoNext = 3608134i32;
                        };
                    };
                } else if (__value__ == (3607861i32)) {
                    _n_8++;
                    _i_3606903_9++;
                    _gotoNext = 3608243i32;
                } else if (__value__ == (3607892i32)) {
                    _nvargs_0 = (_nvargs_0.__slice__(0, ((_nvargs_0.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    _i_3606903_9++;
                    _gotoNext = 3608243i32;
                } else if (__value__ == (3607972i32)) {
                    if (_nextCC_15) {
                        _gotoNext = 3608006i32;
                    } else {
                        _gotoNext = 3608070i32;
                    };
                } else if (__value__ == (3608006i32)) {
                    _nextCC_15 = false;
                    _checker_14 = _cc_3.checkNamedValue;
                    _gotoNext = 3608117i32;
                } else if (__value__ == (3608070i32)) {
                    _gotoNext = 3608070i32;
                    _checker_14 = stdgo._internal.database.sql.Sql__defaultchecknamedvalue._defaultCheckNamedValue;
                    var __blank__ = 0i32;
                    _gotoNext = 3608117i32;
                } else if (__value__ == (3608117i32)) {
                    _gotoNext = 3607813i32;
                } else if (__value__ == (3608134i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: converting argument %s type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__describenamedvalue._describeNamedValue(_nv_11)), stdgo.Go.toInterface(_err_7)) };
                    _gotoNext = 3606893i32;
                } else if (__value__ == (3608242i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo.Go.toInterface(_args[(0i32 : stdgo.GoInt)]);
                        _i_3606903_9 = __tmp__0;
                        _arg_10 = __tmp__1;
                    };
                    _gotoNext = 3608243i32;
                } else if (__value__ == (3608243i32)) {
                    if (_i_3606903_9 < (_args.length)) {
                        _gotoNext = 3606914i32;
                    } else {
                        _gotoNext = 3608334i32;
                    };
                } else if (__value__ == (3608334i32)) {
                    if (((_want_1 != (-1 : stdgo.GoInt)) && (_nvargs_0.length != _want_1) : Bool)) {
                        _gotoNext = 3608371i32;
                    } else {
                        _gotoNext = 3608460i32;
                    };
                } else if (__value__ == (3608371i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d arguments, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want_1), stdgo.Go.toInterface((_nvargs_0.length))) };
                    _gotoNext = 3608460i32;
                } else if (__value__ == (3608460i32)) {
                    return { _0 : _nvargs_0, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
