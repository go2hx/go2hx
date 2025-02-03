package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bug4Public_static_extension) abstract Bug4Public(stdgo._internal.encoding.gob.Gob_Bug4Public.Bug4Public) from stdgo._internal.encoding.gob.Gob_Bug4Public.Bug4Public to stdgo._internal.encoding.gob.Gob_Bug4Public.Bug4Public {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var secret(get, set) : Bug4Secret;
    function get_secret():Bug4Secret return this.secret;
    function set_secret(v:Bug4Secret):Bug4Secret {
        this.secret = v;
        return v;
    }
    public function new(?name:String, ?secret:Bug4Secret) this = new stdgo._internal.encoding.gob.Gob_Bug4Public.Bug4Public((name : stdgo.GoString), secret);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
