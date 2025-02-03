package stdgo.hash.crc64;
@:structInit @:using(stdgo.hash.crc64.Crc64.T_digest_static_extension) abstract T_digest(stdgo._internal.hash.crc64.Crc64_T_digest.T_digest) from stdgo._internal.hash.crc64.Crc64_T_digest.T_digest to stdgo._internal.hash.crc64.Crc64_T_digest.T_digest {
    public var _crc(get, set) : haxe.UInt64;
    function get__crc():haxe.UInt64 return this._crc;
    function set__crc(v:haxe.UInt64):haxe.UInt64 {
        this._crc = (v : stdgo.GoUInt64);
        return v;
    }
    public var _tab(get, set) : Table;
    function get__tab():Table return this._tab;
    function set__tab(v:Table):Table {
        this._tab = (v : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>);
        return v;
    }
    public function new(?_crc:haxe.UInt64, ?_tab:Table) this = new stdgo._internal.hash.crc64.Crc64_T_digest.T_digest((_crc : stdgo.GoUInt64), (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
