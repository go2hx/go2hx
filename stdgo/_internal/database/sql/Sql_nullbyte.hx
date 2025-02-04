package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_nullbyte_static_extension.NullByte_static_extension) class NullByte {
    public var byte : stdgo.GoUInt8 = 0;
    public var valid : Bool = false;
    public function new(?byte:stdgo.GoUInt8, ?valid:Bool) {
        if (byte != null) this.byte = byte;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullByte(byte, valid);
    }
}
