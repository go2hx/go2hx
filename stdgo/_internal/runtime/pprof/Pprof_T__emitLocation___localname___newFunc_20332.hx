package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
@:structInit class T__emitLocation___localname___newFunc_20332 {
    public var _id : stdgo.GoUInt64 = 0;
    public var _name : stdgo.GoString = "";
    public var _file : stdgo.GoString = "";
    public var _startLine : stdgo.GoInt64 = 0;
    public function new(?_id:stdgo.GoUInt64, ?_name:stdgo.GoString, ?_file:stdgo.GoString, ?_startLine:stdgo.GoInt64) {
        if (_id != null) this._id = _id;
        if (_name != null) this._name = _name;
        if (_file != null) this._file = _file;
        if (_startLine != null) this._startLine = _startLine;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__emitLocation___localname___newFunc_20332(_id, _name, _file, _startLine);
    }
}
