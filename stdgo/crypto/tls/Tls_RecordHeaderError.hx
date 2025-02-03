package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.RecordHeaderError_static_extension) abstract RecordHeaderError(stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError) from stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError to stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError {
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public var recordHeader(get, set) : haxe.ds.Vector<std.UInt>;
    function get_recordHeader():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.recordHeader) i]);
    function set_recordHeader(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.recordHeader = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get_conn():stdgo._internal.net.Net_Conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this.conn = v;
        return v;
    }
    public function new(?msg:String, ?recordHeader:haxe.ds.Vector<std.UInt>, ?conn:stdgo._internal.net.Net_Conn.Conn) this = new stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError((msg : stdgo.GoString), ([for (i in recordHeader) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
