package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
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
@:structInit @:using(stdgo._internal.internal.profile.Profile_T_mapInfo_static_extension.T_mapInfo_static_extension) class T_mapInfo {
    public var _m : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
    public var _offset : stdgo.GoInt64 = 0;
    public function new(?_m:stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>, ?_offset:stdgo.GoInt64) {
        if (_m != null) this._m = _m;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapInfo(_m, _offset);
    }
}
