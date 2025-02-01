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
@:structInit @:using(stdgo._internal.internal.profile.Profile_T_locationKey_static_extension.T_locationKey_static_extension) class T_locationKey {
    public var _addr : stdgo.GoUInt64 = 0;
    public var _mappingID : stdgo.GoUInt64 = 0;
    public var _lines : stdgo.GoString = "";
    public var _isFolded : Bool = false;
    public function new(?_addr:stdgo.GoUInt64, ?_mappingID:stdgo.GoUInt64, ?_lines:stdgo.GoString, ?_isFolded:Bool) {
        if (_addr != null) this._addr = _addr;
        if (_mappingID != null) this._mappingID = _mappingID;
        if (_lines != null) this._lines = _lines;
        if (_isFolded != null) this._isFolded = _isFolded;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_locationKey(_addr, _mappingID, _lines, _isFolded);
    }
}
