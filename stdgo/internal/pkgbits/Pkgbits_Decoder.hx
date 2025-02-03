package stdgo.internal.pkgbits;
@:structInit @:using(stdgo.internal.pkgbits.Pkgbits.Decoder_static_extension) abstract Decoder(stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder) from stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder to stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder {
    public var _common(get, set) : PkgDecoder;
    function get__common():PkgDecoder return this._common;
    function set__common(v:PkgDecoder):PkgDecoder {
        this._common = (v : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return v;
    }
    public var relocs(get, set) : Array<RelocEnt>;
    function get_relocs():Array<RelocEnt> return [for (i in this.relocs) i];
    function set_relocs(v:Array<RelocEnt>):Array<RelocEnt> {
        this.relocs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>);
        return v;
    }
    public var data(get, set) : stdgo._internal.strings.Strings_Reader.Reader;
    function get_data():stdgo._internal.strings.Strings_Reader.Reader return this.data;
    function set_data(v:stdgo._internal.strings.Strings_Reader.Reader):stdgo._internal.strings.Strings_Reader.Reader {
        this.data = v;
        return v;
    }
    public var _k(get, set) : RelocKind;
    function get__k():RelocKind return this._k;
    function set__k(v:RelocKind):RelocKind {
        this._k = v;
        return v;
    }
    public var idx(get, set) : Index;
    function get_idx():Index return this.idx;
    function set_idx(v:Index):Index {
        this.idx = v;
        return v;
    }
    public function new(?_common:PkgDecoder, ?relocs:Array<RelocEnt>, ?data:stdgo._internal.strings.Strings_Reader.Reader, ?_k:RelocKind, ?idx:Index) this = new stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder((_common : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>), ([for (i in relocs) i] : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>), data, _k, idx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
