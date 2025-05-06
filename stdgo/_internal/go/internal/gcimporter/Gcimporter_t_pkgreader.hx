package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension) class T_pkgReader {
    @:embedded
    public var pkgDecoder : stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder = ({} : stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder);
    public var _fake : stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet = ({} : stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet);
    public var _ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
    public var _imports : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
    public var _posBases : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _pkgs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
    public var _typs : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
    public var _laterFns : stdgo.Slice<() -> Void> = (null : stdgo.Slice<() -> Void>);
    public var _ifaces : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>);
    public function new(?pkgDecoder:stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder, ?_fake:stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet, ?_ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, ?_imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, ?_posBases:stdgo.Slice<stdgo.GoString>, ?_pkgs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, ?_typs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, ?_laterFns:stdgo.Slice<() -> Void>, ?_ifaces:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>) {
        if (pkgDecoder != null) this.pkgDecoder = pkgDecoder;
        if (_fake != null) this._fake = _fake;
        if (_ctxt != null) this._ctxt = _ctxt;
        if (_imports != null) this._imports = _imports;
        if (_posBases != null) this._posBases = _posBases;
        if (_pkgs != null) this._pkgs = _pkgs;
        if (_typs != null) this._typs = _typs;
        if (_laterFns != null) this._laterFns = _laterFns;
        if (_ifaces != null) this._ifaces = _ifaces;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var absIdx(get, never) : (stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index) -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_absIdx():(stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index) -> stdgo.GoInt return @:check32 this.pkgDecoder.absIdx;
    public var dataIdx(get, never) : (stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index) -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_dataIdx():(stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index) -> stdgo.GoString return @:check32 this.pkgDecoder.dataIdx;
    public var fingerprint(get, never) : () -> stdgo.GoArray<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_fingerprint():() -> stdgo.GoArray<stdgo.GoUInt8> return @:check32 this.pkgDecoder.fingerprint;
    public var newDecoder(get, never) : (stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index, stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) -> stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder;
    @:embedded
    @:embeddededffieldsffun
    public function get_newDecoder():(stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index, stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) -> stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:check32 this.pkgDecoder.newDecoder;
    public var newDecoderRaw(get, never) : (stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index) -> stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder;
    @:embedded
    @:embeddededffieldsffun
    public function get_newDecoderRaw():(stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index) -> stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:check32 this.pkgDecoder.newDecoderRaw;
    public var numElems(get, never) : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_numElems():stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind -> stdgo.GoInt return @:check32 this.pkgDecoder.numElems;
    public var peekObj(get, never) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj; };
    @:embedded
    @:embeddededffieldsffun
    public function get_peekObj():stdgo._internal.internal.pkgbits.Pkgbits_index.Index -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj; } return @:check32 this.pkgDecoder.peekObj;
    public var peekPkgPath(get, never) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_peekPkgPath():stdgo._internal.internal.pkgbits.Pkgbits_index.Index -> stdgo.GoString return @:check32 this.pkgDecoder.peekPkgPath;
    public var pkgPath(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_pkgPath():() -> stdgo.GoString return @:check32 this.pkgDecoder.pkgPath;
    public var retireDecoder(get, never) : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_retireDecoder():stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder> -> Void return @:check32 this.pkgDecoder.retireDecoder;
    public var stringIdx(get, never) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_stringIdx():stdgo._internal.internal.pkgbits.Pkgbits_index.Index -> stdgo.GoString return @:check32 this.pkgDecoder.stringIdx;
    public var syncMarkers(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_syncMarkers():() -> Bool return @:check32 this.pkgDecoder.syncMarkers;
    public var tempDecoder(get, never) : (stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index, stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) -> stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder;
    @:embedded
    @:embeddededffieldsffun
    public function get_tempDecoder():(stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index, stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker) -> stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:check32 this.pkgDecoder.tempDecoder;
    public var tempDecoderRaw(get, never) : (stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index) -> stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder;
    @:embedded
    @:embeddededffieldsffun
    public function get_tempDecoderRaw():(stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo._internal.internal.pkgbits.Pkgbits_index.Index) -> stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:check32 this.pkgDecoder.tempDecoderRaw;
    public var totalElems(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_totalElems():() -> stdgo.GoInt return @:check32 this.pkgDecoder.totalElems;
    public function __copy__() {
        return new T_pkgReader(pkgDecoder, _fake, _ctxt, _imports, _posBases, _pkgs, _typs, _laterFns, _ifaces);
    }
}
