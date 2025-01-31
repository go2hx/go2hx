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
@:structInit @:using(stdgo._internal.internal.profile.Profile_Function_static_extension.Function_static_extension) class Function {
    public var iD : stdgo.GoUInt64 = 0;
    public var name : stdgo.GoString = "";
    public var systemName : stdgo.GoString = "";
    public var filename : stdgo.GoString = "";
    public var startLine : stdgo.GoInt64 = 0;
    public var _nameX : stdgo.GoInt64 = 0;
    public var _systemNameX : stdgo.GoInt64 = 0;
    public var _filenameX : stdgo.GoInt64 = 0;
    public function new(?iD:stdgo.GoUInt64, ?name:stdgo.GoString, ?systemName:stdgo.GoString, ?filename:stdgo.GoString, ?startLine:stdgo.GoInt64, ?_nameX:stdgo.GoInt64, ?_systemNameX:stdgo.GoInt64, ?_filenameX:stdgo.GoInt64) {
        if (iD != null) this.iD = iD;
        if (name != null) this.name = name;
        if (systemName != null) this.systemName = systemName;
        if (filename != null) this.filename = filename;
        if (startLine != null) this.startLine = startLine;
        if (_nameX != null) this._nameX = _nameX;
        if (_systemNameX != null) this._systemNameX = _systemNameX;
        if (_filenameX != null) this._filenameX = _filenameX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Function(iD, name, systemName, filename, startLine, _nameX, _systemNameX, _filenameX);
    }
}
