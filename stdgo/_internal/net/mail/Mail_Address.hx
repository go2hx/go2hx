package stdgo._internal.net.mail;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.Log;
@:structInit @:using(stdgo._internal.net.mail.Mail_Address_static_extension.Address_static_extension) class Address {
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
