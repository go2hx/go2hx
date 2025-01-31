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
function _implementsInterface(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _gobEncDecType:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : Bool; var _1 : stdgo.GoInt8; } {
        var _success = false, _indir = (0 : stdgo.GoInt8);
        if ((_typ.string() : String) == (null.string() : String)) {
            return { _0 : _success, _1 : _indir };
        };
        var _rt = (_typ : stdgo._internal.reflect.Reflect_Type_.Type_);
        while (true) {
            if (_rt.implements_(_gobEncDecType)) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : true, _1 : _indir };
                    _success = __tmp__._0;
                    _indir = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var _p = (_rt : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _indir++;
                    if ((_indir > (100 : stdgo.GoInt8) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : false, _1 : (0 : stdgo.GoInt8) };
                            _success = __tmp__._0;
                            _indir = __tmp__._1;
                            __tmp__;
                        };
                    };
                    _rt = _p.elem();
                    continue;
                };
            };
            break;
        };
        if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            if (stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_typ).implements_(_gobEncDecType)) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : true, _1 : (-1 : stdgo.GoInt8) };
                    _success = __tmp__._0;
                    _indir = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : false, _1 : (0 : stdgo.GoInt8) };
            _success = __tmp__._0;
            _indir = __tmp__._1;
            __tmp__;
        };
    }
