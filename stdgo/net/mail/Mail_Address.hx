package stdgo.net.mail;
@:structInit @:using(stdgo.net.mail.Mail.Address_static_extension) abstract Address(stdgo._internal.net.mail.Mail_Address.Address) from stdgo._internal.net.mail.Mail_Address.Address to stdgo._internal.net.mail.Mail_Address.Address {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var address(get, set) : String;
    function get_address():String return this.address;
    function set_address(v:String):String {
        this.address = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?address:String) this = new stdgo._internal.net.mail.Mail_Address.Address((name : stdgo.GoString), (address : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
