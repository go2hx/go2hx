package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function _mulBytes(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _z = (new stdgo.Slice<stdgo.GoUInt8>(((_x.length) + (_y.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _k0 = ((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = ((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                var _d = (_y[(_j : stdgo.GoInt)] : stdgo.GoInt);
if (_d != ((0 : stdgo.GoInt))) {
                    var _k = (_k0 : stdgo.GoInt);
                    var _carry = (0 : stdgo.GoInt);
                    {
                        var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            var _t = (((_z[(_k : stdgo.GoInt)] : stdgo.GoInt) + ((_x[(_i : stdgo.GoInt)] : stdgo.GoInt) * _d : stdgo.GoInt) : stdgo.GoInt) + _carry : stdgo.GoInt);
{
                                final __tmp__0 = (_t : stdgo.GoUInt8);
                                final __tmp__1 = (_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt);
                                final __tmp__2 = _z;
                                final __tmp__3 = (_k : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                _carry = __tmp__1;
                            };
_k--;
                            _i--;
                        };
                    };
                    _z[(_k : stdgo.GoInt)] = (_carry : stdgo.GoUInt8);
                };
_k0--;
                _j--;
            };
        };
        var _i = (0 : stdgo.GoInt);
        while (((_i < (_z.length) : Bool) && (_z[(_i : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _i++;
        };
        return (_z.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
    }
