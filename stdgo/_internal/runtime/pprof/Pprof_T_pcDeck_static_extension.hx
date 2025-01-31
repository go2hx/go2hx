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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_pcDeck_asInterface) class T_pcDeck_static_extension {
    @:keep
    @:tdfield
    static public function _tryAdd( _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck>, _pc:stdgo.GoUIntptr, _frames:stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>, _symbolizeResult:stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck> = _d;
        var _success = false;
        {
            var _existing = ((@:checkr _d ?? throw "null pointer dereference")._frames.length : stdgo.GoInt);
            if ((_existing > (0 : stdgo.GoInt) : Bool)) {
                var _newFrame = (_frames[(0 : stdgo.GoInt)] : stdgo._internal.runtime.Runtime_Frame.Frame);
                var _last = ((@:checkr _d ?? throw "null pointer dereference")._frames[(_existing - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.runtime.Runtime_Frame.Frame);
                if ((_last.func != null && ((_last.func : Dynamic).__nil__ == null || !(_last.func : Dynamic).__nil__))) {
                    return _success = false;
                };
                if (((_last.entry == (0 : stdgo.GoUIntptr)) || (_newFrame.entry == (0 : stdgo.GoUIntptr)) : Bool)) {
                    return _success = false;
                };
                if (_last.entry != (_newFrame.entry)) {
                    return _success = false;
                };
                if (_last.function_ == (_newFrame.function_)) {
                    return _success = false;
                };
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._pcs = ((@:checkr _d ?? throw "null pointer dereference")._pcs.__append__(_pc));
        (@:checkr _d ?? throw "null pointer dereference")._frames = ((@:checkr _d ?? throw "null pointer dereference")._frames.__append__(...(_frames : Array<stdgo._internal.runtime.Runtime_Frame.Frame>)));
        (@:checkr _d ?? throw "null pointer dereference")._symbolizeResult = ((@:checkr _d ?? throw "null pointer dereference")._symbolizeResult | (_symbolizeResult) : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
        if (((@:checkr _d ?? throw "null pointer dereference")._pcs.length) == ((1 : stdgo.GoInt))) {
            (@:checkr _d ?? throw "null pointer dereference")._firstPCFrames = ((@:checkr _d ?? throw "null pointer dereference")._frames.length);
            (@:checkr _d ?? throw "null pointer dereference")._firstPCSymbolizeResult = _symbolizeResult;
        };
        return _success = true;
    }
    @:keep
    @:tdfield
    static public function _reset( _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck> = _d;
        (@:checkr _d ?? throw "null pointer dereference")._pcs = ((@:checkr _d ?? throw "null pointer dereference")._pcs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
        (@:checkr _d ?? throw "null pointer dereference")._frames = ((@:checkr _d ?? throw "null pointer dereference")._frames.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        (@:checkr _d ?? throw "null pointer dereference")._symbolizeResult = (0 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
        (@:checkr _d ?? throw "null pointer dereference")._firstPCFrames = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._firstPCSymbolizeResult = (0 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
    }
}
