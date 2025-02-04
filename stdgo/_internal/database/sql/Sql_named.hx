package stdgo._internal.database.sql;
function named(_name:stdgo.GoString, _value:stdgo.AnyInterface):stdgo._internal.database.sql.Sql_namedarg.NamedArg {
        return ({ name : _name?.__copy__(), value : _value } : stdgo._internal.database.sql.Sql_namedarg.NamedArg);
    }
