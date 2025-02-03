package stdgo.database.sql;
class T_ccChecker_static_extension {
    static public function checkNamedValue(_c:T_ccChecker, _nv:NamedValue):stdgo.Error {
        final _nv = (_nv : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        return stdgo._internal.database.sql.Sql_T_ccChecker_static_extension.T_ccChecker_static_extension.checkNamedValue(_c, _nv);
    }
}
