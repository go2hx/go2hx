package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.IsolationLevel_asInterface) class IsolationLevel_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel):stdgo.GoString {
        @:recv var _i:stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel = _i;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L138"
        {
            final __value__ = _i;
            if (__value__ == ((0 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L140"
                return ("Default" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L142"
                return ("Read Uncommitted" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L144"
                return ("Read Committed" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L146"
                return ("Write Committed" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L148"
                return ("Repeatable Read" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L150"
                return ("Snapshot" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L152"
                return ("Serializable" : stdgo.GoString);
            } else if (__value__ == ((7 : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L154"
                return ("Linearizable" : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L156"
                return ((("IsolationLevel(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_i : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
}
