package stdgo._internal.encoding.gob;
function _decUint8Slice(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var __tmp__ = _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L369"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L370"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad %s slice length: %d" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L372"
        if ((_value.cap() < _n : Bool)) {
            var _safe = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoUInt8>)), (_n : stdgo.GoUInt64)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L374"
            if ((_safe < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L375"
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s slice too big: %d elements" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L377"
            _value.set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_value.type(), _safe, _safe)?.__copy__());
            var _ln = (_safe : stdgo.GoInt);
            var _i = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L380"
            while ((_i < _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L381"
                if ((_i >= _ln : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L387"
                    _value.grow((1 : stdgo.GoInt));
                };
                _ln = _value.cap();
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L392"
                if ((_ln > _n : Bool)) {
                    _ln = _n;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L395"
                _value.setLen(_ln);
                var _sub = (_value.slice(_i, _ln)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L397"
                {
                    var __tmp__ = (@:checkr _state ?? throw "null pointer dereference")._b.read(_sub.bytes()), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L398"
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("error decoding []byte at %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
                _i = _ln;
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L403"
            _value.setLen(_n);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L404"
            {
                var __tmp__ = (@:checkr _state ?? throw "null pointer dereference")._b.read(_value.bytes()), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L405"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("error decoding []byte: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
