package stdgo._internal.database.sql;
function _driverArgsConnLocked(_ci:stdgo._internal.database.sql.driver.Driver_conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>; var _1 : stdgo.Error; } {
        var _nvc_4:stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker = (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker);
        var _nvargs_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        var _nextCC_15:Bool = false;
        var _n_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_7:stdgo.Error = (null : stdgo.Error);
        var _cc_3:stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker = ({} : stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker);
        var _si_2:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt);
        var _cci_6:stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter = (null : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter);
        var _want_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _checker_14:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> -> stdgo.Error = null;
        var _ok_13:Bool = false;
        var _np_12:stdgo._internal.database.sql.Sql_namedarg.NamedArg = ({} : stdgo._internal.database.sql.Sql_namedarg.NamedArg);
        var _arg_10:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _i_3707251_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nv_11:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        var _ok_5:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _nvargs_0 = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue)]) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    _want_1 = (-1 : stdgo.GoInt);
                    if ((_ds != null && ((_ds : Dynamic).__nil__ == null || !(_ds : Dynamic).__nil__))) {
                        _gotoNext = 3706538i32;
                    } else {
                        _gotoNext = 3706805i32;
                    };
                } else if (__value__ == (3706538i32)) {
                    _si_2 = (@:checkr _ds ?? throw "null pointer dereference")._si;
                    _want_1 = (@:checkr _ds ?? throw "null pointer dereference")._si.numInput();
                    _cc_3._want = _want_1;
                    _gotoNext = 3706805i32;
                } else if (__value__ == (3706805i32)) {
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
                        _gotoNext = 3706854i32;
                    } else {
                        _gotoNext = 3706902i32;
                    };
                } else if (__value__ == (3706854i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_4 = @:tmpset0 __tmp__._0;
                        _ok_5 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3706902i32;
                } else if (__value__ == (3706902i32)) {
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
                        _gotoNext = 3706948i32;
                    } else {
                        _gotoNext = 3707211i32;
                    };
                } else if (__value__ == (3706948i32)) {
                    _cc_3._cci = _cci_6;
                    _gotoNext = 3707211i32;
                } else if (__value__ == (3707211i32)) {
                    if ((0i32 : stdgo.GoInt) < (_args.length)) {
                        _gotoNext = 3708590i32;
                    } else {
                        _gotoNext = 3708682i32;
                    };
                } else if (__value__ == (3707241i32)) {
                    _i_3707251_9++;
                    _gotoNext = 3708591i32;
                } else if (__value__ == (3707262i32)) {
                    _arg_10 = stdgo.Go.toInterface(_args[(_i_3707251_9 : stdgo.GoInt)]);
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
                            _gotoNext = 3707317i32;
                        } else {
                            _gotoNext = 3707447i32;
                        };
                    };
                } else if (__value__ == (3707317i32)) {
                    {
                        _err_7 = stdgo._internal.database.sql.Sql__validatenamedvaluename._validateNamedValueName(_np_12.name?.__copy__());
                        if (_err_7 != null) {
                            _gotoNext = 3707375i32;
                        } else {
                            _gotoNext = 3707405i32;
                        };
                    };
                } else if (__value__ == (3707375i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : _err_7 };
                    _gotoNext = 3707405i32;
                } else if (__value__ == (3707405i32)) {
                    _arg_10 = _np_12.value;
                    (@:checkr _nv_11 ?? throw "null pointer dereference").name = _np_12.name?.__copy__();
                    _gotoNext = 3707447i32;
                } else if (__value__ == (3707447i32)) {
                    (@:checkr _nv_11 ?? throw "null pointer dereference").ordinal = (_n_8 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    (@:checkr _nv_11 ?? throw "null pointer dereference").value = stdgo.Go.toInterface(_arg_10);
                    _checker_14 = stdgo._internal.database.sql.Sql__defaultchecknamedvalue._defaultCheckNamedValue;
                    _nextCC_15 = false;
                    _gotoNext = 3708020i32;
                } else if (__value__ == (3708020i32)) {
                    if (_nvc_4 != null) {
                        _gotoNext = 3708031i32;
                    } else if (_cci_6 != null) {
                        _gotoNext = 3708106i32;
                    } else {
                        _gotoNext = 3708161i32;
                    };
                } else if (__value__ == (3708031i32)) {
                    _nextCC_15 = _cci_6 != null;
                    _checker_14 = _nvc_4.checkNamedValue;
                    _gotoNext = 3708161i32;
                } else if (__value__ == (3708106i32)) {
                    _checker_14 = _cc_3.checkNamedValue;
                    _gotoNext = 3708161i32;
                } else if (__value__ == (3708161i32)) {
                    _gotoNext = 3708161i32;
                    _err_7 = _checker_14(_nv_11);
                    _gotoNext = 3708194i32;
                } else if (__value__ == (3708194i32)) {
                    {
                        final __value__ = _err_7;
                        if (__value__ == null) {
                            _gotoNext = 3708209i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errremoveargument.errRemoveArgument))) {
                            _gotoNext = 3708240i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errskip.errSkip))) {
                            _gotoNext = 3708320i32;
                        } else {
                            _gotoNext = 3708482i32;
                        };
                    };
                } else if (__value__ == (3708209i32)) {
                    _n_8++;
                    _i_3707251_9++;
                    _gotoNext = 3708591i32;
                } else if (__value__ == (3708240i32)) {
                    _nvargs_0 = (_nvargs_0.__slice__(0, ((_nvargs_0.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    _i_3707251_9++;
                    _gotoNext = 3708591i32;
                } else if (__value__ == (3708320i32)) {
                    if (_nextCC_15) {
                        _gotoNext = 3708354i32;
                    } else {
                        _gotoNext = 3708418i32;
                    };
                } else if (__value__ == (3708354i32)) {
                    _nextCC_15 = false;
                    _checker_14 = _cc_3.checkNamedValue;
                    _gotoNext = 3708465i32;
                } else if (__value__ == (3708418i32)) {
                    _gotoNext = 3708418i32;
                    _checker_14 = stdgo._internal.database.sql.Sql__defaultchecknamedvalue._defaultCheckNamedValue;
                    var __blank__ = 0i32;
                    _gotoNext = 3708465i32;
                } else if (__value__ == (3708465i32)) {
                    _gotoNext = 3708161i32;
                } else if (__value__ == (3708482i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: converting argument %s type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__describenamedvalue._describeNamedValue(_nv_11)), stdgo.Go.toInterface(_err_7)) };
                    _gotoNext = 3707241i32;
                } else if (__value__ == (3708590i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo.Go.toInterface(_args[(0i32 : stdgo.GoInt)]);
                        _i_3707251_9 = __tmp__0;
                        _arg_10 = __tmp__1;
                    };
                    _gotoNext = 3708591i32;
                } else if (__value__ == (3708591i32)) {
                    if (_i_3707251_9 < (_args.length)) {
                        _gotoNext = 3707262i32;
                    } else {
                        _gotoNext = 3708682i32;
                    };
                } else if (__value__ == (3708682i32)) {
                    if (((_want_1 != (-1 : stdgo.GoInt)) && (_nvargs_0.length != _want_1) : Bool)) {
                        _gotoNext = 3708719i32;
                    } else {
                        _gotoNext = 3708808i32;
                    };
                } else if (__value__ == (3708719i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d arguments, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want_1), stdgo.Go.toInterface((_nvargs_0.length))) };
                    _gotoNext = 3708808i32;
                } else if (__value__ == (3708808i32)) {
                    return { _0 : _nvargs_0, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
