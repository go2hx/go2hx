package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension) class T_importReader {
    public var _b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _peek : stdgo.GoUInt8 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _eof : Bool = false;
    public var _nerr : stdgo.GoInt = 0;
    public var _pos : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public function new(?_b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_peek:stdgo.GoUInt8, ?_err:stdgo.Error, ?_eof:Bool, ?_nerr:stdgo.GoInt, ?_pos:stdgo._internal.go.token.Token_position.Position) {
        if (_b != null) this._b = _b;
        if (_buf != null) this._buf = _buf;
        if (_peek != null) this._peek = _peek;
        if (_err != null) this._err = _err;
        if (_eof != null) this._eof = _eof;
        if (_nerr != null) this._nerr = _nerr;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_importReader(_b, _buf, _peek, _err, _eof, _nerr, _pos);
    }
}
