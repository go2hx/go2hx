package stdgo.net.textproto;
@:structInit @:using(stdgo.net.textproto.Textproto.Reader_static_extension) abstract Reader(stdgo._internal.net.textproto.Textproto_Reader.Reader) from stdgo._internal.net.textproto.Textproto_Reader.Reader to stdgo._internal.net.textproto.Textproto_Reader.Reader {
    public var r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get_r():stdgo._internal.bufio.Bufio_Reader.Reader return this.r;
    function set_r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this.r = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return v;
    }
    public var _dot(get, set) : T_dotReader;
    function get__dot():T_dotReader return this._dot;
    function set__dot(v:T_dotReader):T_dotReader {
        this._dot = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader>);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_dot:T_dotReader, ?_buf:Array<std.UInt>) this = new stdgo._internal.net.textproto.Textproto_Reader.Reader((r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), (_dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
