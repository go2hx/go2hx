package stdgo._internal.net.mail;
@:structInit @:using(stdgo._internal.net.mail.Mail_address_static_extension.Address_static_extension) class Address {
    public var name : stdgo.GoString = "";
    public var address : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?address:stdgo.GoString) {
        if (name != null) this.name = name;
        if (address != null) this.address = address;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Address(name, address);
    }
}
