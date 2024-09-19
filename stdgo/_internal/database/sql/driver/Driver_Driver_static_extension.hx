package stdgo._internal.database.sql.driver;
@:keep class Driver_static_extension {
    static public function open(t:Driver, _name:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Conn.Conn; var _1 : stdgo.Error; } return t.open(_name);
}
