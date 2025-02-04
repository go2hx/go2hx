package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_fileheader_static_extension.FileHeader_static_extension) class FileHeader {
    public var name : stdgo.GoString = "";
    public var comment : stdgo.GoString = "";
    public var nonUTF8 : Bool = false;
    public var creatorVersion : stdgo.GoUInt16 = 0;
    public var readerVersion : stdgo.GoUInt16 = 0;
    public var flags : stdgo.GoUInt16 = 0;
    public var method : stdgo.GoUInt16 = 0;
    public var modified : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var modifiedTime : stdgo.GoUInt16 = 0;
    public var modifiedDate : stdgo.GoUInt16 = 0;
    public var cRC32 : stdgo.GoUInt32 = 0;
    public var compressedSize : stdgo.GoUInt32 = 0;
    public var uncompressedSize : stdgo.GoUInt32 = 0;
    public var compressedSize64 : stdgo.GoUInt64 = 0;
    public var uncompressedSize64 : stdgo.GoUInt64 = 0;
    public var extra : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var externalAttrs : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoString, ?comment:stdgo.GoString, ?nonUTF8:Bool, ?creatorVersion:stdgo.GoUInt16, ?readerVersion:stdgo.GoUInt16, ?flags:stdgo.GoUInt16, ?method:stdgo.GoUInt16, ?modified:stdgo._internal.time.Time_time.Time, ?modifiedTime:stdgo.GoUInt16, ?modifiedDate:stdgo.GoUInt16, ?cRC32:stdgo.GoUInt32, ?compressedSize:stdgo.GoUInt32, ?uncompressedSize:stdgo.GoUInt32, ?compressedSize64:stdgo.GoUInt64, ?uncompressedSize64:stdgo.GoUInt64, ?extra:stdgo.Slice<stdgo.GoUInt8>, ?externalAttrs:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (comment != null) this.comment = comment;
        if (nonUTF8 != null) this.nonUTF8 = nonUTF8;
        if (creatorVersion != null) this.creatorVersion = creatorVersion;
        if (readerVersion != null) this.readerVersion = readerVersion;
        if (flags != null) this.flags = flags;
        if (method != null) this.method = method;
        if (modified != null) this.modified = modified;
        if (modifiedTime != null) this.modifiedTime = modifiedTime;
        if (modifiedDate != null) this.modifiedDate = modifiedDate;
        if (cRC32 != null) this.cRC32 = cRC32;
        if (compressedSize != null) this.compressedSize = compressedSize;
        if (uncompressedSize != null) this.uncompressedSize = uncompressedSize;
        if (compressedSize64 != null) this.compressedSize64 = compressedSize64;
        if (uncompressedSize64 != null) this.uncompressedSize64 = uncompressedSize64;
        if (extra != null) this.extra = extra;
        if (externalAttrs != null) this.externalAttrs = externalAttrs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(
name,
comment,
nonUTF8,
creatorVersion,
readerVersion,
flags,
method,
modified,
modifiedTime,
modifiedDate,
cRC32,
compressedSize,
uncompressedSize,
compressedSize64,
uncompressedSize64,
extra,
externalAttrs);
    }
}
