package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1, _r:stdgo.GoInt32) __self__.mutex._unlockSlow(_r);
    @:embedded
    public static function _lockSlow( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1) __self__.mutex._lockSlow();
    @:embedded
    public static function unlock( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1) __self__.mutex.unlock();
    @:embedded
    public static function tryLock( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1):Bool return return __self__.mutex.tryLock();
    @:embedded
    public static function lock( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1) __self__.mutex.lock();
}
