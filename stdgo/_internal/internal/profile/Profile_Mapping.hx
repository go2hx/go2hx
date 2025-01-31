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
@:structInit @:using(stdgo._internal.internal.profile.Profile_Mapping_static_extension.Mapping_static_extension) class Mapping {
    public var iD : stdgo.GoUInt64 = 0;
    public var start : stdgo.GoUInt64 = 0;
    public var limit : stdgo.GoUInt64 = 0;
    public var offset : stdgo.GoUInt64 = 0;
    public var file : stdgo.GoString = "";
    public var buildID : stdgo.GoString = "";
    public var hasFunctions : Bool = false;
    public var hasFilenames : Bool = false;
    public var hasLineNumbers : Bool = false;
    public var hasInlineFrames : Bool = false;
    public var _fileX : stdgo.GoInt64 = 0;
    public var _buildIDX : stdgo.GoInt64 = 0;
    public function new(?iD:stdgo.GoUInt64, ?start:stdgo.GoUInt64, ?limit:stdgo.GoUInt64, ?offset:stdgo.GoUInt64, ?file:stdgo.GoString, ?buildID:stdgo.GoString, ?hasFunctions:Bool, ?hasFilenames:Bool, ?hasLineNumbers:Bool, ?hasInlineFrames:Bool, ?_fileX:stdgo.GoInt64, ?_buildIDX:stdgo.GoInt64) {
        if (iD != null) this.iD = iD;
        if (start != null) this.start = start;
        if (limit != null) this.limit = limit;
        if (offset != null) this.offset = offset;
        if (file != null) this.file = file;
        if (buildID != null) this.buildID = buildID;
        if (hasFunctions != null) this.hasFunctions = hasFunctions;
        if (hasFilenames != null) this.hasFilenames = hasFilenames;
        if (hasLineNumbers != null) this.hasLineNumbers = hasLineNumbers;
        if (hasInlineFrames != null) this.hasInlineFrames = hasInlineFrames;
        if (_fileX != null) this._fileX = _fileX;
        if (_buildIDX != null) this._buildIDX = _buildIDX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Mapping(
iD,
start,
limit,
offset,
file,
buildID,
hasFunctions,
hasFilenames,
hasLineNumbers,
hasInlineFrames,
_fileX,
_buildIDX);
    }
}
