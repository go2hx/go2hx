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
@:keep @:allow(stdgo._internal.math.big.Big.T__struct_57_asInterface) class T__struct_57_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57):Void return @:check32 __self__.mutex.lock();
}
