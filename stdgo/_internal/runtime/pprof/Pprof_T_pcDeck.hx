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
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_T_pcDeck_static_extension.T_pcDeck_static_extension) class T_pcDeck {
    public var _pcs : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var _frames : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
    public var _symbolizeResult : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
    public var _firstPCFrames : stdgo.GoInt = 0;
    public var _firstPCSymbolizeResult : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
    public function new(?_pcs:stdgo.Slice<stdgo.GoUIntptr>, ?_frames:stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>, ?_symbolizeResult:stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag, ?_firstPCFrames:stdgo.GoInt, ?_firstPCSymbolizeResult:stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag) {
        if (_pcs != null) this._pcs = _pcs;
        if (_frames != null) this._frames = _frames;
        if (_symbolizeResult != null) this._symbolizeResult = _symbolizeResult;
        if (_firstPCFrames != null) this._firstPCFrames = _firstPCFrames;
        if (_firstPCSymbolizeResult != null) this._firstPCSymbolizeResult = _firstPCSymbolizeResult;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pcDeck(_pcs, _frames, _symbolizeResult, _firstPCFrames, _firstPCSymbolizeResult);
    }
}
