package stdgo._internal.database.sql.driver;
@:interface typedef Result = stdgo.StructType & {
    /**
        * LastInsertId returns the database's auto-generated ID
        * after, for example, an INSERT into a table with primary
        * key.
        
        
    **/
    @:interfacetypeffun
    public dynamic function lastInsertId():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    /**
        * RowsAffected returns the number of rows affected by the
        * query.
        
        
    **/
    @:interfacetypeffun
    public dynamic function rowsAffected():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
