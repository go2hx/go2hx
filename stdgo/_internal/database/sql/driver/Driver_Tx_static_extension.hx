package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class Tx_static_extension {
    @:interfacetypeffun
    static public function rollback(t:stdgo._internal.database.sql.driver.Driver_Tx.Tx):stdgo.Error return t.rollback();
    @:interfacetypeffun
    static public function commit(t:stdgo._internal.database.sql.driver.Driver_Tx.Tx):stdgo.Error return t.commit();
}
