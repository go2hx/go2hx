package stdgo.hash.crc32;
@:structInit @:using(stdgo.hash.crc32.Crc32.T_digest_static_extension) abstract T_digest(stdgo._internal.hash.crc32.Crc32_T_digest.T_digest) from stdgo._internal.hash.crc32.Crc32_T_digest.T_digest to stdgo._internal.hash.crc32.Crc32_T_digest.T_digest {
    public var _crc(get, set) : std.UInt;
    function get__crc():std.UInt return this._crc;
    function set__crc(v:std.UInt):std.UInt {
        this._crc = (v : stdgo.GoUInt32);
        return v;
    }
    public var _tab(get, set) : Table;
    function get__tab():Table return this._tab;
    function set__tab(v:Table):Table {
        this._tab = (v : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>);
        return v;
    }
    public function new(?_crc:std.UInt, ?_tab:Table) this = new stdgo._internal.hash.crc32.Crc32_T_digest.T_digest((_crc : stdgo.GoUInt32), (_tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
