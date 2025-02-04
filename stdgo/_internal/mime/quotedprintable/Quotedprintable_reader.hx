package stdgo._internal.mime.quotedprintable;
@:structInit @:using(stdgo._internal.mime.quotedprintable.Quotedprintable_reader_static_extension.Reader_static_extension) class Reader {
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _rerr : stdgo.Error = (null : stdgo.Error);
    public var _line : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_rerr:stdgo.Error, ?_line:stdgo.Slice<stdgo.GoUInt8>) {
        if (_br != null) this._br = _br;
        if (_rerr != null) this._rerr = _rerr;
        if (_line != null) this._line = _line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_br, _rerr, _line);
    }
}
