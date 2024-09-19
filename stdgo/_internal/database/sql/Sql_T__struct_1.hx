package stdgo._internal.database.sql;
@:local @:using(stdgo._internal.database.sql.Sql_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex;
    public var _v : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>>;
};
