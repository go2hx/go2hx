package stdgo._internal.internal.pkgbits;
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _p : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder> = (null : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder>);
    public var relocs : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt> = (null : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>);
    public var relocMap : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt, stdgo.GoUInt32> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt, stdgo.GoUInt32> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt, stdgo.GoUInt32>));
    public var data : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _encodingRelocHeader : Bool = false;
    public var _k : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind);
    public var idx : stdgo._internal.internal.pkgbits.Pkgbits_index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
    public function new(?_p:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder>, ?relocs:stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>, ?relocMap:stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt, stdgo.GoUInt32>, ?data:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_encodingRelocHeader:Bool, ?_k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, ?idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index) {
        if (_p != null) this._p = _p;
        if (relocs != null) this.relocs = relocs;
        if (relocMap != null) this.relocMap = relocMap;
        if (data != null) this.data = data;
        if (_encodingRelocHeader != null) this._encodingRelocHeader = _encodingRelocHeader;
        if (_k != null) this._k = _k;
        if (idx != null) this.idx = idx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_p, relocs, relocMap, data, _encodingRelocHeader, _k, idx);
    }
}
