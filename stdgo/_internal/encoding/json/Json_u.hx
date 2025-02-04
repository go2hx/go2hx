package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_u_static_extension.U_static_extension) class U {
    @:tag("`json:\"alpha\"`")
    public var alphabet : stdgo.GoString = "";
    public function new(?alphabet:stdgo.GoString) {
        if (alphabet != null) this.alphabet = alphabet;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new U(alphabet);
    }
}
