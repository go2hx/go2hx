package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_pooledFlateWriter_static_extension.T_pooledFlateWriter_static_extension) class T_pooledFlateWriter {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _fw : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_fw:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>) {
        if (_mu != null) this._mu = _mu;
        if (_fw != null) this._fw = _fw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pooledFlateWriter(_mu, _fw);
    }
}