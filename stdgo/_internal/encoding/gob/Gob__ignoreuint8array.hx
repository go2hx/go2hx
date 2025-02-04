package stdgo._internal.encoding.gob;
function _ignoreUint8Array(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var __tmp__ = @:check2r _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("slice length too large" : stdgo.GoString));
        };
        var _bn = (@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() : stdgo.GoInt);
        if ((_bn < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid slice length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
    }
