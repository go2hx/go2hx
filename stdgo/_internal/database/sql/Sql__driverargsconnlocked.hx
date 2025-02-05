package stdgo._internal.database.sql;
function _driverArgsConnLocked(_ci:stdgo._internal.database.sql.driver.Driver_conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>; var _1 : stdgo.Error; } {
        var _nvargs_3702687:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        var _ok_3703239:Bool = false;
        var _si_3702920:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt);
        var _want_3702903:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3703659:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3703644:stdgo.Error = (null : stdgo.Error);
        var _nv_3703695:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        var _i_3703680_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nvc_3703234:stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker = (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker);
        var _checker_3704395:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> -> stdgo.Error = null;
        var _np_3703717:stdgo._internal.database.sql.Sql_namedarg.NamedArg = ({} : stdgo._internal.database.sql.Sql_namedarg.NamedArg);
        var _arg_3703673:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _cci_3703331:stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter = (null : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter);
        var _cc_3702940:stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker = ({} : stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker);
        var _nextCC_3704431:Bool = false;
        var _ok_3703721:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _nvargs_3702687 = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue)]) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    _want_3702903 = (-1 : stdgo.GoInt);
                    if ((_ds != null && ((_ds : Dynamic).__nil__ == null || !(_ds : Dynamic).__nil__))) {
                        _gotoNext = 3702967i32;
                    } else {
                        _gotoNext = 3703234i32;
                    };
                } else if (__value__ == (3702967i32)) {
                    _si_3702920 = (@:checkr _ds ?? throw "null pointer dereference")._si;
                    _want_3702903 = (@:checkr _ds ?? throw "null pointer dereference")._si.numInput();
                    _cc_3702940._want = _want_3702903;
                    _gotoNext = 3703234i32;
                } else if (__value__ == (3703234i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_3702920) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_3703234 = @:tmpset0 __tmp__._0;
                        _ok_3703239 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3703239) {
                        _gotoNext = 3703283i32;
                    } else {
                        _gotoNext = 3703331i32;
                    };
                } else if (__value__ == (3703283i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker)) : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker), _1 : false };
                        };
                        _nvc_3703234 = @:tmpset0 __tmp__._0;
                        _ok_3703239 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3703331i32;
                } else if (__value__ == (3703331i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si_3702920) : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter)) : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter), _1 : false };
                        };
                        _cci_3703331 = @:tmpset0 __tmp__._0;
                        _ok_3703239 = @:tmpset0 __tmp__._1;
                    };
                    if (_ok_3703239) {
                        _gotoNext = 3703377i32;
                    } else {
                        _gotoNext = 3703640i32;
                    };
                } else if (__value__ == (3703377i32)) {
                    _cc_3702940._cci = _cci_3703331;
                    _gotoNext = 3703640i32;
                } else if (__value__ == (3703640i32)) {
                    if ((0i32 : stdgo.GoInt) < (_args.length)) {
                        _gotoNext = 3705019i32;
                    } else {
                        _gotoNext = 3705111i32;
                    };
                } else if (__value__ == (3703670i32)) {
                    _i_3703680_0++;
                    _gotoNext = 3705020i32;
                } else if (__value__ == (3703691i32)) {
                    _arg_3703673 = stdgo.Go.toInterface(_args[(_i_3703680_0 : stdgo.GoInt)]);
                    _nv_3703695 = (stdgo.Go.setRef(_nvargs_3702687[(_n_3703659 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_arg_3703673 : stdgo._internal.database.sql.Sql_namedarg.NamedArg)) : stdgo._internal.database.sql.Sql_namedarg.NamedArg), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.database.sql.Sql_namedarg.NamedArg), _1 : false };
                            };
                            _np_3703717 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3703721 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3703721) {
                            _gotoNext = 3703746i32;
                        } else {
                            _gotoNext = 3703876i32;
                        };
                    };
                } else if (__value__ == (3703746i32)) {
                    {
                        _err_3703644 = stdgo._internal.database.sql.Sql__validatenamedvaluename._validateNamedValueName(_np_3703717.name?.__copy__());
                        if (_err_3703644 != null) {
                            _gotoNext = 3703804i32;
                        } else {
                            _gotoNext = 3703834i32;
                        };
                    };
                } else if (__value__ == (3703804i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : _err_3703644 };
                    _gotoNext = 3703834i32;
                } else if (__value__ == (3703834i32)) {
                    _arg_3703673 = _np_3703717.value;
                    (@:checkr _nv_3703695 ?? throw "null pointer dereference").name = _np_3703717.name?.__copy__();
                    _gotoNext = 3703876i32;
                } else if (__value__ == (3703876i32)) {
                    (@:checkr _nv_3703695 ?? throw "null pointer dereference").ordinal = (_n_3703659 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    (@:checkr _nv_3703695 ?? throw "null pointer dereference").value = stdgo.Go.toInterface(_arg_3703673);
                    _checker_3704395 = stdgo._internal.database.sql.Sql__defaultchecknamedvalue._defaultCheckNamedValue;
                    _nextCC_3704431 = false;
                    _gotoNext = 3704449i32;
                } else if (__value__ == (3704449i32)) {
                    if (_nvc_3703234 != null) {
                        _gotoNext = 3704460i32;
                    } else if (_cci_3703331 != null) {
                        _gotoNext = 3704535i32;
                    } else {
                        _gotoNext = 3704590i32;
                    };
                } else if (__value__ == (3704460i32)) {
                    _nextCC_3704431 = _cci_3703331 != null;
                    _checker_3704395 = _nvc_3703234.checkNamedValue;
                    _gotoNext = 3704590i32;
                } else if (__value__ == (3704535i32)) {
                    _checker_3704395 = _cc_3702940.checkNamedValue;
                    _gotoNext = 3704590i32;
                } else if (__value__ == (3704590i32)) {
                    _gotoNext = 3704590i32;
                    _err_3703644 = _checker_3704395(_nv_3703695);
                    _gotoNext = 3704623i32;
                } else if (__value__ == (3704623i32)) {
                    {
                        final __value__ = _err_3703644;
                        if (__value__ == null) {
                            _gotoNext = 3704638i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errremoveargument.errRemoveArgument))) {
                            _gotoNext = 3704669i32;
                        } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errskip.errSkip))) {
                            _gotoNext = 3704749i32;
                        } else {
                            _gotoNext = 3704911i32;
                        };
                    };
                } else if (__value__ == (3704638i32)) {
                    _n_3703659++;
                    _i_3703680_0++;
                    _gotoNext = 3705020i32;
                } else if (__value__ == (3704669i32)) {
                    _nvargs_3702687 = (_nvargs_3702687.__slice__(0, ((_nvargs_3702687.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                    _i_3703680_0++;
                    _gotoNext = 3705020i32;
                } else if (__value__ == (3704749i32)) {
                    if (_nextCC_3704431) {
                        _gotoNext = 3704783i32;
                    } else {
                        _gotoNext = 3704847i32;
                    };
                } else if (__value__ == (3704783i32)) {
                    _nextCC_3704431 = false;
                    _checker_3704395 = _cc_3702940.checkNamedValue;
                    _gotoNext = 3704894i32;
                } else if (__value__ == (3704847i32)) {
                    _gotoNext = 3704847i32;
                    _checker_3704395 = stdgo._internal.database.sql.Sql__defaultchecknamedvalue._defaultCheckNamedValue;
                    var __blank__ = 0i32;
                    _gotoNext = 3704894i32;
                } else if (__value__ == (3704894i32)) {
                    _gotoNext = 3704590i32;
                } else if (__value__ == (3704911i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: converting argument %s type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__describenamedvalue._describeNamedValue(_nv_3703695)), stdgo.Go.toInterface(_err_3703644)) };
                    _gotoNext = 3703670i32;
                } else if (__value__ == (3705019i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo.Go.toInterface(_args[(0i32 : stdgo.GoInt)]);
                        _i_3703680_0 = __tmp__0;
                        _arg_3703673 = __tmp__1;
                    };
                    _gotoNext = 3705020i32;
                } else if (__value__ == (3705020i32)) {
                    if (_i_3703680_0 < (_args.length)) {
                        _gotoNext = 3703691i32;
                    } else {
                        _gotoNext = 3705111i32;
                    };
                } else if (__value__ == (3705111i32)) {
                    if (((_want_3702903 != (-1 : stdgo.GoInt)) && (_nvargs_3702687.length != _want_3702903) : Bool)) {
                        _gotoNext = 3705148i32;
                    } else {
                        _gotoNext = 3705237i32;
                    };
                } else if (__value__ == (3705148i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d arguments, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want_3702903), stdgo.Go.toInterface((_nvargs_3702687.length))) };
                    _gotoNext = 3705237i32;
                } else if (__value__ == (3705237i32)) {
                    return { _0 : _nvargs_3702687, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
