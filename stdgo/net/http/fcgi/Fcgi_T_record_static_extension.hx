package stdgo.net.http.fcgi;
class T_record_static_extension {
    static public function _content(_r:T_record):Array<std.UInt> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>);
        return [for (i in stdgo._internal.net.http.fcgi.Fcgi_T_record_static_extension.T_record_static_extension._content(_r)) i];
    }
    static public function _read(_rec:T_record, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        final _rec = (_rec : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_record_static_extension.T_record_static_extension._read(_rec, _r);
    }
}
