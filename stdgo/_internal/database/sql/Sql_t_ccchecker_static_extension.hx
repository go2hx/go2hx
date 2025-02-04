package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T_ccChecker_asInterface) class T_ccChecker_static_extension {
    @:keep
    @:tdfield
    static public function checkNamedValue( _c:stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker, _nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):stdgo.Error {
        @:recv var _c:stdgo._internal.database.sql.Sql_t_ccchecker.T_ccChecker = _c?.__copy__();
        if (_c._cci == null) {
            return stdgo._internal.database.sql.driver.Driver_errskip.errSkip;
        };
        var _index = ((@:checkr _nv ?? throw "null pointer dereference").ordinal - (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_c._want <= _index : Bool)) {
            return (null : stdgo.Error);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _nv ?? throw "null pointer dereference").value : stdgo._internal.database.sql.driver.Driver_valuer.Valuer)) : stdgo._internal.database.sql.driver.Driver_valuer.Valuer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_valuer.Valuer), _1 : false };
            }, _vr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = stdgo._internal.database.sql.Sql__callvaluervalue._callValuerValue(_vr), _sv:stdgo._internal.database.sql.driver.Driver_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (!stdgo._internal.database.sql.driver.Driver_isvalue.isValue(stdgo.Go.toInterface(_sv))) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("non-subset type %T returned from Value" : stdgo.GoString), stdgo.Go.toInterface(_sv));
                };
                (@:checkr _nv ?? throw "null pointer dereference").value = _sv;
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _arg = ((@:checkr _nv ?? throw "null pointer dereference").value : stdgo._internal.database.sql.driver.Driver_value.Value);
        {
            var __tmp__ = _c._cci.columnConverter(_index).convertValue(stdgo.Go.toInterface(_arg));
            (@:checkr _nv ?? throw "null pointer dereference").value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        if (!stdgo._internal.database.sql.driver.Driver_isvalue.isValue(stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").value))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("driver ColumnConverter error converted %T to unsupported type %T" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").value));
        };
        return (null : stdgo.Error);
    }
}
