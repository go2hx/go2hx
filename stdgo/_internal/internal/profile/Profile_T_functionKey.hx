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
@:structInit @:using(stdgo._internal.internal.profile.Profile_T_functionKey_static_extension.T_functionKey_static_extension) class T_functionKey {
    public var _startLine : stdgo.GoInt64 = 0;
    public var _name : stdgo.GoString = "";
    public var _systemName : stdgo.GoString = "";
    public var _fileName : stdgo.GoString = "";
    public function new(?_startLine:stdgo.GoInt64, ?_name:stdgo.GoString, ?_systemName:stdgo.GoString, ?_fileName:stdgo.GoString) {
        if (_startLine != null) this._startLine = _startLine;
        if (_name != null) this._name = _name;
        if (_systemName != null) this._systemName = _systemName;
        if (_fileName != null) this._fileName = _fileName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_functionKey(_startLine, _name, _systemName, _fileName);
    }
}
