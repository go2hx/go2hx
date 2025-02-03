package stdgo.net.smtp;
@:structInit @:using(stdgo.net.smtp.Smtp.T_dataCloser_static_extension) abstract T_dataCloser(stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser) from stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser to stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser {
    public var _c(get, set) : Client;
    function get__c():Client return this._c;
    function set__c(v:Client):Client {
        this._c = (v : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return v;
    }
    public var writeCloser(get, set) : stdgo._internal.io.Io_WriteCloser.WriteCloser;
    function get_writeCloser():stdgo._internal.io.Io_WriteCloser.WriteCloser return this.writeCloser;
    function set_writeCloser(v:stdgo._internal.io.Io_WriteCloser.WriteCloser):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        this.writeCloser = v;
        return v;
    }
    public function new(?_c:Client, ?writeCloser:stdgo._internal.io.Io_WriteCloser.WriteCloser) this = new stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser((_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>), writeCloser);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
