package stdgo._internal.database.sql;
function named(_name:stdgo.GoString, _value:stdgo.AnyInterface):stdgo._internal.database.sql.Sql_namedarg.NamedArg {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L115"
        return ({ name : _name?.__copy__(), value : _value } : stdgo._internal.database.sql.Sql_namedarg.NamedArg);
    }
