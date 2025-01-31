package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function _decUint8Slice(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var __tmp__ = @:check2r _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad %s slice length: %d" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
        };
        if ((_value.cap() < _n : Bool)) {
            var _safe = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoUInt8>)), (_n : stdgo.GoUInt64)) : stdgo.GoInt);
            if ((_safe < (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s slice too big: %d elements" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
            };
            _value.set(stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_value.type(), _safe, _safe)?.__copy__());
            var _ln = (_safe : stdgo.GoInt);
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                if ((_i >= _ln : Bool)) {
                    _value.grow((1 : stdgo.GoInt));
                };
                _ln = _value.cap();
                if ((_ln > _n : Bool)) {
                    _ln = _n;
                };
                _value.setLen(_ln);
                var _sub = (_value.slice(_i, _ln)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var __tmp__ = @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.read(_sub.bytes()), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("error decoding []byte at %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
                _i = _ln;
            };
        } else {
            _value.setLen(_n);
            {
                var __tmp__ = @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.read(_value.bytes()), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("error decoding []byte: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
