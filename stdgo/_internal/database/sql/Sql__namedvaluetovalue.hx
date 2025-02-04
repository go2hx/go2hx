package stdgo._internal.database.sql;
function _namedValueToValue(_named:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>; var _1 : stdgo.Error; } {
        var _dargs = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>((_named.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
        for (_n => _param in _named) {
            if (((_param.name.length) > (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>), _1 : stdgo._internal.errors.Errors_new_.new_(("sql: driver does not support the use of Named Parameters" : stdgo.GoString)) };
            };
            _dargs[(_n : stdgo.GoInt)] = _param.value;
        };
        return { _0 : _dargs, _1 : (null : stdgo.Error) };
    }
