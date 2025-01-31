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
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_T_memMap_static_extension.T_memMap_static_extension) class T_memMap {
    public var _start : stdgo.GoUIntptr = 0;
    public var _end : stdgo.GoUIntptr = 0;
    public var _offset : stdgo.GoUInt64 = 0;
    public var _file : stdgo.GoString = "";
    public var _buildID : stdgo.GoString = "";
    public var _funcs : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
    public var _fake : Bool = false;
    public function new(?_start:stdgo.GoUIntptr, ?_end:stdgo.GoUIntptr, ?_offset:stdgo.GoUInt64, ?_file:stdgo.GoString, ?_buildID:stdgo.GoString, ?_funcs:stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag, ?_fake:Bool) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
        if (_offset != null) this._offset = _offset;
        if (_file != null) this._file = _file;
        if (_buildID != null) this._buildID = _buildID;
        if (_funcs != null) this._funcs = _funcs;
        if (_fake != null) this._fake = _fake;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_memMap(_start, _end, _offset, _file, _buildID, _funcs, _fake);
    }
}
