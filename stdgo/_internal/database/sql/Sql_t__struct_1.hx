package stdgo._internal.database.sql;
@:local @:using(stdgo._internal.database.sql.Sql_t__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_mutex.Mutex;
    public var _v : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>>;
};
