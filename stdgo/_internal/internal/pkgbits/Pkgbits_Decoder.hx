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
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension) class Decoder {
    public var _common : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder> = (null : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
    public var relocs : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt> = (null : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>);
    public var data : stdgo._internal.strings.Strings_Reader.Reader = ({} : stdgo._internal.strings.Strings_Reader.Reader);
    public var _k : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind);
    public var idx : stdgo._internal.internal.pkgbits.Pkgbits_Index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_Index.Index);
    public function new(?_common:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>, ?relocs:stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>, ?data:stdgo._internal.strings.Strings_Reader.Reader, ?_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, ?idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index) {
        if (_common != null) this._common = _common;
        if (relocs != null) this.relocs = relocs;
        if (data != null) this.data = data;
        if (_k != null) this._k = _k;
        if (idx != null) this.idx = idx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Decoder(_common, relocs, data, _k, idx);
    }
}
