package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseFileWriter_static_extension) abstract T_sparseFileWriter(stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter) from stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter to stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter {
    public var _fw(get, set) : T_fileWriter;
    function get__fw():T_fileWriter return this._fw;
    function set__fw(v:T_fileWriter):T_fileWriter {
        this._fw = v;
        return v;
    }
    public var _sp(get, set) : T_sparseDatas;
    function get__sp():T_sparseDatas return this._sp;
    function set__sp(v:T_sparseDatas):T_sparseDatas {
        this._sp = v;
        return v;
    }
    public var _pos(get, set) : haxe.Int64;
    function get__pos():haxe.Int64 return this._pos;
    function set__pos(v:haxe.Int64):haxe.Int64 {
        this._pos = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_fw:T_fileWriter, ?_sp:T_sparseDatas, ?_pos:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter(_fw, _sp, (_pos : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
