package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
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
