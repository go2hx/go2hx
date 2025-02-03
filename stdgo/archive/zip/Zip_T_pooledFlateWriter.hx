package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateWriter_static_extension) abstract T_pooledFlateWriter(stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter) from stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter to stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _fw(get, set) : stdgo._internal.compress.flate.Flate_Writer.Writer;
    function get__fw():stdgo._internal.compress.flate.Flate_Writer.Writer return this._fw;
    function set__fw(v:stdgo._internal.compress.flate.Flate_Writer.Writer):stdgo._internal.compress.flate.Flate_Writer.Writer {
        this._fw = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>);
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_fw:stdgo._internal.compress.flate.Flate_Writer.Writer) this = new stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter(_mu, (_fw : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
