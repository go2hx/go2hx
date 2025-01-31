package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_Builder_static_extension.Builder_static_extension) class Builder {
    public var _addr : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> = (null : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_addr:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_addr != null) this._addr = _addr;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Builder(_addr, _buf);
    }
}
