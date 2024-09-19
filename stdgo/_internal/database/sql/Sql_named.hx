package stdgo._internal.database.sql;
function named(_name:stdgo.GoString, _value:stdgo.AnyInterface):stdgo._internal.database.sql.Sql_NamedArg.NamedArg {
        return ({ name : _name?.__copy__(), value : _value } : stdgo._internal.database.sql.Sql_NamedArg.NamedArg);
    }
