package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_bug4public_static_extension.Bug4Public_static_extension) class Bug4Public {
    public var name : stdgo.GoString = "";
    public var secret : stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret = ({} : stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret);
    public function new(?name:stdgo.GoString, ?secret:stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret) {
        if (name != null) this.name = name;
        if (secret != null) this.secret = secret;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug4Public(name, secret);
    }
}
