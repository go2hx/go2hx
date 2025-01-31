package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.bytes.Bytes_Reader_static_extension.Reader_static_extension) class Reader {
    public var _s : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _i : stdgo.GoInt64 = 0;
    public var _prevRune : stdgo.GoInt = 0;
    public function new(?_s:stdgo.Slice<stdgo.GoUInt8>, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_prevRune != null) this._prevRune = _prevRune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_s, _i, _prevRune);
    }
}
