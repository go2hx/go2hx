package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_t_sparsefilereader_static_extension.T_sparseFileReader_static_extension) class T_sparseFileReader {
    public var _fr : stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader = (null : stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader);
    public var _sp : stdgo._internal.archive.tar.Tar_t_sparseholes.T_sparseHoles = (new stdgo._internal.archive.tar.Tar_t_sparseholes.T_sparseHoles(0, 0) : stdgo._internal.archive.tar.Tar_t_sparseholes.T_sparseHoles);
    public var _pos : stdgo.GoInt64 = 0;
    public function new(?_fr:stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader, ?_sp:stdgo._internal.archive.tar.Tar_t_sparseholes.T_sparseHoles, ?_pos:stdgo.GoInt64) {
        if (_fr != null) this._fr = _fr;
        if (_sp != null) this._sp = _sp;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sparseFileReader(_fr, _sp, _pos);
    }
}
