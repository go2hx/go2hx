package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension) class T_reader {
    @:embedded
    public var decoder : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder = ({} : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder);
    public var _p : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = (null : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
    public var _dict : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict> = (null : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict>);
    public function new(?decoder:stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder, ?_p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, ?_dict:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict>) {
        if (decoder != null) this.decoder = decoder;
        if (_p != null) this._p = _p;
        if (_dict != null) this._dict = _dict;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var bool_(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_bool_():() -> Bool return @:check32 this.decoder.bool_;
    public var code(get, never) : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_code():stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker -> stdgo.GoInt return @:check32 this.decoder.code;
    public var int_(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_int_():() -> stdgo.GoInt return @:check32 this.decoder.int_;
    public var int64(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_int64():() -> stdgo.GoInt64 return @:check32 this.decoder.int64;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check32 this.decoder.len;
    public var reloc(get, never) : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind -> stdgo._internal.internal.pkgbits.Pkgbits_index.Index;
    @:embedded
    @:embeddededffieldsffun
    public function get_reloc():stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind -> stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:check32 this.decoder.reloc;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this.decoder.string;
    public var strings(get, never) : () -> stdgo.Slice<stdgo.GoString>;
    @:embedded
    @:embeddededffieldsffun
    public function get_strings():() -> stdgo.Slice<stdgo.GoString> return @:check32 this.decoder.strings;
    public var sync(get, never) : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_sync():stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker -> Void return @:check32 this.decoder.sync;
    public var uint(get, never) : () -> stdgo.GoUInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_uint():() -> stdgo.GoUInt return @:check32 this.decoder.uint;
    public var uint64(get, never) : () -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_uint64():() -> stdgo.GoUInt64 return @:check32 this.decoder.uint64;
    public var value(get, never) : () -> stdgo._internal.go.constant.Constant_value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():() -> stdgo._internal.go.constant.Constant_value.Value return @:check32 this.decoder.value;
    public var _bigFloat(get, never) : () -> stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>;
    @:embedded
    @:embeddededffieldsffun
    public function get__bigFloat():() -> stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return @:check32 this.decoder._bigFloat;
    public var _bigInt(get, never) : () -> stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>;
    @:embedded
    @:embeddededffieldsffun
    public function get__bigInt():() -> stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:check32 this.decoder._bigInt;
    public var _checkErr(get, never) : stdgo.Error -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkErr():stdgo.Error -> Void return @:check32 this.decoder._checkErr;
    public var _rawReloc(get, never) : (stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo.GoInt) -> stdgo._internal.internal.pkgbits.Pkgbits_index.Index;
    @:embedded
    @:embeddededffieldsffun
    public function get__rawReloc():(stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, stdgo.GoInt) -> stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:check32 this.decoder._rawReloc;
    public var _rawUvarint(get, never) : () -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__rawUvarint():() -> stdgo.GoUInt64 return @:check32 this.decoder._rawUvarint;
    public var _rawVarint(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__rawVarint():() -> stdgo.GoInt64 return @:check32 this.decoder._rawVarint;
    public var _scalar(get, never) : () -> stdgo._internal.go.constant.Constant_value.Value;
    @:embedded
    @:embeddededffieldsffun
    public function get__scalar():() -> stdgo._internal.go.constant.Constant_value.Value return @:check32 this.decoder._scalar;
    public function __copy__() {
        return new T_reader(decoder, _p, _dict);
    }
}
