package stdgo._internal.database.sql;
@:interface typedef Result = stdgo.StructType & {
    /**
        * LastInsertId returns the integer generated by the database
        * in response to a command. Typically this will be from an
        * "auto increment" column when inserting a new row. Not all
        * databases support this feature, and the syntax of such
        * statements varies.
        
        
    **/
    @:interfacetypeffun
    public dynamic function lastInsertId():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    /**
        * RowsAffected returns the number of rows affected by an
        * update, insert, or delete. Not every database or database
        * driver may support this.
        
        
    **/
    @:interfacetypeffun
    public dynamic function rowsAffected():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
