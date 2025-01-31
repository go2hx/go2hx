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
function _scanSign(_r:stdgo._internal.io.Io_ByteScanner.ByteScanner):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _neg = false, _err = (null : stdgo.Error);
        var _ch:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            {
                var __tmp__ = _r.readByte();
                _ch = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                    _neg = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        {
            final __value__ = _ch;
            if (__value__ == ((45 : stdgo.GoUInt8))) {
                _neg = true;
            } else if (__value__ == ((43 : stdgo.GoUInt8))) {} else {
                _r.unreadByte();
            };
        };
        return { _0 : _neg, _1 : _err };
    }
