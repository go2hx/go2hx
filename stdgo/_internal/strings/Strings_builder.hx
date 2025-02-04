package stdgo._internal.strings;
@:structInit @:using(stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension) class Builder {
    public var _addr : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = (null : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_addr:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_addr != null) this._addr = _addr;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Builder(_addr, _buf);
    }
}
