package stdgo._internal.database.sql.driver;
@:interface typedef Driver = stdgo.StructType & {
    @:interfacetypeffun
    function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_conn.Conn; var _1 : stdgo.Error; };
};
