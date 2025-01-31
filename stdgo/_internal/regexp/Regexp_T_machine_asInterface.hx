package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
class T_machine_asInterface {
    @:keep
    @:tdfield
    public dynamic function _add(_q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _cap:stdgo.Slice<stdgo.GoInt>, _cond:stdgo.Pointer<stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag>, _t:stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread> return @:_0 __self__.value._add(_q, _pc, _pos, _cap, _cond, _t);
    @:keep
    @:tdfield
    public dynamic function _step(_runq:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>, _nextq:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>, _pos:stdgo.GoInt, _nextPos:stdgo.GoInt, _c:stdgo.GoInt32, _nextCond:stdgo.Pointer<stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag>):Void @:_0 __self__.value._step(_runq, _nextq, _pos, _nextPos, _c, _nextCond);
    @:keep
    @:tdfield
    public dynamic function _clear(_q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>):Void @:_0 __self__.value._clear(_q);
    @:keep
    @:tdfield
    public dynamic function _match(_i:stdgo._internal.regexp.Regexp_T_input.T_input, _pos:stdgo.GoInt):Bool return @:_0 __self__.value._match(_i, _pos);
    @:keep
    @:tdfield
    public dynamic function _alloc(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread> return @:_0 __self__.value._alloc(_i);
    @:keep
    @:tdfield
    public dynamic function _init(_ncap:stdgo.GoInt):Void @:_0 __self__.value._init(_ncap);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.Regexp_T_machinePointer.T_machinePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
