package stdgo._internal.database.sql.driver;
@:interface typedef Result = stdgo.StructType & {
    @:interfacetypeffun
    function lastInsertId():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function rowsAffected():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
