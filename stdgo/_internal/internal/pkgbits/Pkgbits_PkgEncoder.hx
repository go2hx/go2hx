package stdgo._internal.internal.pkgbits;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.go.constant.Constant;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder_static_extension.PkgEncoder_static_extension) class PkgEncoder {
    public var _elems : stdgo.GoArray<stdgo.Slice<stdgo.GoString>> = new stdgo.GoArray<stdgo.Slice<stdgo.GoString>>(10, 10);
    public var _stringsIdx : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>);
    public var _syncFrames : stdgo.GoInt = 0;
    public function new(?_elems:stdgo.GoArray<stdgo.Slice<stdgo.GoString>>, ?_stringsIdx:stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>, ?_syncFrames:stdgo.GoInt) {
        if (_elems != null) this._elems = _elems;
        if (_stringsIdx != null) this._stringsIdx = _stringsIdx;
        if (_syncFrames != null) this._syncFrames = _syncFrames;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PkgEncoder(_elems, _stringsIdx, _syncFrames);
    }
}
