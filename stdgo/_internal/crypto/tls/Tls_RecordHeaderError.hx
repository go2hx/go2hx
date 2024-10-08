package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_RecordHeaderError_static_extension.RecordHeaderError_static_extension) class RecordHeaderError {
    public var msg : stdgo.GoString = "";
    public var recordHeader : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(5, 5, ...[for (i in 0 ... 5) (0 : stdgo.GoUInt8)]);
    public var conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public function new(?msg:stdgo.GoString, ?recordHeader:stdgo.GoArray<stdgo.GoUInt8>, ?conn:stdgo._internal.net.Net_Conn.Conn) {
        if (msg != null) this.msg = msg;
        if (recordHeader != null) this.recordHeader = recordHeader;
        if (conn != null) this.conn = conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RecordHeaderError(msg, recordHeader, conn);
    }
}
