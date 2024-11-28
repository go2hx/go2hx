package stdgo._internal.database.sql;
function _driverArgsConnLocked(_ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>; var _1 : stdgo.Error; } {
        var _arg_3606896:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _err_3606867:stdgo.Error = (null : stdgo.Error);
        var _ok_3606462:Bool = false;
        var _cc_3606163:stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker = ({} : stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker);
        var _nvargs_3605910:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        var _np_3606940:stdgo._internal.database.sql.Sql_NamedArg.NamedArg = ({} : stdgo._internal.database.sql.Sql_NamedArg.NamedArg);
        var _nv_3606918:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = (null : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        var _nvc_3606457:stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker = (null : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker);
        var _si_3606143:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt);
        var _ok_3606944:Bool = false;
        var _i_3606903_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3606882:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cci_3606554:stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter = (null : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter);
        var _want_3606126:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nextCC_3607654:Bool = false;
        var _checker_3607618:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> -> stdgo.Error = null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _nvargs_3605910 = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue)]) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                    _want_3606126 = (-1 : stdgo.GoInt);
                    if ((_ds != null && ((_ds : Dynamic).__nil__ == null || !(_ds : Dynamic).__nil__))) {
                        _gotoNext = 3606190i32;
                    } else {
                        _gotoNext = 3606457i32;
                    };
                } else if (__value__ == (3606190i32)) {
                    _si_3606143 = _ds._si;
                    _want_3606126 = _ds._si.numInput();
                    _cc_3606163._want = _want_3606126;
                    _gotoNext = 3606457i32;
                } else if (__value__ == (3606457i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_3606143) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_3606457 = __tmp__._0;
                        _ok_3606462 = __tmp__._1;
                    };
                    if (!_ok_3606462) {
                        _gotoNext = 3606506i32;
                    } else {
                        _gotoNext = 3606554i32;
                    };
                } else if (__value__ == (3606506i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_3606457 = __tmp__._0;
                        _ok_3606462 = __tmp__._1;
                    };
                    _gotoNext = 3606554i32;
                } else if (__value__ == (3606554i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_3606143) : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter)) : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter), _1 : false };
                        };
                        _cci_3606554 = __tmp__._0;
                        _ok_3606462 = __tmp__._1;
                    };
                    if (_ok_3606462) {
                        _gotoNext = 3606600i32;
                    } else {
                        _gotoNext = 3606863i32;
                    };
                } else if (__value__ == (3606600i32)) {
                    _cc_3606163._cci = _cci_3606554;
                    _gotoNext = 3606863i32;
                } else if (__value__ == (3606863i32)) {
                    if ((0i32 : stdgo.GoInt) < (_args.length)) {
                        _gotoNext = 3608242i32;
                    } else {
                        _gotoNext = 3608334i32;
                    };
                } else if (__value__ == (3606893i32)) {
                    _i_3606903_0++;
                    _gotoNext = 3608243i32;
                } else if (__value__ == (3606914i32)) {
                    _arg_3606896 = stdgo.Go.toInterface(_args[(_i_3606903_0 : stdgo.GoInt)]);
                    _nv_3606918 = (stdgo.Go.setRef(_nvargs_3605910[(_n_3606882 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_arg_3606896 : stdgo._internal.database.sql.Sql_NamedArg.NamedArg)) : stdgo._internal.database.sql.Sql_NamedArg.NamedArg), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.database.sql.Sql_NamedArg.NamedArg), _1 : false };
                            };
                            _np_3606940 = __tmp__._0?.__copy__();
                            _ok_3606944 = __tmp__._1;
                        };
                        if (_ok_3606944) {
                            _gotoNext = 3606969i32;
                        } else {
                            _gotoNext = 3607099i32;
                        };
                    };
                } else if (__value__ == (3606969i32)) {
                    {
                        _err_3606867 = stdgo._internal.database.sql.Sql__validateNamedValueName._validateNamedValueName(_np_3606940.name?.__copy__());
                        if (_err_3606867 != null) {
                            _gotoNext = 3607027i32;
                        } else {
                            _gotoNext = 3607057i32;
                        };
                    };
                } else if (__value__ == (3607027i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : _err_3606867 };
                    _gotoNext = 3607057i32;
                } else if (__value__ == (3607057i32)) {
                    _arg_3606896 = _np_3606940.value;
                    _nv_3606918.name = _np_3606940.name?.__copy__();
                    _gotoNext = 3607099i32;
                } else if (__value__ == (3607099i32)) {
                    _nv_3606918.ordinal = (_n_3606882 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _nv_3606918.value = stdgo.Go.toInterface(_arg_3606896);
                    _checker_3607618 = stdgo._internal.database.sql.Sql__defaultCheckNamedValue._defaultCheckNamedValue;
                    _nextCC_3607654 = false;
                    _gotoNext = 3607672i32;
                } else if (__value__ == (3607672i32)) {
                    if (_nvc_3606457 != null) {
                        _gotoNext = 3607683i32;
                    } else if (_cci_3606554 != null) {
                        _gotoNext = 3607758i32;
                    } else {
                        _gotoNext = 3607813i32;
                    };
                } else if (__value__ == (3607683i32)) {
                    _nextCC_3607654 = _cci_3606554 != null;
                    _checker_3607618 = _nvc_3606457.checkNamedValue;
                    _gotoNext = 3607813i32;
                } else if (__value__ == (3607758i32)) {
                    _checker_3607618 = _cc_3606163.checkNamedValue;
                    _gotoNext = 3607813i32;
                } else if (__value__ == (3607813i32)) {
                    _gotoNext = 3607813i32;
                    _err_3606867 = _checker_3607618(_nv_3606918);
                    _gotoNext = 3607846i32;
                } else if (__value__ == (3607846i32)) {
                    {
                        final __value__ = _err_3606867;
                        if (__value__ == null) {
                            _gotoNext = 3607861i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errRemoveArgument.errRemoveArgument))) {
                            _gotoNext = 3607892i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errSkip.errSkip))) {
                            _gotoNext = 3607972i32;
                        } else {
                            _gotoNext = 3608134i32;
                        };
                    };
                } else if (__value__ == (3607861i32)) {
                    _n_3606882++;
                    _i_3606903_0++;
                    _gotoNext = 3608243i32;
                } else if (__value__ == (3607892i32)) {
                    _nvargs_3605910 = (_nvargs_3605910.__slice__(0, ((_nvargs_3605910.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                    _i_3606903_0++;
                    _gotoNext = 3608243i32;
                } else if (__value__ == (3607972i32)) {
                    if (_nextCC_3607654) {
                        _gotoNext = 3608006i32;
                    } else {
                        _gotoNext = 3608070i32;
                    };
                } else if (__value__ == (3608006i32)) {
                    _nextCC_3607654 = false;
                    _checker_3607618 = _cc_3606163.checkNamedValue;
                    _gotoNext = 3608117i32;
                } else if (__value__ == (3608070i32)) {
                    _gotoNext = 3608070i32;
                    _checker_3607618 = stdgo._internal.database.sql.Sql__defaultCheckNamedValue._defaultCheckNamedValue;
                    var __blank__ = 0i32;
                    _gotoNext = 3608117i32;
                } else if (__value__ == (3608117i32)) {
                    _gotoNext = 3607813i32;
                } else if (__value__ == (3608134i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: converting argument %s type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__describeNamedValue._describeNamedValue(_nv_3606918)), stdgo.Go.toInterface(_err_3606867)) };
                    _gotoNext = 3606893i32;
                } else if (__value__ == (3608242i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo.Go.toInterface(_args[(0i32 : stdgo.GoInt)]);
                        _i_3606903_0 = __tmp__0;
                        _arg_3606896 = __tmp__1;
                    };
                    _gotoNext = 3608243i32;
                } else if (__value__ == (3608243i32)) {
                    if (_i_3606903_0 < (_args.length)) {
                        _gotoNext = 3606914i32;
                    } else {
                        _gotoNext = 3608334i32;
                    };
                } else if (__value__ == (3608334i32)) {
                    if (((_want_3606126 != (-1 : stdgo.GoInt)) && (_nvargs_3605910.length != _want_3606126) : Bool)) {
                        _gotoNext = 3608371i32;
                    } else {
                        _gotoNext = 3608460i32;
                    };
                } else if (__value__ == (3608371i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d arguments, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want_3606126), stdgo.Go.toInterface((_nvargs_3605910.length))) };
                    _gotoNext = 3608460i32;
                } else if (__value__ == (3608460i32)) {
                    return { _0 : _nvargs_3605910, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
