package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
class Location_asInterface {
    @:keep
    @:tdfield
    public dynamic function _key():stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey return @:_0 __self__.value._key();
    @:keep
    @:tdfield
    public dynamic function _unmatchedLines(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line> return @:_0 __self__.value._unmatchedLines(_re);
    @:keep
    @:tdfield
    public dynamic function _matchesName(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool return @:_0 __self__.value._matchesName(_re);
    @:keep
    @:tdfield
    public dynamic function _encode(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>):Void @:_0 __self__.value._encode(_b);
    @:keep
    @:tdfield
    public dynamic function _decoder():stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> return @:_0 __self__.value._decoder();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.profile.Profile_LocationPointer.LocationPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
