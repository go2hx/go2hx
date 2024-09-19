package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_pooledFlateReader_static_extension.T_pooledFlateReader_static_extension) class T_pooledFlateReader {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _fr : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_fr:stdgo._internal.io.Io_ReadCloser.ReadCloser) {
        if (_mu != null) this._mu = _mu;
        if (_fr != null) this._fr = _fr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pooledFlateReader(_mu, _fr);
    }
}