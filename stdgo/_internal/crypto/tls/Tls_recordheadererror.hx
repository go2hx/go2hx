package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_recordheadererror_static_extension.RecordHeaderError_static_extension) class RecordHeaderError {
    public var msg : stdgo.GoString = "";
    public var recordHeader : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(5, 5).__setNumber32__();
    public var conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public function new(?msg:stdgo.GoString, ?recordHeader:stdgo.GoArray<stdgo.GoUInt8>, ?conn:stdgo._internal.net.Net_conn.Conn) {
        if (msg != null) this.msg = msg;
        if (recordHeader != null) this.recordHeader = recordHeader;
        if (conn != null) this.conn = conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RecordHeaderError(msg, recordHeader, conn);
    }
}
