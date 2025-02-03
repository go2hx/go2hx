package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseFileReader_static_extension) abstract T_sparseFileReader(stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader) from stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader to stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader {
    public var _fr(get, set) : T_fileReader;
    function get__fr():T_fileReader return this._fr;
    function set__fr(v:T_fileReader):T_fileReader {
        this._fr = v;
        return v;
    }
    public var _sp(get, set) : T_sparseHoles;
    function get__sp():T_sparseHoles return this._sp;
    function set__sp(v:T_sparseHoles):T_sparseHoles {
        this._sp = v;
        return v;
    }
    public var _pos(get, set) : haxe.Int64;
    function get__pos():haxe.Int64 return this._pos;
    function set__pos(v:haxe.Int64):haxe.Int64 {
        this._pos = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_fr:T_fileReader, ?_sp:T_sparseHoles, ?_pos:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader(_fr, _sp, (_pos : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
