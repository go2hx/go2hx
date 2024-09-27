package stdgo.mime.quotedprintable;
@:structInit @:using(stdgo.mime.quotedprintable.Quotedprintable.Reader_static_extension) abstract Reader(stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader) from stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader to stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader {
    public var _br(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__br():stdgo._internal.bufio.Bufio_Reader.Reader return this._br;
    function set__br(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._br = v;
        return v;
    }
    public var _rerr(get, set) : stdgo.Error;
    function get__rerr():stdgo.Error return this._rerr;
    function set__rerr(v:stdgo.Error):stdgo.Error {
        this._rerr = v;
        return v;
    }
    public var _line(get, set) : Array<std.UInt>;
    function get__line():Array<std.UInt> return [for (i in this._line) i];
    function set__line(v:Array<std.UInt>):Array<std.UInt> {
        this._line = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_br:stdgo._internal.bufio.Bufio_Reader.Reader, ?_rerr:stdgo.Error, ?_line:Array<std.UInt>) this = new stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader(_br, _rerr, ([for (i in _line) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.quotedprintable.Quotedprintable.Writer_static_extension) abstract Writer(stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer) from stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer to stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer {
    public var binary(get, set) : Bool;
    function get_binary():Bool return this.binary;
    function set_binary(v:Bool):Bool {
        this.binary = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _i(get, set) : StdTypes.Int;
    function get__i():StdTypes.Int return this._i;
    function set__i(v:StdTypes.Int):StdTypes.Int {
        this._i = v;
        return v;
    }
    public var _line(get, set) : haxe.ds.Vector<std.UInt>;
    function get__line():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._line) i]);
    function set__line(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._line = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _cr(get, set) : Bool;
    function get__cr():Bool return this._cr;
    function set__cr(v:Bool):Bool {
        this._cr = v;
        return v;
    }
    public function new(?binary:Bool, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_i:StdTypes.Int, ?_line:haxe.ds.Vector<std.UInt>, ?_cr:Bool) this = new stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer(binary, _w, _i, ([for (i in _line) i] : stdgo.GoArray<stdgo.GoUInt8>), _cr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Reader_static_extension {
    static public function read(_r:Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.quotedprintable.Quotedprintable_Reader_static_extension.Reader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Writer_static_extension {
    static public function _flush(_w:Writer):stdgo.Error {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._flush(_w);
    }
    static public function _insertCRLF(_w:Writer):stdgo.Error {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._insertCRLF(_w);
    }
    static public function _insertSoftLineBreak(_w:Writer):stdgo.Error {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._insertSoftLineBreak(_w);
    }
    static public function _checkLastByte(_w:Writer):stdgo.Error {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._checkLastByte(_w);
    }
    static public function _encode(_w:Writer, _b:std.UInt):stdgo.Error {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._encode(_w, _b);
    }
    static public function _write(_w:Writer, _p:Array<std.UInt>):stdgo.Error {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension._write(_w, _p);
    }
    static public function close(_w:Writer):stdgo.Error {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function write(_w:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.quotedprintable.Quotedprintable_Writer_static_extension.Writer_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package quotedprintable implements quoted-printable encoding as specified by
    RFC 2045.
**/
class Quotedprintable {
    /**
        NewReader returns a quoted-printable reader, decoding from r.
    **/
    static public function newReader(_r:stdgo._internal.io.Io_Reader.Reader):Reader {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_newReader.newReader(_r);
    }
    /**
        NewWriter returns a new Writer that writes to w.
    **/
    static public function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.mime.quotedprintable.Quotedprintable_newWriter.newWriter(_w);
    }
}