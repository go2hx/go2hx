package stdgo.encoding.pem;
@:structInit @:using(stdgo.encoding.pem.Pem.Block_static_extension) abstract Block(stdgo._internal.encoding.pem.Pem_Block.Block) from stdgo._internal.encoding.pem.Pem_Block.Block to stdgo._internal.encoding.pem.Pem_Block.Block {
    public var type(get, set) : String;
    function get_type():String return this.type;
    function set_type(v:String):String {
        this.type = (v : stdgo.GoString);
        return v;
    }
    public var headers(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_headers():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.headers;
    function set_headers(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.headers = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var bytes(get, set) : Array<std.UInt>;
    function get_bytes():Array<std.UInt> return [for (i in this.bytes) i];
    function set_bytes(v:Array<std.UInt>):Array<std.UInt> {
        this.bytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?type:String, ?headers:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?bytes:Array<std.UInt>) this = new stdgo._internal.encoding.pem.Pem_Block.Block((type : stdgo.GoString), (headers : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), ([for (i in bytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
