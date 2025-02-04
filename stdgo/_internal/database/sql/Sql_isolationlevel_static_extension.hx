package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.IsolationLevel_asInterface) class IsolationLevel_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel):stdgo.GoString {
        @:recv var _i:stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel = _i;
        {
            final __value__ = _i;
            if (__value__ == ((0 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                return ("Default" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                return ("Read Uncommitted" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                return ("Read Committed" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                return ("Write Committed" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                return ("Repeatable Read" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                return ("Snapshot" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                return ("Serializable" : stdgo.GoString);
            } else if (__value__ == ((7 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                return ("Linearizable" : stdgo.GoString);
            } else {
                return ((("IsolationLevel(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_i : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
}
