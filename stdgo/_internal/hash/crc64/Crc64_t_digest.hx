package stdgo._internal.hash.crc64;
@:structInit @:using(stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension) class T_digest {
    public var _crc : stdgo.GoUInt64 = 0;
    public var _tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table> = (null : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
    public function new(?_crc:stdgo.GoUInt64, ?_tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>) {
        if (_crc != null) this._crc = _crc;
        if (_tab != null) this._tab = _tab;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_crc, _tab);
    }
}
