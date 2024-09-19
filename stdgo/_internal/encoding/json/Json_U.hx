package stdgo._internal.encoding.json;
@:structInit class U {
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
