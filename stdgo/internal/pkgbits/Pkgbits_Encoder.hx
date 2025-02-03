package stdgo.internal.pkgbits;
@:structInit @:using(stdgo.internal.pkgbits.Pkgbits.Encoder_static_extension) abstract Encoder(stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder) from stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder to stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder {
    public var _p(get, set) : PkgEncoder;
    function get__p():PkgEncoder return this._p;
    function set__p(v:PkgEncoder):PkgEncoder {
        this._p = (v : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>);
        return v;
    }
    public var relocs(get, set) : Array<RelocEnt>;
    function get_relocs():Array<RelocEnt> return [for (i in this.relocs) i];
    function set_relocs(v:Array<RelocEnt>):Array<RelocEnt> {
        this.relocs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>);
        return v;
    }
    public var relocMap(get, set) : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>;
    function get_relocMap():stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32> return this.relocMap;
    function set_relocMap(v:stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>):stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32> {
        this.relocMap = (v : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>);
        return v;
    }
    public var data(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_data():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.data;
    function set_data(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.data = v;
        return v;
    }
    public var _encodingRelocHeader(get, set) : Bool;
    function get__encodingRelocHeader():Bool return this._encodingRelocHeader;
    function set__encodingRelocHeader(v:Bool):Bool {
        this._encodingRelocHeader = v;
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
    public function new(?_p:PkgEncoder, ?relocs:Array<RelocEnt>, ?relocMap:stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>, ?data:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_encodingRelocHeader:Bool, ?_k:RelocKind, ?idx:Index) this = new stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder((_p : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>), ([for (i in relocs) i] : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt>), (relocMap : stdgo.GoMap<stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt, stdgo.GoUInt32>), data, _encodingRelocHeader, _k, idx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
