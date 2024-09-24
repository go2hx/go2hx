package stdgo.encoding.pem;
@:structInit abstract Block(stdgo._internal.encoding.pem.Pem_Block.Block) from stdgo._internal.encoding.pem.Pem_Block.Block to stdgo._internal.encoding.pem.Pem_Block.Block {
    public var type(get, set) : String;
    function get_type():String return this.type;
    function set_type(v:String):String {
        this.type = v;
        return v;
    }
    public var headers(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_headers():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.headers;
    function set_headers(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.headers = v;
        return v;
    }
    public var bytes(get, set) : Array<std.UInt>;
    function get_bytes():Array<std.UInt> return [for (i in this.bytes) i];
    function set_bytes(v:Array<std.UInt>):Array<std.UInt> {
        this.bytes = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?type:String, ?headers:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?bytes:Array<std.UInt>) this = new stdgo._internal.encoding.pem.Pem_Block.Block(type, headers, ([for (i in bytes) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.pem.Pem.T_lineBreaker_static_extension) abstract T_lineBreaker(stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker) from stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker to stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker {
    public var _line(get, set) : haxe.ds.Vector<std.UInt>;
    function get__line():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._line) i]);
    function set__line(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._line = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _used(get, set) : StdTypes.Int;
    function get__used():StdTypes.Int return this._used;
    function set__used(v:StdTypes.Int):StdTypes.Int {
        this._used = v;
        return v;
    }
    public var _out(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__out():stdgo._internal.io.Io_Writer.Writer return this._out;
    function set__out(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._out = v;
        return v;
    }
    public function new(?_line:haxe.ds.Vector<std.UInt>, ?_used:StdTypes.Int, ?_out:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker(([for (i in _line) i] : stdgo.GoArray<stdgo.GoUInt8>), _used, _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_lineBreaker_static_extension {
    static public function close(_l:T_lineBreaker):stdgo.Error {
        return stdgo._internal.encoding.pem.Pem_T_lineBreaker_static_extension.T_lineBreaker_static_extension.close(_l);
    }
    static public function write(_l:T_lineBreaker, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.pem.Pem_T_lineBreaker_static_extension.T_lineBreaker_static_extension.write(_l, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package pem implements the PEM data encoding, which originated in Privacy
    Enhanced Mail. The most common use of PEM encoding today is in TLS keys and
    certificates. See RFC 1421.
**/
class Pem {
    /**
        Decode will find the next PEM formatted block (certificate, private key
        etc) in the input. It returns that block and the remainder of the input. If
        no PEM data is found, p is nil and the whole of the input is returned in
        rest.
    **/
    static public function decode(_data:Array<std.UInt>):stdgo.Tuple<Block, Array<std.UInt>> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.pem.Pem_decode.decode(_data);
            { _0 : obj._0, _1 : [for (i in obj._1) i] };
        };
    }
    /**
        Encode writes the PEM encoding of b to out.
    **/
    static public function encode(_out:stdgo._internal.io.Io_Writer.Writer, _b:Block):stdgo.Error {
        return stdgo._internal.encoding.pem.Pem_encode.encode(_out, _b);
    }
    /**
        EncodeToMemory returns the PEM encoding of b.
        
        If b has invalid headers and cannot be encoded,
        EncodeToMemory returns nil. If it is important to
        report details about this error case, use Encode instead.
    **/
    static public function encodeToMemory(_b:Block):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.pem.Pem_encodeToMemory.encodeToMemory(_b)) i];
    }
}
