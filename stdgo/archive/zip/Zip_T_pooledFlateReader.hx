package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateReader_static_extension) abstract T_pooledFlateReader(stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader) from stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader to stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _fr(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__fr():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._fr;
    function set__fr(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._fr = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_fr:stdgo._internal.io.Io_ReadCloser.ReadCloser) this = new stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader(_mu, _fr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
