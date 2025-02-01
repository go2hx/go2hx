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
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _p : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder> = (null : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>);
    public var relocs : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt> = (null : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>);
    public var relocMap : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>));
    public var data : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _encodingRelocHeader : Bool = false;
    public var _k : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind);
    public var idx : stdgo._internal.internal.pkgbits.Pkgbits_Index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_Index.Index);
    public function new(?_p:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>, ?relocs:stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>, ?relocMap:stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>, ?data:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_encodingRelocHeader:Bool, ?_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, ?idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index) {
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
