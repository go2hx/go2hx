package stdgo._internal.database.sql;
function _defaultCheckNamedValue(_nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):stdgo.Error {
        var _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.database.sql.driver.Driver_defaultparameterconverter.defaultParameterConverter.convertValue(stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").value));
            (@:checkr _nv ?? throw "null pointer dereference").value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
