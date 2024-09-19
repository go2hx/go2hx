package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T_ccChecker_asInterface) class T_ccChecker_static_extension {
    @:keep
    static public function checkNamedValue( _c:stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker, _nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):stdgo.Error {
        @:recv var _c:stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker = _c?.__copy__();
        if (_c._cci == null) {
            return stdgo._internal.database.sql.driver.Driver_errSkip.errSkip;
        };
        var _index = (_nv.ordinal - (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_c._want <= _index : Bool)) {
            return (null : stdgo.Error);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_nv.value : stdgo._internal.database.sql.driver.Driver_Valuer.Valuer)) : stdgo._internal.database.sql.driver.Driver_Valuer.Valuer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_Valuer.Valuer), _1 : false };
            }, _vr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = stdgo._internal.database.sql.Sql__callValuerValue._callValuerValue(_vr), _sv:stdgo._internal.database.sql.driver.Driver_Value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (!stdgo._internal.database.sql.driver.Driver_isValue.isValue(stdgo.Go.toInterface(_sv))) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("non-subset type %T returned from Value" : stdgo.GoString), stdgo.Go.toInterface(_sv));
                };
                _nv.value = _sv;
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _arg = (_nv.value : stdgo._internal.database.sql.driver.Driver_Value.Value);
        {
            var __tmp__ = _c._cci.columnConverter(_index).convertValue(stdgo.Go.toInterface(_arg));
            _nv.value = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        if (!stdgo._internal.database.sql.driver.Driver_isValue.isValue(stdgo.Go.toInterface(_nv.value))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("driver ColumnConverter error converted %T to unsupported type %T" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_nv.value));
        };
        return (null : stdgo.Error);
    }
}
