package stdgo.mime.quotedprintable;
@:structInit @:using(stdgo.mime.quotedprintable.Quotedprintable.Reader_static_extension) abstract Reader(stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader) from stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader to stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader {
    public var _br(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__br():stdgo._internal.bufio.Bufio_Reader.Reader return this._br;
    function set__br(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._br = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return v;
    }
    public var _rerr(get, set) : stdgo.Error;
    function get__rerr():stdgo.Error return this._rerr;
    function set__rerr(v:stdgo.Error):stdgo.Error {
        this._rerr = (v : stdgo.Error);
        return v;
    }
    public var _line(get, set) : Array<std.UInt>;
    function get__line():Array<std.UInt> return [for (i in this._line) i];
    function set__line(v:Array<std.UInt>):Array<std.UInt> {
        this._line = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_br:stdgo._internal.bufio.Bufio_Reader.Reader, ?_rerr:stdgo.Error, ?_line:Array<std.UInt>) this = new stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader((_br : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), (_rerr : stdgo.Error), ([for (i in _line) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
