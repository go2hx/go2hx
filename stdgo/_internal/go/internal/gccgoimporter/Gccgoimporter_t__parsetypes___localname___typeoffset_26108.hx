package stdgo._internal.go.internal.gccgoimporter;
@:structInit class T__parseTypes___localname___typeOffset_26108 {
    public var _offset : stdgo.GoInt = 0;
    public var _length : stdgo.GoInt = 0;
    public function new(?_offset:stdgo.GoInt, ?_length:stdgo.GoInt) {
        if (_offset != null) this._offset = _offset;
        if (_length != null) this._length = _length;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__parseTypes___localname___typeOffset_26108(_offset, _length);
    }
}
