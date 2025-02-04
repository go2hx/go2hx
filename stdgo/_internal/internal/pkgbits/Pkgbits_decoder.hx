package stdgo._internal.internal.pkgbits;
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_decoder_static_extension.Decoder_static_extension) class Decoder {
    public var _common : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = (null : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>);
    public var relocs : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt> = (null : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>);
    public var data : stdgo._internal.strings.Strings_reader.Reader = ({} : stdgo._internal.strings.Strings_reader.Reader);
    public var _k : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind);
    public var idx : stdgo._internal.internal.pkgbits.Pkgbits_index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
    public function new(?_common:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, ?relocs:stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>, ?data:stdgo._internal.strings.Strings_reader.Reader, ?_k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, ?idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index) {
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
