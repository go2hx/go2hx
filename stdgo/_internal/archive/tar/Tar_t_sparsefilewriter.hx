package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_t_sparsefilewriter_static_extension.T_sparseFileWriter_static_extension) class T_sparseFileWriter {
    public var _fw : stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter = (null : stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter);
    public var _sp : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas = (new stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas(0, 0) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
    public var _pos : stdgo.GoInt64 = 0;
    public function new(?_fw:stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter, ?_sp:stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas, ?_pos:stdgo.GoInt64) {
        if (_fw != null) this._fw = _fw;
        if (_sp != null) this._sp = _sp;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sparseFileWriter(_fw, _sp, _pos);
    }
}
