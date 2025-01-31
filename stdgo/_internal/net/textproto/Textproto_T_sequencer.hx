package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_T_sequencer_static_extension.T_sequencer_static_extension) class T_sequencer {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _id : stdgo.GoUInt = 0;
    public var _wait : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>> = (null : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_id:stdgo.GoUInt, ?_wait:stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>) {
        if (_mu != null) this._mu = _mu;
        if (_id != null) this._id = _id;
        if (_wait != null) this._wait = _wait;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sequencer(_mu, _id, _wait);
    }
}
