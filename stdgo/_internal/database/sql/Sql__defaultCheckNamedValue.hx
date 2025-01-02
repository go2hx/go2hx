package stdgo._internal.database.sql;
function _defaultCheckNamedValue(_nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):stdgo.Error {
        var _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.database.sql.driver.Driver_defaultParameterConverter.defaultParameterConverter.convertValue(stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").value));
            (@:checkr _nv ?? throw "null pointer dereference").value = __tmp__._0;
            _err = __tmp__._1;
        };
        return _err;
    }
