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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Void return @:check32 __self__.mutex.lock();
}
