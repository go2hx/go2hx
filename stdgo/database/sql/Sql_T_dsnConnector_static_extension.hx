package stdgo.database.sql;
class T_dsnConnector_static_extension {
    static public function driver(_t:T_dsnConnector):Driver {
        return stdgo._internal.database.sql.Sql_T_dsnConnector_static_extension.T_dsnConnector_static_extension.driver(_t);
    }
    static public function connect(_t:T_dsnConnector, __19:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_dsnConnector_static_extension.T_dsnConnector_static_extension.connect(_t, __19);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
