package stdgo.archive.zip;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errFormat : stdgo.Error = stdgo.errors.Errors.new_(((("zip: not a valid zip file" : GoString))));
var errAlgorithm : stdgo.Error = stdgo.errors.Errors.new_(((("zip: unsupported compression algorithm" : GoString))));
var errChecksum : stdgo.Error = stdgo.errors.Errors.new_(((("zip: checksum error" : GoString))));
var _dotFile : Ref<T_fileListEntry> = (({ _name : ((("./" : GoString))), _isDir : true, _file : ((null : Ref<File>)) } : T_fileListEntry));
var _errLongName : stdgo.Error = stdgo.errors.Errors.new_(((("zip: FileHeader.Name too long" : GoString))));
var _errLongExtra : stdgo.Error = stdgo.errors.Errors.new_(((("zip: FileHeader.Extra too long" : GoString))));
var _tests : Slice<ZipTest> = ((new Slice<ZipTest>(
((({ name : ((("test.zip" : GoString))), comment : ((("This is a zipfile comment." : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((((("This is a test text file.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((((("This is a test text file.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("gophercolor16x16.png" : GoString))), file : ((("gophercolor16x16.png" : GoString))), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), content : ((null : Slice<GoUInt8>)), size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("gophercolor16x16.png" : GoString))), file : ((("gophercolor16x16.png" : GoString))), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), content : ((null : Slice<GoUInt8>)), size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("test.zip" : GoString))), comment : ((("This is a zipfile comment." : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((((("This is a test text file.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((((("This is a test text file.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("gophercolor16x16.png" : GoString))), file : ((("gophercolor16x16.png" : GoString))), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), content : ((null : Slice<GoUInt8>)), size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("gophercolor16x16.png" : GoString))), file : ((("gophercolor16x16.png" : GoString))), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), content : ((null : Slice<GoUInt8>)), size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("test-trailing-junk.zip" : GoString))), comment : ((("This is a zipfile comment." : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((((("This is a test text file.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((((("This is a test text file.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("gophercolor16x16.png" : GoString))), file : ((("gophercolor16x16.png" : GoString))), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), content : ((null : Slice<GoUInt8>)), size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("gophercolor16x16.png" : GoString))), file : ((("gophercolor16x16.png" : GoString))), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), content : ((null : Slice<GoUInt8>)), size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("test-trailing-junk.zip" : GoString))), comment : ((("This is a zipfile comment." : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((((("This is a test text file.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((((("This is a test text file.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((12 : GoInt)), ((12 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("gophercolor16x16.png" : GoString))), file : ((("gophercolor16x16.png" : GoString))), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), content : ((null : Slice<GoUInt8>)), size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("gophercolor16x16.png" : GoString))), file : ((("gophercolor16x16.png" : GoString))), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((9 : GoInt)), ((5 : GoInt)), ((15 : GoInt)), ((52 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), _timeZone((("36000000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), content : ((null : Slice<GoUInt8>)), size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("r.zip" : GoString))), source : _returnRecursiveZip, file : ((new Slice<ZipTestFile>(((({ name : ((("r/r.zip" : GoString))), content : _rZipBytes(), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((24 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((24 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("r/r.zip" : GoString))), content : _rZipBytes(), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((24 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((24 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("r.zip" : GoString))), source : _returnRecursiveZip, file : ((new Slice<ZipTestFile>(((({ name : ((("r/r.zip" : GoString))), content : _rZipBytes(), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((24 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((24 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("r/r.zip" : GoString))), content : _rZipBytes(), modified : (stdgo.time.Time.date(((2010 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((24 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2010 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((24 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("symlink.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("symlink" : GoString))), content : ((((("../target" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((56 : GoInt)), ((48 : GoInt)), ((0 : GoInt)), _timeZone((("-7200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((56 : GoInt)), ((48 : GoInt)), ((0 : GoInt)), _timeZone((("-7200000000000" : GoInt64)))).__copy__()), mode : ((134218239 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("symlink" : GoString))), content : ((((("../target" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((56 : GoInt)), ((48 : GoInt)), ((0 : GoInt)), _timeZone((("-7200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((56 : GoInt)), ((48 : GoInt)), ((0 : GoInt)), _timeZone((("-7200000000000" : GoInt64)))).__copy__()), mode : ((134218239 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("symlink.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("symlink" : GoString))), content : ((((("../target" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((56 : GoInt)), ((48 : GoInt)), ((0 : GoInt)), _timeZone((("-7200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((56 : GoInt)), ((48 : GoInt)), ((0 : GoInt)), _timeZone((("-7200000000000" : GoInt64)))).__copy__()), mode : ((134218239 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("symlink" : GoString))), content : ((((("../target" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((56 : GoInt)), ((48 : GoInt)), ((0 : GoInt)), _timeZone((("-7200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((56 : GoInt)), ((48 : GoInt)), ((0 : GoInt)), _timeZone((("-7200000000000" : GoInt64)))).__copy__()), mode : ((134218239 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("readme.zip" : GoString))), source : null, comment : "", file : ((null : Slice<ZipTestFile>)), obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("readme.zip" : GoString))), source : null, comment : "", file : ((null : Slice<ZipTestFile>)), obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("readme.notzip" : GoString))), error : errFormat, source : null, comment : "", file : ((null : Slice<ZipTestFile>)), obscured : false } : ZipTest)) == null ? null : (({ name : ((("readme.notzip" : GoString))), error : errFormat, source : null, comment : "", file : ((null : Slice<ZipTestFile>)), obscured : false } : ZipTest)).__copy__()),
((({ name : ((("dd.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("filename" : GoString))), content : ((((("This is a test textfile.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((2 : GoInt)), ((2 : GoInt)), ((13 : GoInt)), ((6 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((2 : GoInt)), ((2 : GoInt)), ((13 : GoInt)), ((6 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("filename" : GoString))), content : ((((("This is a test textfile.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((2 : GoInt)), ((2 : GoInt)), ((13 : GoInt)), ((6 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((2 : GoInt)), ((2 : GoInt)), ((13 : GoInt)), ((6 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("dd.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("filename" : GoString))), content : ((((("This is a test textfile.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((2 : GoInt)), ((2 : GoInt)), ((13 : GoInt)), ((6 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((2 : GoInt)), ((2 : GoInt)), ((13 : GoInt)), ((6 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("filename" : GoString))), content : ((((("This is a test textfile.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((2 : GoInt)), ((2 : GoInt)), ((13 : GoInt)), ((6 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((2 : GoInt)), ((2 : GoInt)), ((13 : GoInt)), ((6 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("winxp.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("hello" : GoString))), content : ((((("world \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("hello" : GoString))), content : ((((("world \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("dir/bar" : GoString))), content : ((((("foo \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("dir/bar" : GoString))), content : ((((("foo \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("dir/empty/" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : (("2147484159" : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("dir/empty/" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : (("2147484159" : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("readonly" : GoString))), content : ((((("important \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((292 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("readonly" : GoString))), content : ((((("important \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((292 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("winxp.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("hello" : GoString))), content : ((((("world \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("hello" : GoString))), content : ((((("world \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("dir/bar" : GoString))), content : ((((("foo \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("dir/bar" : GoString))), content : ((((("foo \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("dir/empty/" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : (("2147484159" : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("dir/empty/" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : (("2147484159" : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("readonly" : GoString))), content : ((((("important \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((292 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("readonly" : GoString))), content : ((((("important \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((292 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("unix.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("hello" : GoString))), content : ((((("world \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("hello" : GoString))), content : ((((("world \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("dir/bar" : GoString))), content : ((((("foo \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("dir/bar" : GoString))), content : ((((("foo \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("dir/empty/" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : (("2147484159" : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("dir/empty/" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : (("2147484159" : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("readonly" : GoString))), content : ((((("important \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((292 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("readonly" : GoString))), content : ((((("important \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((292 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("unix.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("hello" : GoString))), content : ((((("world \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("hello" : GoString))), content : ((((("world \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("dir/bar" : GoString))), content : ((((("foo \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("dir/bar" : GoString))), content : ((((("foo \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("dir/empty/" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : (("2147484159" : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("dir/empty/" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((8 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : (("2147484159" : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("readonly" : GoString))), content : ((((("important \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((292 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("readonly" : GoString))), content : ((((("important \r\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))) == null ? null : stdgo.time.Time.date(((2011 : GoInt)), ((12 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), _timeZone(((0 : GoInt64)))).__copy__()), mode : ((292 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("go-no-datadesc-sig.zip.base64" : GoString))), obscured : true, file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("go-no-datadesc-sig.zip.base64" : GoString))), obscured : true, file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("go-with-datadesc-sig.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("go-with-datadesc-sig.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("Bad-CRC32-in-data-descriptor" : GoString))), source : _returnCorruptCRC32Zip, file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), contentErr : errChecksum, nonUTF8 : false, modTime : new stdgo.time.Time.Time(), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), contentErr : errChecksum, nonUTF8 : false, modTime : new stdgo.time.Time.Time(), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("Bad-CRC32-in-data-descriptor" : GoString))), source : _returnCorruptCRC32Zip, file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), contentErr : errChecksum, nonUTF8 : false, modTime : new stdgo.time.Time.Time(), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), contentErr : errChecksum, nonUTF8 : false, modTime : new stdgo.time.Time.Time(), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("crc32-not-streamed.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("crc32-not-streamed.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("crc32-not-streamed.zip" : GoString))), source : _returnCorruptNotStreamedZip, file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), contentErr : errChecksum, nonUTF8 : false, modTime : new stdgo.time.Time.Time(), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), contentErr : errChecksum, nonUTF8 : false, modTime : new stdgo.time.Time.Time(), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("crc32-not-streamed.zip" : GoString))), source : _returnCorruptNotStreamedZip, file : ((new Slice<ZipTestFile>(((({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), contentErr : errChecksum, nonUTF8 : false, modTime : new stdgo.time.Time.Time(), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("foo.txt" : GoString))), content : ((((("foo\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), contentErr : errChecksum, nonUTF8 : false, modTime : new stdgo.time.Time.Time(), file : "", size : 0 } : ZipTestFile)).__copy__()), ((({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("bar.txt" : GoString))), content : ((((("bar\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((3 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((59 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("zip64.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("README" : GoString))), content : ((((("This small file is in ZIP64 format.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("README" : GoString))), content : ((((("This small file is in ZIP64 format.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("zip64.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("README" : GoString))), content : ((((("This small file is in ZIP64 format.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("README" : GoString))), content : ((((("This small file is in ZIP64 format.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("zip64-2.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("README" : GoString))), content : ((((("This small file is in ZIP64 format.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), _timeZone((("-14400000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), _timeZone((("-14400000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("README" : GoString))), content : ((((("This small file is in ZIP64 format.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), _timeZone((("-14400000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), _timeZone((("-14400000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("zip64-2.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("README" : GoString))), content : ((((("This small file is in ZIP64 format.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), _timeZone((("-14400000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), _timeZone((("-14400000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("README" : GoString))), content : ((((("This small file is in ZIP64 format.\n" : GoString))) : Slice<GoByte>)), modified : (stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), _timeZone((("-14400000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2012 : GoInt)), ((8 : GoInt)), ((10 : GoInt)), ((14 : GoInt)), ((33 : GoInt)), ((32 : GoInt)), ((0 : GoInt)), _timeZone((("-14400000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("big.zip" : GoString))), source : _returnBigZipBytes, file : ((new Slice<ZipTestFile>(((({ name : ((("big.file" : GoString))), content : ((null : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("big.file" : GoString))), content : ((null : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("big.zip" : GoString))), source : _returnBigZipBytes, file : ((new Slice<ZipTestFile>(((({ name : ((("big.file" : GoString))), content : ((null : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("big.file" : GoString))), content : ((null : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1979 : GoInt)), ((11 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("utf8-7zip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("utf8-7zip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("utf8-infozip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((420 : GoUInt32)), nonUTF8 : true, modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((420 : GoUInt32)), nonUTF8 : true, modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("utf8-infozip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((420 : GoUInt32)), nonUTF8 : true, modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((420 : GoUInt32)), nonUTF8 : true, modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("utf8-osx.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((420 : GoUInt32)), nonUTF8 : true, modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((420 : GoUInt32)), nonUTF8 : true, modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("utf8-osx.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((420 : GoUInt32)), nonUTF8 : true, modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((420 : GoUInt32)), nonUTF8 : true, modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((0 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("utf8-winrar.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("utf8-winrar.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867862500 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("utf8-winzip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867000000 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867000000 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867000000 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867000000 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("utf8-winzip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867000000 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867000000 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("世界" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867000000 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((27 : GoInt)), ((867000000 : GoInt)), _timeZone((("-28800000000000" : GoInt64)))).__copy__()), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("time-7zip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("time-7zip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("time-infozip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("time-infozip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("time-osx.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("time-osx.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((420 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("time-win7.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("time-win7.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("time-winrar.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("time-winrar.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244817900 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("time-winzip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244000000 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244000000 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244000000 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244000000 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("time-winzip.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244000000 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244000000 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244000000 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((244000000 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("time-go.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("time-go.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)) == null ? null : (({ name : ((("test.txt" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), size : (("4294967295" : GoUInt64)), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), mode : ((438 : GoUInt32)), nonUTF8 : false, modTime : new stdgo.time.Time.Time(), contentErr : ((null : stdgo.Error)), file : "" } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__()),
((({ name : ((("time-22738.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("file" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _timeZone((("-18000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _timeZone((("-18000000000000" : GoInt64)))).__copy__()), modTime : (stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), nonUTF8 : false, contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("file" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _timeZone((("-18000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _timeZone((("-18000000000000" : GoInt64)))).__copy__()), modTime : (stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), nonUTF8 : false, contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)) == null ? null : (({ name : ((("time-22738.zip" : GoString))), file : ((new Slice<ZipTestFile>(((({ name : ((("file" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _timeZone((("-18000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _timeZone((("-18000000000000" : GoInt64)))).__copy__()), modTime : (stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), nonUTF8 : false, contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)) == null ? null : (({ name : ((("file" : GoString))), content : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), mode : ((438 : GoUInt32)), modified : (stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _timeZone((("-18000000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _timeZone((("-18000000000000" : GoInt64)))).__copy__()), modTime : (stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1999 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((19 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__()), nonUTF8 : false, contentErr : ((null : stdgo.Error)), file : "", size : 0 } : ZipTestFile)).__copy__())) : Slice<ZipTestFile>)), source : null, comment : "", obscured : false, error : ((null : stdgo.Error)) } : ZipTest)).__copy__())) : Slice<ZipTest>));
var _writeTests : Slice<WriteTest> = ((new Slice<WriteTest>(((({ name : ((("foo" : GoString))), data : ((((("Rabbits, guinea pigs, gophers, marsupial rats, and quolls." : GoString))) : Slice<GoByte>)), method : ((0 : GoUInt16)), mode : ((438 : GoUInt32)) } : WriteTest)) == null ? null : (({ name : ((("foo" : GoString))), data : ((((("Rabbits, guinea pigs, gophers, marsupial rats, and quolls." : GoString))) : Slice<GoByte>)), method : ((0 : GoUInt16)), mode : ((438 : GoUInt32)) } : WriteTest)).__copy__()), ((({ name : ((("bar" : GoString))), data : ((null : Slice<GoUInt8>)), method : ((8 : GoUInt16)), mode : ((420 : GoUInt32)) } : WriteTest)) == null ? null : (({ name : ((("bar" : GoString))), data : ((null : Slice<GoUInt8>)), method : ((8 : GoUInt16)), mode : ((420 : GoUInt32)) } : WriteTest)).__copy__()), ((({ name : ((("setuid" : GoString))), data : ((((("setuid file" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((8389101 : GoUInt32)) } : WriteTest)) == null ? null : (({ name : ((("setuid" : GoString))), data : ((((("setuid file" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((8389101 : GoUInt32)) } : WriteTest)).__copy__()), ((({ name : ((("setgid" : GoString))), data : ((((("setgid file" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((4194797 : GoUInt32)) } : WriteTest)) == null ? null : (({ name : ((("setgid" : GoString))), data : ((((("setgid file" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((4194797 : GoUInt32)) } : WriteTest)).__copy__()), ((({ name : ((("symlink" : GoString))), data : ((((("../link/target" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((134218221 : GoUInt32)) } : WriteTest)) == null ? null : (({ name : ((("symlink" : GoString))), data : ((((("../link/target" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((134218221 : GoUInt32)) } : WriteTest)).__copy__()), ((({ name : ((("device" : GoString))), data : ((((("device file" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((67109357 : GoUInt32)) } : WriteTest)) == null ? null : (({ name : ((("device" : GoString))), data : ((((("device file" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((67109357 : GoUInt32)) } : WriteTest)).__copy__()), ((({ name : ((("chardevice" : GoString))), data : ((((("char device file" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((69206509 : GoUInt32)) } : WriteTest)) == null ? null : (({ name : ((("chardevice" : GoString))), data : ((((("char device file" : GoString))) : Slice<GoByte>)), method : ((8 : GoUInt16)), mode : ((69206509 : GoUInt32)) } : WriteTest)).__copy__())) : Slice<WriteTest>));
var _errDiscardedBytes : stdgo.Error = stdgo.errors.Errors.new_(((("ReadAt of discarded bytes" : GoString))));
var _flateWriterPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _flateReaderPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _compressors : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _decompressors : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
typedef T_fileInfoDirEntry = StructType & {
    > stdgo.io.fs.Fs.FileInfo,
    > stdgo.io.fs.Fs.DirEntry,
};
typedef T_sizedReaderAt = StructType & {
    > stdgo.io.Io.ReaderAt,
    public function size():GoInt64;
};
@:structInit @:using(stdgo.archive.zip.Zip.Reader_static_extension) class Reader {
    @:keep
    public function _openReadDir(_dir:GoString):Slice<T_fileListEntry> {
        var _r = this;
        _r;
        var _files:Slice<T_fileListEntry> = _r._fileList;
        var _i:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_i] : new T_fileListEntry())._name), _idir:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
            return _idir >= _dir;
        });
        var _j:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_j:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_j] : new T_fileListEntry())._name), _jdir:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
            return _jdir > _dir;
        });
        return ((_files.__slice__(_i, _j) : Slice<T_fileListEntry>));
    }
    @:keep
    public function _openLookup(_name:GoString):T_fileListEntry {
        var _r = this;
        _r;
        if (_name == ((("." : GoString)))) {
            return _dotFile;
        };
        var __tmp__ = _split(_name), _dir:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
        var _files:Slice<T_fileListEntry> = _r._fileList;
        var _i:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_i] : new T_fileListEntry())._name), _idir:GoString = __tmp__._0, _ielem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
            return (_idir > _dir) || ((_idir == _dir) && (_ielem >= _elem));
        });
        if (_i < (_files != null ? _files.length : ((0 : GoInt)))) {
            var _fname:GoString = (_files != null ? _files[_i] : new T_fileListEntry())._name;
            if ((_fname == _name) || ((((_fname != null ? _fname.length : ((0 : GoInt))) == ((_name != null ? _name.length : ((0 : GoInt))) + ((1 : GoInt)))) && ((_fname != null ? _fname[(_name != null ? _name.length : ((0 : GoInt)))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) && (((_fname.__slice__(0, (_name != null ? _name.length : ((0 : GoInt)))) : GoString)) == _name))) {
                return (_files != null ? _files[_i] : new T_fileListEntry());
            };
        };
        return null;
    }
    @:keep
    public function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } {
        var _r = this;
        _r;
        _r._initFileList();
        if (!stdgo.io.fs.Fs.validPath(_name)) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)) };
        };
        var _e:Ref<T_fileListEntry> = _r._openLookup(_name);
        if (_e == null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)) };
        };
        if (_e._isDir) {
            return { _0 : ((new T_openDir(_e, _r._openReadDir(_name), ((0 : GoInt))) : T_openDir)), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _e._file.open(), _rc:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : _err };
        };
        return { _0 : ((((_rc.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.File)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _initFileList():Void {
        var _r = this;
        _r;
        _r._fileListOnce.do_(function():Void {
            var _dirs:GoMap<GoString, Bool> = new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
            var _knownDirs:GoMap<GoString, Bool> = new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
            for (_0 => _file in _r.file) {
                var _isDir:Bool = ((_file.name != null ? _file.name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_file.name != null ? _file.name[(_file.name != null ? _file.name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)));
                var _name:GoString = _toValidName(_file.name);
                if (_name == ((("" : GoString)))) {
                    continue;
                };
                {
                    var _dir:GoString = stdgo.path.Path.dir(_name);
                    Go.cfor(_dir != ((("." : GoString))), _dir = stdgo.path.Path.dir(_dir), {
                        if (_dirs != null) _dirs[_dir] = true;
                    });
                };
                var _entry:T_fileListEntry = ((({ _name : _name, _file : _file, _isDir : _isDir } : T_fileListEntry)) == null ? null : (({ _name : _name, _file : _file, _isDir : _isDir } : T_fileListEntry)).__copy__());
                _r._fileList = (_r._fileList != null ? _r._fileList.__append__((_entry == null ? null : _entry.__copy__())) : new Slice<T_fileListEntry>((_entry == null ? null : _entry.__copy__())));
                if (_isDir) {
                    if (_knownDirs != null) _knownDirs[_name] = true;
                };
            };
            for (_dir => _ in _dirs) {
                if (!(_knownDirs != null ? _knownDirs[_dir] : false)) {
                    var _entry:T_fileListEntry = ((({ _name : _dir, _file : null, _isDir : true } : T_fileListEntry)) == null ? null : (({ _name : _dir, _file : null, _isDir : true } : T_fileListEntry)).__copy__());
                    _r._fileList = (_r._fileList != null ? _r._fileList.__append__((_entry == null ? null : _entry.__copy__())) : new Slice<T_fileListEntry>((_entry == null ? null : _entry.__copy__())));
                };
            };
            stdgo.sort.Sort.slice(Go.toInterface(_r._fileList), function(_i:GoInt, _j:GoInt):Bool {
                return _fileEntryLess((_r._fileList != null ? _r._fileList[_i] : new T_fileListEntry())._name, (_r._fileList != null ? _r._fileList[_j] : new T_fileListEntry())._name);
            });
        });
    }
    @:keep
    public function _decompressor(_method:GoUInt16):Decompressor {
        var _z = this;
        _z;
        var _dcomp:Decompressor = (_z._decompressors != null ? _z._decompressors[_method] : ((null : Decompressor)));
        if (_dcomp == null) {
            _dcomp = stdgo.archive.zip.Zip._decompressor(_method);
        };
        return _dcomp;
    }
    @:keep
    public function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor):Void {
        var _z = this;
        _z;
        if (_z._decompressors == null) {
            _z._decompressors = new Map<Int, Decompressor>();
        };
        if (_z._decompressors != null) _z._decompressors[_method] = _dcomp;
    }
    @:keep
    public function _init(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):Error {
        var _z = this;
        _z;
        var __tmp__ = _readDirectoryEnd(_r, _size), _end:Ref<T_directoryEnd> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _z._r = _r;
        if ((_end._directorySize < ((_size : GoUInt64))) && (((((_size : GoUInt64)) - _end._directorySize) / ((30 : GoUInt64))) >= _end._directoryRecords)) {
            _z.file = new Slice<Ref<File>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Ref<File>))]).__setCap__(((_end._directoryRecords : GoInt)).toBasic());
        };
        _z.comment = _end._comment;
        var _rs:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)), _size);
        {
            {
                var __tmp__ = _rs.seek(((_end._directoryOffset : GoInt64)), ((0 : GoInt)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _buf:Ref<stdgo.bufio.Bufio.Reader> = stdgo.bufio.Bufio.newReader(_rs);
        while (true) {
            var _f:Ref<File> = (({ _zip : _z, _zipr : _r, fileHeader : new FileHeader(), _headerOffset : 0, _zip64 : false, _descErr : ((null : stdgo.Error)) } : File));
            _err = _readDirectoryHeader(_f, _buf);
            if ((_err == errFormat) || (_err == stdgo.io.Io.errUnexpectedEOF)) {
                break;
            };
            if (_err != null) {
                return _err;
            };
            _z.file = (_z.file != null ? _z.file.__append__(_f) : new Slice<Ref<File>>(_f));
        };
        if ((((_z.file != null ? _z.file.length : ((0 : GoInt))) : GoUInt16)) != ((_end._directoryRecords : GoUInt16))) {
            return _err;
        };
        return ((null : stdgo.Error));
    }
    public var _r : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var file : Slice<Ref<File>> = ((null : Slice<Ref<File>>));
    public var comment : GoString = (("" : GoString));
    public var _decompressors : GoMap<GoUInt16, Decompressor> = ((null : GoMap<GoUInt16, Decompressor>));
    public var _fileListOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public var _fileList : Slice<T_fileListEntry> = ((null : Slice<T_fileListEntry>));
    public function new(?_r:stdgo.io.Io.ReaderAt, ?file:Slice<Ref<File>>, ?comment:GoString, ?_decompressors:GoMap<GoUInt16, Decompressor>, ?_fileListOnce:stdgo.sync.Sync.Once, ?_fileList:Slice<T_fileListEntry>) {
        if (_r != null) this._r = _r;
        if (file != null) this.file = file;
        if (comment != null) this.comment = comment;
        if (_decompressors != null) this._decompressors = _decompressors;
        if (_fileListOnce != null) this._fileListOnce = _fileListOnce;
        if (_fileList != null) this._fileList = _fileList;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, file, comment, _decompressors, _fileListOnce, _fileList);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.ReadCloser_static_extension) class ReadCloser {
    @:keep
    public function close():Error {
        var _rc = this;
        _rc;
        return _rc._f.close();
    }
    public var _f : Ref<stdgo.os.Os.File> = ((null : Ref<stdgo.os.Os.File>));
    @:embedded
    public var reader : Reader = new Reader();
    public function new(?_f:Ref<stdgo.os.Os.File>, ?reader:Reader) {
        if (_f != null) this._f = _f;
        if (reader != null) this.reader = reader;
    }
    public function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return reader.open(_name);
    public function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor) reader.registerDecompressor(_method, _dcomp);
    public function _decompressor(_method:GoUInt16):Decompressor return reader._decompressor(_method);
    public function _init(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):stdgo.Error return reader._init(_r, _size);
    public function _initFileList() reader._initFileList();
    public function _openLookup(_name:GoString):Ref<T_fileListEntry> return reader._openLookup(_name);
    public function _openReadDir(_dir:GoString):Slice<T_fileListEntry> return reader._openReadDir(_dir);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ReadCloser(_f, reader);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.File_static_extension) class File {
    @:keep
    public function _findBodyOffset():{ var _0 : GoInt64; var _1 : Error; } {
        var _f = this;
        _f;
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        {
            var __tmp__ = _f._zipr.readAt(((_buf.__slice__(0) : Slice<GoUInt8>)), _f._headerOffset), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoInt64)), _1 : _err };
            };
        };
        var _b:T_readBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf)).__copy__());
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((67324752 : GoUInt32))) {
                return { _0 : ((0 : GoInt64)), _1 : errFormat };
            };
        };
        _b = (((_b.__slice__(((22 : GoInt))) : T_readBuf)) == null ? null : ((_b.__slice__(((22 : GoInt))) : T_readBuf)).__copy__());
        var _filenameLen:GoInt = ((_b._uint16() : GoInt));
        var _extraLen:GoInt = ((_b._uint16() : GoInt));
        return { _0 : ((((((30 : GoInt)) + _filenameLen) + _extraLen) : GoInt64)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function openRaw():{ var _0 : stdgo.io.Io.Reader; var _1 : Error; } {
        var _f = this;
        _f;
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.Reader)), _1 : _err };
        };
        var _r:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f._zipr, _f._headerOffset + _bodyOffset, ((_f.compressedSize64 : GoInt64)));
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function open():{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        var _f = this;
        _f;
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : _err };
        };
        var _size:GoInt64 = ((_f.compressedSize64 : GoInt64));
        var _r:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f._zipr, _f._headerOffset + _bodyOffset, _size);
        var _dcomp:Decompressor = _f._zip._decompressor(_f.method);
        if (_dcomp == null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : errAlgorithm };
        };
        var _rc:stdgo.io.Io.ReadCloser = _dcomp(_r);
        var _desr:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
        if (_f._hasDataDescriptor()) {
            _desr = stdgo.io.Io.newSectionReader(_f._zipr, (_f._headerOffset + _bodyOffset) + _size, ((16 : GoInt64)));
        };
        _rc = (({ _rc : _rc, _hash : stdgo.hash.crc32.Crc32.newIEEE(), _f : _f, _desr : _desr, _nread : 0, _err : ((null : stdgo.Error)) } : T_checksumReader));
        return { _0 : _rc, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function dataOffset():{ var _0 : GoInt64; var _1 : Error; } {
        var _f = this;
        _f;
        var _offset:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        return { _0 : _f._headerOffset + _bodyOffset, _1 : ((null : stdgo.Error)) };
    }
    @:embedded
    public var fileHeader : FileHeader = new FileHeader();
    public var _zip : Ref<Reader> = ((null : Ref<Reader>));
    public var _zipr : stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt));
    public var _headerOffset : GoInt64 = ((0 : GoInt64));
    public var _zip64 : Bool = false;
    public var _descErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?fileHeader:FileHeader, ?_zip:Ref<Reader>, ?_zipr:stdgo.io.Io.ReaderAt, ?_headerOffset:GoInt64, ?_zip64:Bool, ?_descErr:stdgo.Error) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (_zip != null) this._zip = _zip;
        if (_zipr != null) this._zipr = _zipr;
        if (_headerOffset != null) this._headerOffset = _headerOffset;
        if (_zip64 != null) this._zip64 = _zip64;
        if (_descErr != null) this._descErr = _descErr;
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return fileHeader.fileInfo();
    public function modTime():stdgo.time.Time.Time return fileHeader.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return fileHeader.mode();
    public function setModTime(_t:stdgo.time.Time.Time) fileHeader.setModTime(_t);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) fileHeader.setMode(_mode);
    public function _hasDataDescriptor():Bool return fileHeader._hasDataDescriptor();
    public function _isZip64():Bool return fileHeader._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, _zip, _zipr, _headerOffset, _zip64, _descErr);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_checksumReader_static_extension) class T_checksumReader {
    @:keep
    public function close():Error {
        var _r = this;
        _r;
        return _r._rc.close();
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _r._err };
        };
        {
            var __tmp__ = _r._rc.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._hash.write(((_b.__slice__(0, _n) : Slice<GoUInt8>)));
        _r._nread = _r._nread + (((_n : GoUInt64)));
        if (_err == null) {
            return { _0 : _n, _1 : _err };
        };
        if (_err == stdgo.io.Io.eof) {
            if (_r._nread != _r._f.uncompressedSize64) {
                return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errUnexpectedEOF };
            };
            if (_r._desr != null) {
                {
                    var _err1:stdgo.Error = _readDataDescriptor(_r._desr, _r._f);
                    if (_err1 != null) {
                        if (_err1 == stdgo.io.Io.eof) {
                            _err = stdgo.io.Io.errUnexpectedEOF;
                        } else {
                            _err = _err1;
                        };
                    } else if (_r._hash.sum32() != _r._f.crc32) {
                        _err = errChecksum;
                    };
                };
            } else {
                if ((_r._f.crc32 != ((0 : GoUInt32))) && (_r._hash.sum32() != _r._f.crc32)) {
                    _err = errChecksum;
                };
            };
        };
        _r._err = _err;
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _r = this;
        _r;
        return { _0 : ((new T_headerFileInfo(_r._f.fileHeader) : T_headerFileInfo)), _1 : ((null : stdgo.Error)) };
    }
    public var _rc : stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
    public var _hash : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public var _nread : GoUInt64 = ((0 : GoUInt64));
    public var _f : Ref<File> = ((null : Ref<File>));
    public var _desr : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_rc:stdgo.io.Io.ReadCloser, ?_hash:stdgo.hash.Hash.Hash32, ?_nread:GoUInt64, ?_f:Ref<File>, ?_desr:stdgo.io.Io.Reader, ?_err:stdgo.Error) {
        if (_rc != null) this._rc = _rc;
        if (_hash != null) this._hash = _hash;
        if (_nread != null) this._nread = _nread;
        if (_f != null) this._f = _f;
        if (_desr != null) this._desr = _desr;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_checksumReader(_rc, _hash, _nread, _f, _desr, _err);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fileListEntry_static_extension) class T_fileListEntry {
    @:keep
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _f = this;
        _f;
        return { _0 : _f, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function modTime():stdgo.time.Time.Time {
        var _f = this;
        _f;
        if (_f._file == null) {
            return ((new stdgo.time.Time.Time() : stdgo.time.Time.Time));
        };
        return (_f._file.fileHeader.modified.utc() == null ? null : _f._file.fileHeader.modified.utc().__copy__());
    }
    @:keep
    public function sys():AnyInterface {
        var _f = this;
        _f;
        return ((null : AnyInterface));
    }
    @:keep
    public function isDir():Bool {
        var _f = this;
        _f;
        return true;
    }
    @:keep
    public function type():stdgo.io.fs.Fs.FileMode {
        var _f = this;
        _f;
        return (("2147483648" : GoUInt32));
    }
    @:keep
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _f = this;
        _f;
        return (("2147484013" : GoUInt32));
    }
    @:keep
    public function size():GoInt64 {
        var _f = this;
        _f;
        return ((0 : GoInt64));
    }
    @:keep
    public function name():GoString {
        var _f = this;
        _f;
        var __tmp__ = _split(_f._name), _0:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _1:Bool = __tmp__._2;
        return _elem;
    }
    @:keep
    public function _stat():T_fileInfoDirEntry {
        var _e = this;
        _e;
        if (!_e._isDir) {
            return ((new T_headerFileInfo(_e._file.fileHeader) : T_headerFileInfo));
        };
        return _e;
    }
    public var _name : GoString = (("" : GoString));
    public var _file : Ref<File> = ((null : Ref<File>));
    public var _isDir : Bool = false;
    public function new(?_name:GoString, ?_file:Ref<File>, ?_isDir:Bool) {
        if (_name != null) this._name = _name;
        if (_file != null) this._file = _file;
        if (_isDir != null) this._isDir = _isDir;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fileListEntry(_name, _file, _isDir);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_openDir_static_extension) class T_openDir {
    @:keep
    public function readDir(_count:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        var _d = this;
        _d;
        var _n:GoInt = (_d._files != null ? _d._files.length : ((0 : GoInt))) - _d._offset;
        if ((_count > ((0 : GoInt))) && (_n > _count)) {
            _n = _count;
        };
        if (_n == ((0 : GoInt))) {
            if (_count <= ((0 : GoInt))) {
                return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : stdgo.io.Io.eof };
        };
        var _list:Slice<stdgo.io.fs.Fs.DirEntry> = new Slice<stdgo.io.fs.Fs.DirEntry>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : stdgo.io.fs.Fs.DirEntry))]);
        for (_i => _ in _list) {
            if (_list != null) _list[_i] = (_d._files != null ? _d._files[_d._offset + _i] : new T_fileListEntry())._stat();
        };
        _d._offset = _d._offset + (_n);
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = this;
        _d;
        return { _0 : ((0 : GoInt)), _1 : (({ op : ((("read" : GoString))), path : _d._e._name, err : stdgo.errors.Errors.new_(((("is a directory" : GoString)))) } : stdgo.io.fs.Fs.PathError)) };
    }
    @:keep
    public function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _d = this;
        _d;
        return { _0 : _d._e._stat(), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function close():Error {
        var _d = this;
        _d;
        return ((null : stdgo.Error));
    }
    public var _e : Ref<T_fileListEntry> = ((null : Ref<T_fileListEntry>));
    public var _files : Slice<T_fileListEntry> = ((null : Slice<T_fileListEntry>));
    public var _offset : GoInt = ((0 : GoInt));
    public function new(?_e:Ref<T_fileListEntry>, ?_files:Slice<T_fileListEntry>, ?_offset:GoInt) {
        if (_e != null) this._e = _e;
        if (_files != null) this._files = _files;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openDir(_e, _files, _offset);
    }
}
@:structInit class ZipTest {
    public var name : GoString = (("" : GoString));
    public var source : () -> { var _0 : stdgo.io.Io.ReaderAt; var _1 : GoInt64; } = null;
    public var comment : GoString = (("" : GoString));
    public var file : Slice<ZipTestFile> = ((null : Slice<ZipTestFile>));
    public var obscured : Bool = false;
    public var error : stdgo.Error = ((null : stdgo.Error));
    public function new(?name:GoString, ?source:() -> { var _0 : stdgo.io.Io.ReaderAt; var _1 : GoInt64; }, ?comment:GoString, ?file:Slice<ZipTestFile>, ?obscured:Bool, ?error:stdgo.Error) {
        if (name != null) this.name = name;
        if (source != null) this.source = source;
        if (comment != null) this.comment = comment;
        if (file != null) this.file = file;
        if (obscured != null) this.obscured = obscured;
        if (error != null) this.error = error;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ZipTest(name, source, comment, file, obscured, error);
    }
}
@:structInit class ZipTestFile {
    public var name : GoString = (("" : GoString));
    public var mode : stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
    public var nonUTF8 : Bool = false;
    public var modTime : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var modified : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var contentErr : stdgo.Error = ((null : stdgo.Error));
    public var content : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var file : GoString = (("" : GoString));
    public var size : GoUInt64 = ((0 : GoUInt64));
    public function new(?name:GoString, ?mode:stdgo.io.fs.Fs.FileMode, ?nonUTF8:Bool, ?modTime:stdgo.time.Time.Time, ?modified:stdgo.time.Time.Time, ?contentErr:stdgo.Error, ?content:Slice<GoUInt8>, ?file:GoString, ?size:GoUInt64) {
        if (name != null) this.name = name;
        if (mode != null) this.mode = mode;
        if (nonUTF8 != null) this.nonUTF8 = nonUTF8;
        if (modTime != null) this.modTime = modTime;
        if (modified != null) this.modified = modified;
        if (contentErr != null) this.contentErr = contentErr;
        if (content != null) this.content = content;
        if (file != null) this.file = file;
        if (size != null) this.size = size;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ZipTestFile(name, mode, nonUTF8, modTime, modified, contentErr, content, file, size);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateWriter_static_extension) class T_pooledFlateWriter {
    @:keep
    public function close():Error {
        var _w = this;
        _w;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _w._mu.lock();
        try {
            __deferstack__.unshift(() -> _w._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_w._fw != null) {
                _err = _w._fw.close();
                _flateWriterPool.put(Go.toInterface(_w._fw));
                _w._fw = null;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        _w;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _w._mu.lock();
        try {
            __deferstack__.unshift(() -> _w._mu.unlock());
            if (_w._fw == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("Write after Close" : GoString)))) };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _w._fw.write(_p);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _fw : Ref<stdgo.compress.flate.Flate.Writer> = ((null : Ref<stdgo.compress.flate.Flate.Writer>));
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_fw:Ref<stdgo.compress.flate.Flate.Writer>) {
        if (_mu != null) this._mu = _mu;
        if (_fw != null) this._fw = _fw;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pooledFlateWriter(_mu, _fw);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_pooledFlateReader_static_extension) class T_pooledFlateReader {
    @:keep
    public function close():Error {
        var _r = this;
        _r;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _r._mu.lock();
        try {
            __deferstack__.unshift(() -> _r._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_r._fr != null) {
                _err = _r._fr.close();
                _flateReaderPool.put(Go.toInterface(_r._fr));
                _r._fr = ((null : stdgo.io.Io.ReadCloser));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _r._mu.lock();
        try {
            __deferstack__.unshift(() -> _r._mu.unlock());
            if (_r._fr == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("Read after Close" : GoString)))) };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _r._fr.read(_p);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _fr : stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_fr:stdgo.io.Io.ReadCloser) {
        if (_mu != null) this._mu = _mu;
        if (_fr != null) this._fr = _fr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pooledFlateReader(_mu, _fr);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.FileHeader_static_extension) class FileHeader {
    @:keep
    public function _hasDataDescriptor():Bool {
        var _f = this;
        _f;
        return (_f.flags & ((8 : GoUInt16))) != ((0 : GoUInt16));
    }
    @:keep
    public function _isZip64():Bool {
        var _h = this;
        _h;
        return (_h.compressedSize64 >= (("4294967295" : GoUInt64))) || (_h.uncompressedSize64 >= (("4294967295" : GoUInt64)));
    }
    @:keep
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode):Void {
        var _h = this;
        _h;
        _h.creatorVersion = (_h.creatorVersion & ((255 : GoUInt16))) | ((768 : GoUInt16));
        _h.externalAttrs = _fileModeToUnixMode(_mode) << ((16 : GoUnTypedInt));
        if ((_mode & (("2147483648" : GoUInt32))) != ((0 : GoUInt32))) {
            _h.externalAttrs = _h.externalAttrs | (((16 : GoUInt32)));
        };
        if ((_mode & ((128 : GoUInt32))) == ((0 : GoUInt32))) {
            _h.externalAttrs = _h.externalAttrs | (((1 : GoUInt32)));
        };
    }
    @:keep
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _h = this;
        _h;
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        if (_h.creatorVersion >> ((8 : GoUnTypedInt)) == ((3 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((19 : GoUInt16))) {
            _mode = _unixModeToFileMode(_h.externalAttrs >> ((16 : GoUnTypedInt)));
        } else if (_h.creatorVersion >> ((8 : GoUnTypedInt)) == ((11 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((14 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((0 : GoUInt16))) {
            _mode = _msdosModeToFileMode(_h.externalAttrs);
        };
        if (((_h.name != null ? _h.name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_h.name != null ? _h.name[(_h.name != null ? _h.name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            _mode = _mode | ((("2147483648" : GoUInt32)));
        };
        return _mode;
    }
    @:keep
    public function setModTime(_t:stdgo.time.Time.Time):Void {
        var _h = this;
        _h;
        _t = (_t.utc() == null ? null : _t.utc().__copy__());
        _h.modified = (_t == null ? null : _t.__copy__());
        {
            var __tmp__ = _timeToMsDosTime((_t == null ? null : _t.__copy__()));
            _h.modifiedDate = __tmp__._0;
            _h.modifiedTime = __tmp__._1;
        };
    }
    @:keep
    public function modTime():stdgo.time.Time.Time {
        var _h = this;
        _h;
        return (_msDosTimeToTime(_h.modifiedDate, _h.modifiedTime) == null ? null : _msDosTimeToTime(_h.modifiedDate, _h.modifiedTime).__copy__());
    }
    @:keep
    public function fileInfo():stdgo.io.fs.Fs.FileInfo {
        var _h = this;
        _h;
        return ((new T_headerFileInfo(_h) : T_headerFileInfo));
    }
    public var name : GoString = (("" : GoString));
    public var comment : GoString = (("" : GoString));
    public var nonUTF8 : Bool = false;
    public var creatorVersion : GoUInt16 = ((0 : GoUInt16));
    public var readerVersion : GoUInt16 = ((0 : GoUInt16));
    public var flags : GoUInt16 = ((0 : GoUInt16));
    public var method : GoUInt16 = ((0 : GoUInt16));
    public var modified : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var modifiedTime : GoUInt16 = ((0 : GoUInt16));
    public var modifiedDate : GoUInt16 = ((0 : GoUInt16));
    public var crc32 : GoUInt32 = ((0 : GoUInt32));
    public var compressedSize : GoUInt32 = ((0 : GoUInt32));
    public var uncompressedSize : GoUInt32 = ((0 : GoUInt32));
    public var compressedSize64 : GoUInt64 = ((0 : GoUInt64));
    public var uncompressedSize64 : GoUInt64 = ((0 : GoUInt64));
    public var extra : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var externalAttrs : GoUInt32 = ((0 : GoUInt32));
    public function new(?name:GoString, ?comment:GoString, ?nonUTF8:Bool, ?creatorVersion:GoUInt16, ?readerVersion:GoUInt16, ?flags:GoUInt16, ?method:GoUInt16, ?modified:stdgo.time.Time.Time, ?modifiedTime:GoUInt16, ?modifiedDate:GoUInt16, ?crc32:GoUInt32, ?compressedSize:GoUInt32, ?uncompressedSize:GoUInt32, ?compressedSize64:GoUInt64, ?uncompressedSize64:GoUInt64, ?extra:Slice<GoUInt8>, ?externalAttrs:GoUInt32) {
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
        if (crc32 != null) this.crc32 = crc32;
        if (compressedSize != null) this.compressedSize = compressedSize;
        if (uncompressedSize != null) this.uncompressedSize = uncompressedSize;
        if (compressedSize64 != null) this.compressedSize64 = compressedSize64;
        if (uncompressedSize64 != null) this.uncompressedSize64 = uncompressedSize64;
        if (extra != null) this.extra = extra;
        if (externalAttrs != null) this.externalAttrs = externalAttrs;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
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
crc32,
compressedSize,
uncompressedSize,
compressedSize64,
uncompressedSize64,
extra,
externalAttrs);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_headerFileInfo_static_extension) class T_headerFileInfo {
    @:keep
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return { _0 : _fi, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function sys():AnyInterface {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return Go.toInterface(_fi._fh);
    }
    @:keep
    public function type():stdgo.io.fs.Fs.FileMode {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return _fi._fh.mode().type();
    }
    @:keep
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return _fi._fh.mode();
    }
    @:keep
    public function modTime():stdgo.time.Time.Time {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        if (_fi._fh.modified.isZero()) {
            return (_fi._fh.modTime() == null ? null : _fi._fh.modTime().__copy__());
        };
        return (_fi._fh.modified.utc() == null ? null : _fi._fh.modified.utc().__copy__());
    }
    @:keep
    public function isDir():Bool {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return _fi.mode().isDir();
    }
    @:keep
    public function size():GoInt64 {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        if (_fi._fh.uncompressedSize64 > ((0 : GoUInt64))) {
            return ((_fi._fh.uncompressedSize64 : GoInt64));
        };
        return ((_fi._fh.uncompressedSize : GoInt64));
    }
    @:keep
    public function name():GoString {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return stdgo.path.Path.base(_fi._fh.name);
    }
    public var _fh : Ref<FileHeader> = ((null : Ref<FileHeader>));
    public function new(?_fh:Ref<FileHeader>) {
        if (_fh != null) this._fh = _fh;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_fh);
    }
}
@:structInit class T_directoryEnd {
    public var _diskNbr : GoUInt32 = ((0 : GoUInt32));
    public var _dirDiskNbr : GoUInt32 = ((0 : GoUInt32));
    public var _dirRecordsThisDisk : GoUInt64 = ((0 : GoUInt64));
    public var _directoryRecords : GoUInt64 = ((0 : GoUInt64));
    public var _directorySize : GoUInt64 = ((0 : GoUInt64));
    public var _directoryOffset : GoUInt64 = ((0 : GoUInt64));
    public var _commentLen : GoUInt16 = ((0 : GoUInt16));
    public var _comment : GoString = (("" : GoString));
    public function new(?_diskNbr:GoUInt32, ?_dirDiskNbr:GoUInt32, ?_dirRecordsThisDisk:GoUInt64, ?_directoryRecords:GoUInt64, ?_directorySize:GoUInt64, ?_directoryOffset:GoUInt64, ?_commentLen:GoUInt16, ?_comment:GoString) {
        if (_diskNbr != null) this._diskNbr = _diskNbr;
        if (_dirDiskNbr != null) this._dirDiskNbr = _dirDiskNbr;
        if (_dirRecordsThisDisk != null) this._dirRecordsThisDisk = _dirRecordsThisDisk;
        if (_directoryRecords != null) this._directoryRecords = _directoryRecords;
        if (_directorySize != null) this._directorySize = _directorySize;
        if (_directoryOffset != null) this._directoryOffset = _directoryOffset;
        if (_commentLen != null) this._commentLen = _commentLen;
        if (_comment != null) this._comment = _comment;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_directoryEnd(_diskNbr, _dirDiskNbr, _dirRecordsThisDisk, _directoryRecords, _directorySize, _directoryOffset, _commentLen, _comment);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.Writer_static_extension) class Writer {
    @:keep
    public function _compressor(_method:GoUInt16):Compressor {
        var _w = this;
        _w;
        var _comp:Compressor = (_w._compressors != null ? _w._compressors[_method] : ((null : Compressor)));
        if (_comp == null) {
            _comp = stdgo.archive.zip.Zip._compressor(_method);
        };
        return _comp;
    }
    @:keep
    public function registerCompressor(_method:GoUInt16, _comp:Compressor):Void {
        var _w = this;
        _w;
        if (_w._compressors == null) {
            _w._compressors = new Map<Int, Compressor>();
        };
        if (_w._compressors != null) _w._compressors[_method] = _comp;
    }
    @:keep
    public function copy(_f:File):Error {
        var _w = this;
        _w;
        var __tmp__ = _f.openRaw(), _r:stdgo.io.Io.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _w.createRaw(_f.fileHeader), _fw:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo.io.Io.copy(_fw, _r);
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    public function createRaw(_fh:FileHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = this;
        _w;
        {
            var _err:stdgo.Error = _w._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _fh.compressedSize = ((_min64(_fh.compressedSize64, (("4294967295" : GoUInt64))) : GoUInt32));
        _fh.uncompressedSize = ((_min64(_fh.uncompressedSize64, (("4294967295" : GoUInt64))) : GoUInt32));
        var _h:Ref<T_header> = (({ fileHeader : _fh, _offset : ((_w._cw._count : GoUInt64)), _raw : true } : T_header));
        _w._dir = (_w._dir != null ? _w._dir.__append__(_h) : new Slice<Ref<T_header>>(_h));
        {
            var _err:stdgo.Error = _writeHeader(_w._cw, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        if (stdgo.strings.Strings.hasSuffix(_fh.name, ((("/" : GoString))))) {
            _w._last = null;
            return { _0 : ((new T_dirWriter() : T_dirWriter)), _1 : ((null : stdgo.Error)) };
        };
        var _fw:Ref<T_fileWriter> = (({ _header : _h, _zipw : _w._cw, _rawCount : ((null : Ref<T_countWriter>)), _comp : ((null : stdgo.io.Io.WriteCloser)), _compCount : ((null : Ref<T_countWriter>)), _crc32 : ((null : stdgo.hash.Hash.Hash32)), _closed : false } : T_fileWriter));
        _w._last = _fw;
        return { _0 : _fw, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function createHeader(_fh:FileHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = this;
        _w;
        {
            var _err:stdgo.Error = _w._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        var __tmp__ = _detectUTF8(_fh.name), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
        var __tmp__ = _detectUTF8(_fh.comment), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
        if (_fh.nonUTF8) {
            _fh.flags = _fh.flags & ((((2048 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
        } else if ((_utf8Require1 || _utf8Require2) && (_utf8Valid1 && _utf8Valid2)) {
            _fh.flags = _fh.flags | (((2048 : GoUInt16)));
        };
        _fh.creatorVersion = (_fh.creatorVersion & ((65280 : GoUInt16))) | ((20 : GoUInt16));
        _fh.readerVersion = ((20 : GoUInt16));
        if (!_fh.modified.isZero()) {
            {
                var __tmp__ = _timeToMsDosTime((_fh.modified == null ? null : _fh.modified.__copy__()));
                _fh.modifiedDate = __tmp__._0;
                _fh.modifiedTime = __tmp__._1;
            };
            var _mbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
            var _mt:GoUInt32 = ((_fh.modified.unix() : GoUInt32));
            var _eb:T_writeBuf = (((((_mbuf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_mbuf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _eb._uint16(((21589 : GoUInt16)));
            _eb._uint16(((5 : GoUInt16)));
            _eb._uint8(((1 : GoUInt8)));
            _eb._uint32(_mt);
            _fh.extra = (_fh.extra != null ? _fh.extra.__append__(...((_mbuf.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_mbuf.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
        };
        var _ow:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer)), _fw:T_fileWriter = ((null : Ref<T_fileWriter>));
        var _h:Ref<T_header> = (({ fileHeader : _fh, _offset : ((_w._cw._count : GoUInt64)), _raw : false } : T_header));
        if (stdgo.strings.Strings.hasSuffix(_fh.name, ((("/" : GoString))))) {
            _fh.method = ((0 : GoUInt16));
            _fh.flags = _fh.flags & ((((8 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
            _fh.compressedSize = ((0 : GoUInt32));
            _fh.compressedSize64 = ((0 : GoUInt64));
            _fh.uncompressedSize = ((0 : GoUInt32));
            _fh.uncompressedSize64 = ((0 : GoUInt64));
            _ow = ((new T_dirWriter() : T_dirWriter));
        } else {
            _fh.flags = _fh.flags | (((8 : GoUInt16)));
            _fw = (({ _zipw : _w._cw, _compCount : (({ _w : _w._cw, _count : 0 } : T_countWriter)), _crc32 : stdgo.hash.crc32.Crc32.newIEEE(), _header : ((null : Ref<T_header>)), _rawCount : ((null : Ref<T_countWriter>)), _comp : ((null : stdgo.io.Io.WriteCloser)), _closed : false } : T_fileWriter));
            var _comp:Compressor = _w._compressor(_fh.method);
            if (_comp == null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : errAlgorithm };
            };
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _comp(_fw._compCount);
                _fw._comp = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
            _fw._rawCount = (({ _w : _fw._comp, _count : 0 } : T_countWriter));
            _fw._header = _h;
            _ow = _fw;
        };
        _w._dir = (_w._dir != null ? _w._dir.__append__(_h) : new Slice<Ref<T_header>>(_h));
        {
            var _err:stdgo.Error = _writeHeader(_w._cw, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _w._last = _fw;
        return { _0 : _ow, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _prepare(_fh:FileHeader):Error {
        var _w = this;
        _w;
        if ((_w._last != null) && !_w._last._closed) {
            {
                var _err:stdgo.Error = _w._last._close();
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((_w._dir != null ? _w._dir.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_w._dir != null ? _w._dir[(_w._dir != null ? _w._dir.length : ((0 : GoInt))) - ((1 : GoInt))] : ((null : Ref<T_header>))).fileHeader == _fh)) {
            return stdgo.errors.Errors.new_(((("archive/zip: invalid duplicate FileHeader" : GoString))));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function create(_name:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = this;
        _w;
        var _header:Ref<FileHeader> = (({ name : _name, method : ((8 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        return _w.createHeader(_header);
    }
    @:keep
    public function close():Error {
        var _w = this;
        _w;
        if ((_w._last != null) && !_w._last._closed) {
            {
                var _err:stdgo.Error = _w._last._close();
                if (_err != null) {
                    return _err;
                };
            };
            _w._last = null;
        };
        if (_w._closed) {
            return stdgo.errors.Errors.new_(((("zip: writer closed twice" : GoString))));
        };
        _w._closed = true;
        var _start:GoInt64 = _w._cw._count;
        for (_0 => _h in _w._dir) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 46) ((0 : GoUInt8))]);
            var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _b._uint32(((((33639248 : GoUInt32)) : GoUInt32)));
            _b._uint16(_h.creatorVersion);
            _b._uint16(_h.readerVersion);
            _b._uint16(_h.flags);
            _b._uint16(_h.method);
            _b._uint16(_h.modifiedTime);
            _b._uint16(_h.modifiedDate);
            _b._uint32(_h.crc32);
            if (_h._isZip64() || (_h._offset >= (("4294967295" : GoUInt64)))) {
                _b._uint32((("4294967295" : GoUInt32)));
                _b._uint32((("4294967295" : GoUInt32)));
                var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
                var _eb:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
                _eb._uint16(((1 : GoUInt16)));
                _eb._uint16(((24 : GoUInt16)));
                _eb._uint64(_h.uncompressedSize64);
                _eb._uint64(_h.compressedSize64);
                _eb._uint64(_h._offset);
                _h.extra = (_h.extra != null ? _h.extra.__append__(...((_buf.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_buf.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
            } else {
                _b._uint32(_h.compressedSize);
                _b._uint32(_h.uncompressedSize);
            };
            _b._uint16((((_h.name != null ? _h.name.length : ((0 : GoInt))) : GoUInt16)));
            _b._uint16((((_h.extra != null ? _h.extra.length : ((0 : GoInt))) : GoUInt16)));
            _b._uint16((((_h.comment != null ? _h.comment.length : ((0 : GoInt))) : GoUInt16)));
            _b = (((_b.__slice__(((4 : GoInt))) : T_writeBuf)) == null ? null : ((_b.__slice__(((4 : GoInt))) : T_writeBuf)).__copy__());
            _b._uint32(_h.externalAttrs);
            if (_h._offset > (("4294967295" : GoUInt64))) {
                _b._uint32((("4294967295" : GoUInt32)));
            } else {
                _b._uint32(((_h._offset : GoUInt32)));
            };
            {
                var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w._cw, _h.name), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w._cw.write(_h.extra), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w._cw, _h.comment), _4:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _end:GoInt64 = _w._cw._count;
        var _records:GoUInt64 = (((_w._dir != null ? _w._dir.length : ((0 : GoInt))) : GoUInt64));
        var _size:GoUInt64 = (((_end - _start) : GoUInt64));
        var _offset:GoUInt64 = ((_start : GoUInt64));
        {
            var _f:(GoUInt64, GoUInt64) -> Void = _w._testHookCloseSizeOffset;
            if (_f != null) {
                _f(_size, _offset);
            };
        };
        if (((_records >= ((65535 : GoUInt64))) || (_size >= (("4294967295" : GoUInt64)))) || (_offset >= (("4294967295" : GoUInt64)))) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 76) ((0 : GoUInt8))]);
            var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _b._uint32(((101075792 : GoUInt32)));
            _b._uint64(((44 : GoUInt64)));
            _b._uint16(((45 : GoUInt16)));
            _b._uint16(((45 : GoUInt16)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(_records);
            _b._uint64(_records);
            _b._uint64(_size);
            _b._uint64(_offset);
            _b._uint32(((117853008 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(((_end : GoUInt64)));
            _b._uint32(((1 : GoUInt32)));
            {
                var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _5:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _records = ((65535 : GoUInt64));
            _size = (("4294967295" : GoUInt64));
            _offset = (("4294967295" : GoUInt64));
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 22) ((0 : GoUInt8))]);
        var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
        _b._uint32(((((101010256 : GoUInt32)) : GoUInt32)));
        _b = (((_b.__slice__(((4 : GoInt))) : T_writeBuf)) == null ? null : ((_b.__slice__(((4 : GoInt))) : T_writeBuf)).__copy__());
        _b._uint16(((_records : GoUInt16)));
        _b._uint16(((_records : GoUInt16)));
        _b._uint32(((_size : GoUInt32)));
        _b._uint32(((_offset : GoUInt32)));
        _b._uint16((((_w._comment != null ? _w._comment.length : ((0 : GoInt))) : GoUInt16)));
        {
            var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _6:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_w._cw, _w._comment), _7:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((((_w._cw._w.__underlying__().value : Dynamic)) : stdgo.bufio.Bufio.Writer)).flush();
    }
    @:keep
    public function setComment(_comment:GoString):Error {
        var _w = this;
        _w;
        if ((_comment != null ? _comment.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return stdgo.errors.Errors.new_(((("zip: Writer.Comment too long" : GoString))));
        };
        _w._comment = _comment;
        return ((null : stdgo.Error));
    }
    @:keep
    public function flush():Error {
        var _w = this;
        _w;
        return ((((_w._cw._w.__underlying__().value : Dynamic)) : stdgo.bufio.Bufio.Writer)).flush();
    }
    @:keep
    public function setOffset(_n:GoInt64):Void {
        var _w = this;
        _w;
        if (_w._cw._count != ((0 : GoInt64))) {
            throw Go.toInterface(((("zip: SetOffset called after data was written" : GoString))));
        };
        _w._cw._count = _n;
    }
    public var _cw : Ref<T_countWriter> = ((null : Ref<T_countWriter>));
    public var _dir : Slice<Ref<T_header>> = ((null : Slice<Ref<T_header>>));
    public var _last : Ref<T_fileWriter> = ((null : Ref<T_fileWriter>));
    public var _closed : Bool = false;
    public var _compressors : GoMap<GoUInt16, Compressor> = ((null : GoMap<GoUInt16, Compressor>));
    public var _comment : GoString = (("" : GoString));
    public var _testHookCloseSizeOffset : (GoUInt64, GoUInt64) -> Void = null;
    public function new(?_cw:Ref<T_countWriter>, ?_dir:Slice<Ref<T_header>>, ?_last:Ref<T_fileWriter>, ?_closed:Bool, ?_compressors:GoMap<GoUInt16, Compressor>, ?_comment:GoString, ?_testHookCloseSizeOffset:(GoUInt64, GoUInt64) -> Void) {
        if (_cw != null) this._cw = _cw;
        if (_dir != null) this._dir = _dir;
        if (_last != null) this._last = _last;
        if (_closed != null) this._closed = _closed;
        if (_compressors != null) this._compressors = _compressors;
        if (_comment != null) this._comment = _comment;
        if (_testHookCloseSizeOffset != null) this._testHookCloseSizeOffset = _testHookCloseSizeOffset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_cw, _dir, _last, _closed, _compressors, _comment, _testHookCloseSizeOffset);
    }
}
@:structInit class T_header {
    @:embedded
    public var fileHeader : Ref<FileHeader> = ((null : Ref<FileHeader>));
    public var _offset : GoUInt64 = ((0 : GoUInt64));
    public var _raw : Bool = false;
    public function new(?fileHeader:Ref<FileHeader>, ?_offset:GoUInt64, ?_raw:Bool) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (_offset != null) this._offset = _offset;
        if (_raw != null) this._raw = _raw;
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return fileHeader.fileInfo();
    public function modTime():stdgo.time.Time.Time return fileHeader.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return fileHeader.mode();
    public function setModTime(_t:stdgo.time.Time.Time) fileHeader.setModTime(_t);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) fileHeader.setMode(_mode);
    public function _hasDataDescriptor():Bool return fileHeader._hasDataDescriptor();
    public function _isZip64():Bool return fileHeader._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_header(fileHeader, _offset, _raw);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_dirWriter_static_extension) class T_dirWriter {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("zip: write to directory" : GoString)))) };
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dirWriter();
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fileWriter_static_extension) class T_fileWriter {
    @:keep
    public function _writeDataDescriptor():Error {
        var _w = this;
        _w;
        if (!_w._hasDataDescriptor()) {
            return ((null : stdgo.Error));
        };
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (_w._isZip64()) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((24 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        } else {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        var _b:T_writeBuf = (((_buf : T_writeBuf)) == null ? null : ((_buf : T_writeBuf)).__copy__());
        _b._uint32(((134695760 : GoUInt32)));
        _b._uint32(_w.crc32);
        if (_w._isZip64()) {
            _b._uint64(_w.compressedSize64);
            _b._uint64(_w.uncompressedSize64);
        } else {
            _b._uint32(_w.compressedSize);
            _b._uint32(_w.uncompressedSize);
        };
        var __tmp__ = _w._zipw.write(_buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public function _close():Error {
        var _w = this;
        _w;
        if (_w._closed) {
            return stdgo.errors.Errors.new_(((("zip: file closed twice" : GoString))));
        };
        _w._closed = true;
        if (_w._raw) {
            return _w._writeDataDescriptor();
        };
        {
            var _err:stdgo.Error = _w._comp.close();
            if (_err != null) {
                return _err;
            };
        };
        var _fh:Ref<FileHeader> = _w._header.fileHeader;
        _fh.crc32 = _w._crc32.sum32();
        _fh.compressedSize64 = ((_w._compCount._count : GoUInt64));
        _fh.uncompressedSize64 = ((_w._rawCount._count : GoUInt64));
        if (_fh._isZip64()) {
            _fh.compressedSize = (("4294967295" : GoUInt32));
            _fh.uncompressedSize = (("4294967295" : GoUInt32));
            _fh.readerVersion = ((45 : GoUInt16));
        } else {
            _fh.compressedSize = ((_fh.compressedSize64 : GoUInt32));
            _fh.uncompressedSize = ((_fh.uncompressedSize64 : GoUInt32));
        };
        return _w._writeDataDescriptor();
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        _w;
        if (_w._closed) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("zip: write to closed file" : GoString)))) };
        };
        if (_w._raw) {
            return _w._zipw.write(_p);
        };
        _w._crc32.write(_p);
        return _w._rawCount.write(_p);
    }
    @:embedded
    public var _header : Ref<T_header> = ((null : Ref<T_header>));
    public var _zipw : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _rawCount : Ref<T_countWriter> = ((null : Ref<T_countWriter>));
    public var _comp : stdgo.io.Io.WriteCloser = ((null : stdgo.io.Io.WriteCloser));
    public var _compCount : Ref<T_countWriter> = ((null : Ref<T_countWriter>));
    public var _crc32 : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public var _closed : Bool = false;
    public function new(?_header:Ref<T_header>, ?_zipw:stdgo.io.Io.Writer, ?_rawCount:Ref<T_countWriter>, ?_comp:stdgo.io.Io.WriteCloser, ?_compCount:Ref<T_countWriter>, ?_crc32:stdgo.hash.Hash.Hash32, ?_closed:Bool) {
        if (_header != null) this._header = _header;
        if (_zipw != null) this._zipw = _zipw;
        if (_rawCount != null) this._rawCount = _rawCount;
        if (_comp != null) this._comp = _comp;
        if (_compCount != null) this._compCount = _compCount;
        if (_crc32 != null) this._crc32 = _crc32;
        if (_closed != null) this._closed = _closed;
    }
    public function fileInfo():stdgo.io.fs.Fs.FileInfo return _header.fileInfo();
    public function modTime():stdgo.time.Time.Time return _header.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return _header.mode();
    public function setModTime(_t:stdgo.time.Time.Time) _header.setModTime(_t);
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode) _header.setMode(_mode);
    public function _hasDataDescriptor():Bool return _header._hasDataDescriptor();
    public function _isZip64():Bool return _header._isZip64();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fileWriter(_header, _zipw, _rawCount, _comp, _compCount, _crc32, _closed);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_countWriter_static_extension) class T_countWriter {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        _w;
        var __tmp__ = _w._w.write(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w._count = _w._count + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _count : GoInt64 = ((0 : GoInt64));
    public function new(?_w:stdgo.io.Io.Writer, ?_count:GoInt64) {
        if (_w != null) this._w = _w;
        if (_count != null) this._count = _count;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_countWriter(_w, _count);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_nopCloser_static_extension) class T_nopCloser {
    @:keep
    public function close():Error {
        var _w = this;
        (_w == null ? null : _w.__copy__());
        return ((null : stdgo.Error));
    }
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?writer:stdgo.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nopCloser(writer);
    }
}
@:structInit class WriteTest {
    public var name : GoString = (("" : GoString));
    public var data : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var method : GoUInt16 = ((0 : GoUInt16));
    public var mode : stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
    public function new(?name:GoString, ?data:Slice<GoUInt8>, ?method:GoUInt16, ?mode:stdgo.io.fs.Fs.FileMode) {
        if (name != null) this.name = name;
        if (data != null) this.data = data;
        if (method != null) this.method = method;
        if (mode != null) this.mode = mode;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new WriteTest(name, data, method, mode);
    }
}
@:structInit class T_repeatedByte {
    public var _off : GoInt64 = ((0 : GoInt64));
    public var _b : GoUInt8 = ((0 : GoUInt8));
    public var _n : GoInt64 = ((0 : GoInt64));
    public function new(?_off:GoInt64, ?_b:GoUInt8, ?_n:GoInt64) {
        if (_off != null) this._off = _off;
        if (_b != null) this._b = _b;
        if (_n != null) this._n = _n;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_repeatedByte(_off, _b, _n);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_rleBuffer_static_extension) class T_rleBuffer {
    @:keep
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _skipParts:GoInt = stdgo.sort.Sort.search((_r._buf != null ? _r._buf.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var _part:Ref<T_repeatedByte> = (_r._buf != null ? _r._buf[_i] : new T_repeatedByte());
            return (_part._off + _part._n) > _off;
        });
        var _parts:Slice<T_repeatedByte> = ((_r._buf.__slice__(_skipParts) : Slice<T_repeatedByte>));
        if ((_parts != null ? _parts.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _skipBytes:GoInt64 = _off - (_parts != null ? _parts[((0 : GoInt))] : new T_repeatedByte())._off;
            for (_0 => _part in _parts) {
                var _repeat:GoInt = ((_min(_part._n - _skipBytes, ((((_p != null ? _p.length : ((0 : GoInt))) - _n) : GoInt64))) : GoInt));
                _memset(((_p.__slice__(_n, _n + _repeat) : Slice<GoUInt8>)), _part._b);
                _n = _n + (_repeat);
                if (_n == (_p != null ? _p.length : ((0 : GoInt)))) {
                    return { _0 : _n, _1 : _err };
                };
                _skipBytes = ((0 : GoInt64));
            };
        };
        if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _rp:T_repeatedByte = ((null : Ref<T_repeatedByte>));
        if ((_r._buf != null ? _r._buf.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _rp = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
            {
                var _lastByte:GoUInt8 = _rp._b;
                if (((_p != null ? _p.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))) == _lastByte)) {
                    if (stdgo.bytes.Bytes.count(_p, ((new Slice<GoUInt8>(_lastByte) : Slice<GoUInt8>))) == (_p != null ? _p.length : ((0 : GoInt)))) {
                        _rp._n = _rp._n + ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)));
                        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
                    };
                };
            };
        };
        for (_0 => _b in _p) {
            if ((_rp == null) || (_rp._b != _b)) {
                _r._buf = (_r._buf != null ? _r._buf.__append__(((new T_repeatedByte(_r.size(), _b, ((1 : GoInt64))) : T_repeatedByte))) : new Slice<T_repeatedByte>(((new T_repeatedByte(_r.size(), _b, ((1 : GoInt64))) : T_repeatedByte))));
                _rp = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
            } else {
                _rp._n++;
            };
        };
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function size():GoInt64 {
        var _r = this;
        _r;
        if ((_r._buf != null ? _r._buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((0 : GoInt64));
        };
        var _last:Ref<T_repeatedByte> = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
        return _last._off + _last._n;
    }
    public var _buf : Slice<T_repeatedByte> = ((null : Slice<T_repeatedByte>));
    public function new(?_buf:Slice<T_repeatedByte>) {
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_rleBuffer(_buf);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_fakeHash32_static_extension) class T_fakeHash32 {
    @:keep
    public function sum32():GoUInt32 {
        var _ = this;
        return ((0 : GoUInt32));
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:embedded
    public var hash32 : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public function new(?hash32:stdgo.hash.Hash.Hash32) {
        if (hash32 != null) this.hash32 = hash32;
    }
    public function blockSize():GoInt return hash32.blockSize();
    public function reset() hash32.reset();
    public function size():GoInt return hash32.size();
    public function sum(_b:Slice<GoUInt8>):Slice<GoUInt8> return hash32.sum(_b);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fakeHash32(hash32);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_suffixSaver_static_extension) class T_suffixSaver {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ss = this;
        _ss;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _n = (_p != null ? _p.length : ((0 : GoInt)));
        _ss._size = _ss._size + ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)));
        if ((_ss._buf != null ? _ss._buf.length : ((0 : GoInt))) < _ss._keep) {
            var _space:GoInt = _ss._keep - (_ss._buf != null ? _ss._buf.length : ((0 : GoInt)));
            var _add:GoInt = (_p != null ? _p.length : ((0 : GoInt)));
            if (_add > _space) {
                _add = _space;
            };
            _ss._buf = (_ss._buf != null ? _ss._buf.__append__(...((_p.__slice__(0, _add) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_p.__slice__(0, _add) : Slice<GoUInt8>)).__toArray__()));
            _p = ((_p.__slice__(_add) : Slice<GoUInt8>));
        };
        while ((_p != null ? _p.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _n:GoInt = Go.copySlice(((_ss._buf.__slice__(_ss._start) : Slice<GoUInt8>)), _p);
            _p = ((_p.__slice__(_n) : Slice<GoUInt8>));
            _ss._start = _ss._start + (_n);
            if (_ss._start == _ss._keep) {
                _ss._start = ((0 : GoInt));
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function suffix():Slice<GoByte> {
        var _ss = this;
        _ss;
        if ((_ss._buf != null ? _ss._buf.length : ((0 : GoInt))) < _ss._keep) {
            return _ss._buf;
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_ss._keep : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = Go.copySlice(_buf, ((_ss._buf.__slice__(_ss._start) : Slice<GoUInt8>)));
        Go.copySlice(((_buf.__slice__(_n) : Slice<GoUInt8>)), ((_ss._buf.__slice__(0) : Slice<GoUInt8>)));
        return _buf;
    }
    @:keep
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _ss = this;
        _ss;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _back:GoInt64 = _ss._size - _off;
        if (_back > ((_ss._keep : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : _errDiscardedBytes };
        };
        var _suf:Slice<GoUInt8> = _ss.suffix();
        _n = Go.copySlice(_p, ((_suf.__slice__((_suf != null ? _suf.length : ((0 : GoInt))) - ((_back : GoInt))) : Slice<GoUInt8>)));
        if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function size():GoInt64 {
        var _ss = this;
        _ss;
        return _ss._size;
    }
    public var _keep : GoInt = ((0 : GoInt));
    public var _buf : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _start : GoInt = ((0 : GoInt));
    public var _size : GoInt64 = ((0 : GoInt64));
    public function new(?_keep:GoInt, ?_buf:Slice<GoUInt8>, ?_start:GoInt, ?_size:GoInt64) {
        if (_keep != null) this._keep = _keep;
        if (_buf != null) this._buf = _buf;
        if (_start != null) this._start = _start;
        if (_size != null) this._size = _size;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_suffixSaver(_keep, _buf, _start, _size);
    }
}
@:structInit @:using(stdgo.archive.zip.Zip.T_zeros_static_extension) class T_zeros {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        for (_i => _ in _p) {
            if (_p != null) _p[_i] = ((0 : GoUInt8));
        };
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeros();
    }
}
@:structInit @:local class T__struct_0 {
    public var _file : GoString = (("" : GoString));
    public var _want : Slice<GoString> = ((null : Slice<GoString>));
    public function toString():String return "{" + Go.string(_file) + " " + Go.string(_want) + "}";
    public function new(?_file:GoString, ?_want:Slice<GoString>, ?toString) {
        if (_file != null) this._file = _file;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_file, _want);
    }
}
@:structInit @:local class T__struct_1 {
    public var _name : GoString = (("" : GoString));
    public var _want : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_want) + "}";
    public function new(?_name:GoString, ?_want:stdgo.time.Time.Time, ?toString) {
        if (_name != null) this._name = _name;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_name, _want);
    }
}
@:structInit @:local class T__struct_2 {
    public var _comment : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_comment) + " " + Go.string(_ok) + "}";
    public function new(?_comment:GoString, ?_ok:Bool, ?toString) {
        if (_comment != null) this._comment = _comment;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_comment, _ok);
    }
}
@:structInit @:local class T__struct_3 {
    public var _name : GoString = (("" : GoString));
    public var _comment : GoString = (("" : GoString));
    public var _nonUTF8 : Bool = false;
    public var _flags : GoUInt16 = ((0 : GoUInt16));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_comment) + " " + Go.string(_nonUTF8) + " " + Go.string(_flags) + "}";
    public function new(?_name:GoString, ?_comment:GoString, ?_nonUTF8:Bool, ?_flags:GoUInt16, ?toString) {
        if (_name != null) this._name = _name;
        if (_comment != null) this._comment = _comment;
        if (_nonUTF8 != null) this._nonUTF8 = _nonUTF8;
        if (_flags != null) this._flags = _flags;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(_name, _comment, _nonUTF8, _flags);
    }
}
@:structInit @:local class T__struct_4 {
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function toString():String return "{" + Go.string(writer) + "}";
    public function new(?writer:stdgo.io.Io.Writer, ?toString) {
        if (writer != null) this.writer = writer;
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4(writer);
    }
}
@:structInit @:local class T__struct_5 {
    public var _name : GoString = (("" : GoString));
    public var _content : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _method : GoUInt16 = ((0 : GoUInt16));
    public var _flags : GoUInt16 = ((0 : GoUInt16));
    public var _crc32 : GoUInt32 = ((0 : GoUInt32));
    public var _uncompressedSize : GoUInt64 = ((0 : GoUInt64));
    public var _compressedSize : GoUInt64 = ((0 : GoUInt64));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_content) + " " + Go.string(_method) + " " + Go.string(_flags) + " " + Go.string(_crc32) + " " + Go.string(_uncompressedSize) + " " + Go.string(_compressedSize) + "}";
    public function new(?_name:GoString, ?_content:Slice<GoUInt8>, ?_method:GoUInt16, ?_flags:GoUInt16, ?_crc32:GoUInt32, ?_uncompressedSize:GoUInt64, ?_compressedSize:GoUInt64, ?toString) {
        if (_name != null) this._name = _name;
        if (_content != null) this._content = _content;
        if (_method != null) this._method = _method;
        if (_flags != null) this._flags = _flags;
        if (_crc32 != null) this._crc32 = _crc32;
        if (_uncompressedSize != null) this._uncompressedSize = _uncompressedSize;
        if (_compressedSize != null) this._compressedSize = _compressedSize;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(_name, _content, _method, _flags, _crc32, _uncompressedSize, _compressedSize);
    }
}
@:structInit @:local class T__struct_6 {
    public var _name : GoString = (("" : GoString));
    public var _extra : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _wanterr : stdgo.Error = ((null : stdgo.Error));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_extra) + " " + Go.string(_wanterr) + "}";
    public function new(?_name:GoString, ?_extra:Slice<GoUInt8>, ?_wanterr:stdgo.Error, ?toString) {
        if (_name != null) this._name = _name;
        if (_extra != null) this._extra = _extra;
        if (_wanterr != null) this._wanterr = _wanterr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_name, _extra, _wanterr);
    }
}
@:named @:using(stdgo.archive.zip.Zip.T_readBuf_static_extension) typedef T_readBuf = Slice<GoUInt8>;
@:named typedef Compressor = stdgo.io.Io.Writer -> { var _0 : stdgo.io.Io.WriteCloser; var _1 : stdgo.Error; };
@:named typedef Decompressor = stdgo.io.Io.Reader -> stdgo.io.Io.ReadCloser;
@:named @:using(stdgo.archive.zip.Zip.T_writeBuf_static_extension) typedef T_writeBuf = Slice<GoUInt8>;
@:structInit class T_file_fuzzReader_0 {
    public var _header : Ref<FileHeader> = ((null : Ref<FileHeader>));
    public var _content : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_header:Ref<FileHeader>, ?_content:Slice<GoUInt8>) {
        if (_header != null) this._header = _header;
        if (_content != null) this._content = _content;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_file_fuzzReader_0(_header, _content);
    }
}
function fuzzReader(_f:stdgo.testing.Testing.F):Void {
        var __tmp__ = stdgo.os.Os.readDir(((("testdata" : GoString)))), _testdata:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.fatalf(((("failed to read testdata directory: %s" : GoString))), Go.toInterface(_err));
        };
        for (_0 => _de in _testdata) {
            if (_de.isDir()) {
                continue;
            };
            var __tmp__ = stdgo.os.Os.readFile(stdgo.path.filepath.Filepath.join(((("testdata" : GoString))), _de.name())), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _f.fatalf(((("failed to read testdata: %s" : GoString))), Go.toInterface(_err));
            };
            _f.add(Go.toInterface(_b));
        };
        _f.fuzz(Go.toInterface(function(_t:stdgo.testing.Testing.T_, _b:Slice<GoByte>):Void {
            var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_b), (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return;
            };
            {};
            var _files:Slice<T_file_fuzzReader_0> = ((new Slice<T_file_fuzzReader_0>() : Slice<T_file_fuzzReader_0>));
            for (_0 => _f in _r.file) {
                var __tmp__ = _f.open(), _fr:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    continue;
                };
                var __tmp__ = stdgo.io.Io.readAll(_fr), _content:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    continue;
                };
                _files = (_files != null ? _files.__append__(((({ _header : _f.fileHeader, _content : _content } : T_file_fuzzReader_0)) == null ? null : (({ _header : _f.fileHeader, _content : _content } : T_file_fuzzReader_0)).__copy__())) : new Slice<T_file_fuzzReader_0>(((({ _header : _f.fileHeader, _content : _content } : T_file_fuzzReader_0)) == null ? null : (({ _header : _f.fileHeader, _content : _content } : T_file_fuzzReader_0)).__copy__())));
                {
                    var __tmp__ = _r.open(_f.name), _1:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        continue;
                    };
                };
            };
            if ((_files != null ? _files.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return;
            };
            var _w:Ref<Writer> = newWriter(stdgo.io.Io.discard);
            for (_2 => _f in _files) {
                var __tmp__ = _w.createHeader(_f._header), _ww:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((("unable to write previously parsed header: %s" : GoString))), Go.toInterface(_err));
                };
                {
                    var __tmp__ = _ww.write(_f._content), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(((("unable to write previously parsed content: %s" : GoString))), Go.toInterface(_err));
                    };
                };
            };
            {
                var _err:stdgo.Error = _w.close();
                if (_err != null) {
                    _t.fatalf(((("Unable to write archive: %s" : GoString))), Go.toInterface(_err));
                };
            };
        }));
    }
function openReader(_name:GoString):{ var _0 : ReadCloser; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.open(_name), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _f.stat(), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.close();
            return { _0 : null, _1 : _err };
        };
        var _r:Ref<ReadCloser> = new ReadCloser();
        {
            var _err:stdgo.Error = _r._init(_f, _fi.size());
            if (_err != null) {
                _f.close();
                return { _0 : null, _1 : _err };
            };
        };
        _r._f = _f;
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
function newReader(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):{ var _0 : Reader; var _1 : Error; } {
        if (_size < ((0 : GoInt64))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("zip: size cannot be negative" : GoString)))) };
        };
        var _zr:Ref<Reader> = new Reader();
        {
            var _err:stdgo.Error = _zr._init(_r, _size);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _zr, _1 : ((null : stdgo.Error)) };
    }
function _readDirectoryHeader(_f:File, _r:stdgo.io.Io.Reader):Error {
        return stdgo.internal.Macro.controlFlow({
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 46) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(_r, ((_buf.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            var _b:T_readBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf)).__copy__());
            {
                var _sig:GoUInt32 = _b._uint32();
                if (_sig != ((33639248 : GoUInt32))) {
                    return errFormat;
                };
            };
            _f.creatorVersion = _b._uint16();
            _f.readerVersion = _b._uint16();
            _f.flags = _b._uint16();
            _f.method = _b._uint16();
            _f.modifiedTime = _b._uint16();
            _f.modifiedDate = _b._uint16();
            _f.crc32 = _b._uint32();
            _f.compressedSize = _b._uint32();
            _f.uncompressedSize = _b._uint32();
            _f.compressedSize64 = ((_f.compressedSize : GoUInt64));
            _f.uncompressedSize64 = ((_f.uncompressedSize : GoUInt64));
            var _filenameLen:GoInt = ((_b._uint16() : GoInt));
            var _extraLen:GoInt = ((_b._uint16() : GoInt));
            var _commentLen:GoInt = ((_b._uint16() : GoInt));
            _b = (((_b.__slice__(((4 : GoInt))) : T_readBuf)) == null ? null : ((_b.__slice__(((4 : GoInt))) : T_readBuf)).__copy__());
            _f.externalAttrs = _b._uint32();
            _f._headerOffset = ((_b._uint32() : GoInt64));
            var _d:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_filenameLen + _extraLen) + _commentLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(_r, _d), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _f.name = ((((_d.__slice__(0, _filenameLen) : Slice<GoUInt8>)) : GoString));
            _f.extra = ((_d.__slice__(_filenameLen, _filenameLen + _extraLen) : Slice<GoUInt8>));
            _f.comment = ((((_d.__slice__(_filenameLen + _extraLen) : Slice<GoUInt8>)) : GoString));
            var __tmp__ = _detectUTF8(_f.name), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
            var __tmp__ = _detectUTF8(_f.comment), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
            if (!_utf8Valid1 || !_utf8Valid2) {
                _f.nonUTF8 = true;
            } else if (!_utf8Require1 && !_utf8Require2) {
                _f.nonUTF8 = false;
            } else {
                _f.nonUTF8 = (_f.flags & ((2048 : GoUInt16))) == ((0 : GoUInt16));
            };
            var _needUSize:Bool = _f.uncompressedSize == (("4294967295" : GoUInt32));
            var _needCSize:Bool = _f.compressedSize == (("4294967295" : GoUInt32));
            var _needHeaderOffset:Bool = _f._headerOffset == (((("4294967295" : GoUInt32)) : GoInt64));
            var _modified:stdgo.time.Time.Time = new stdgo.time.Time.Time();
            @:label("parseExtras") {
                var _extra:T_readBuf = (((_f.extra : T_readBuf)) == null ? null : ((_f.extra : T_readBuf)).__copy__());
                while ((_extra != null ? _extra.length : ((0 : GoInt))) >= ((4 : GoInt))) {
                    var _fieldTag:GoUInt16 = _extra._uint16();
                    var _fieldSize:GoInt = ((_extra._uint16() : GoInt));
                    if ((_extra != null ? _extra.length : ((0 : GoInt))) < _fieldSize) {
                        break;
                    };
                    var _fieldBuf:T_readBuf = (_extra._sub(_fieldSize) == null ? null : _extra._sub(_fieldSize).__copy__());
                    if (_fieldTag == ((1 : GoUInt16))) {
                        _f._zip64 = true;
                        if (_needUSize) {
                            _needUSize = false;
                            if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f.uncompressedSize64 = _fieldBuf._uint64();
                        };
                        if (_needCSize) {
                            _needCSize = false;
                            if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f.compressedSize64 = _fieldBuf._uint64();
                        };
                        if (_needHeaderOffset) {
                            _needHeaderOffset = false;
                            if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((8 : GoInt))) {
                                return errFormat;
                            };
                            _f._headerOffset = ((_fieldBuf._uint64() : GoInt64));
                        };
                    } else if (_fieldTag == ((10 : GoUInt16))) {
                        if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((4 : GoInt))) {
                            continue;
                        };
                        _fieldBuf._uint32();
                        while ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) >= ((4 : GoInt))) {
                            var _attrTag:GoUInt16 = _fieldBuf._uint16();
                            var _attrSize:GoInt = ((_fieldBuf._uint16() : GoInt));
                            if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < _attrSize) {
                                continue;
                            };
                            var _attrBuf:T_readBuf = (_fieldBuf._sub(_attrSize) == null ? null : _fieldBuf._sub(_attrSize).__copy__());
                            if ((_attrTag != ((1 : GoUInt16))) || (_attrSize != ((24 : GoInt)))) {
                                continue;
                            };
                            {};
                            var _ts:GoInt64 = ((_attrBuf._uint64() : GoInt64));
                            var _secs:GoInt64 = (((_ts / ((10000000 : GoInt64))) : GoInt64));
                            var _nsecs:GoInt64 = ((100 : GoInt64)) * (((_ts % ((10000000 : GoInt64))) : GoInt64));
                            var _epoch:stdgo.time.Time.Time = (stdgo.time.Time.date(((1601 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((1601 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
                            _modified = (stdgo.time.Time.unix(_epoch.unix() + _secs, _nsecs) == null ? null : stdgo.time.Time.unix(_epoch.unix() + _secs, _nsecs).__copy__());
                        };
                    } else if (_fieldTag == ((13 : GoUInt16)) || _fieldTag == ((22613 : GoUInt16))) {
                        if ((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((8 : GoInt))) {
                            continue;
                        };
                        _fieldBuf._uint32();
                        var _ts:GoInt64 = ((_fieldBuf._uint32() : GoInt64));
                        _modified = (stdgo.time.Time.unix(_ts, ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_ts, ((0 : GoInt64))).__copy__());
                    } else if (_fieldTag == ((21589 : GoUInt16))) {
                        if (((_fieldBuf != null ? _fieldBuf.length : ((0 : GoInt))) < ((5 : GoInt))) || ((_fieldBuf._uint8() & ((1 : GoUInt8))) == ((0 : GoUInt8)))) {
                            continue;
                        };
                        var _ts:GoInt64 = ((_fieldBuf._uint32() : GoInt64));
                        _modified = (stdgo.time.Time.unix(_ts, ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_ts, ((0 : GoInt64))).__copy__());
                    };
                };
            };
            var _msdosModified:stdgo.time.Time.Time = (_msDosTimeToTime(_f.modifiedDate, _f.modifiedTime) == null ? null : _msDosTimeToTime(_f.modifiedDate, _f.modifiedTime).__copy__());
            _f.modified = (_msdosModified == null ? null : _msdosModified.__copy__());
            if (!_modified.isZero()) {
                _f.modified = (_modified.utc() == null ? null : _modified.utc().__copy__());
                if ((_f.modifiedTime != ((0 : GoUInt16))) || (_f.modifiedDate != ((0 : GoUInt16)))) {
                    _f.modified = (_modified.in_(_timeZone(_msdosModified.sub((_modified == null ? null : _modified.__copy__())))) == null ? null : _modified.in_(_timeZone(_msdosModified.sub((_modified == null ? null : _modified.__copy__())))).__copy__());
                };
            };
            _needUSize;
            if (_needCSize || _needHeaderOffset) {
                return errFormat;
            };
            return ((null : stdgo.Error));
        });
    }
function _readDataDescriptor(_r:stdgo.io.Io.Reader, _f:File):Error {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, ((_buf.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _off:GoInt = ((0 : GoInt));
        var _maybeSig:T_readBuf = (((((_buf.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)) : T_readBuf)) == null ? null : ((((_buf.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)) : T_readBuf)).__copy__());
        if (_maybeSig._uint32() != ((134695760 : GoUInt32))) {
            _off = _off + (((4 : GoInt)));
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, ((_buf.__slice__(_off, ((12 : GoInt))) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _b:T_readBuf = (((((_buf.__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>)) : T_readBuf)) == null ? null : ((((_buf.__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>)) : T_readBuf)).__copy__());
        if (_b._uint32() != _f.crc32) {
            return errChecksum;
        };
        return ((null : stdgo.Error));
    }
function _readDirectoryEnd(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):{ var _0 : T_directoryEnd; var _1 : Error; } {
        var _dir:T_directoryEnd = ((null : Ref<T_directoryEnd>)), _err:Error = ((null : stdgo.Error));
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _directoryEndOffset:GoInt64 = ((0 : GoInt64));
        for (_i => _bLen in ((new Slice<GoInt64>(((1024 : GoInt64)), ((66560 : GoInt64))) : Slice<GoInt64>))) {
            if (_bLen > _size) {
                _bLen = _size;
            };
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((_bLen : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = _r.readAt(_buf, _size - _bLen), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_err != null) && (_err != stdgo.io.Io.eof)) {
                    return { _0 : null, _1 : _err };
                };
            };
            {
                var _p:GoInt = _findSignatureInBlock(_buf);
                if (_p >= ((0 : GoInt))) {
                    _buf = ((_buf.__slice__(_p) : Slice<GoUInt8>));
                    _directoryEndOffset = (_size - _bLen) + ((_p : GoInt64));
                    break;
                };
            };
            if ((_i == ((1 : GoInt))) || (_bLen == _size)) {
                return { _0 : null, _1 : errFormat };
            };
        };
        var _b:T_readBuf = (((((_buf.__slice__(((4 : GoInt))) : Slice<GoUInt8>)) : T_readBuf)) == null ? null : ((((_buf.__slice__(((4 : GoInt))) : Slice<GoUInt8>)) : T_readBuf)).__copy__());
        var _d:Ref<T_directoryEnd> = (({ _diskNbr : ((_b._uint16() : GoUInt32)), _dirDiskNbr : ((_b._uint16() : GoUInt32)), _dirRecordsThisDisk : ((_b._uint16() : GoUInt64)), _directoryRecords : ((_b._uint16() : GoUInt64)), _directorySize : ((_b._uint32() : GoUInt64)), _directoryOffset : ((_b._uint32() : GoUInt64)), _commentLen : _b._uint16(), _comment : "" } : T_directoryEnd));
        var _l:GoInt = ((_d._commentLen : GoInt));
        if (_l > (_b != null ? _b.length : ((0 : GoInt)))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("zip: invalid comment length" : GoString)))) };
        };
        _d._comment = ((((_b.__slice__(0, _l) : T_readBuf)) : GoString));
        if (((_d._directoryRecords == ((65535 : GoUInt64))) || (_d._directorySize == ((65535 : GoUInt64)))) || (_d._directoryOffset == (("4294967295" : GoUInt64)))) {
            var __tmp__ = _findDirectory64End(_r, _directoryEndOffset), _p:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_p >= ((0 : GoInt64)))) {
                _err = _readDirectory64End(_r, _p, _d);
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _o:GoInt64 = ((_d._directoryOffset : GoInt64));
            if ((_o < ((0 : GoInt64))) || (_o >= _size)) {
                return { _0 : null, _1 : errFormat };
            };
        };
        return { _0 : _d, _1 : ((null : stdgo.Error)) };
    }
function _findDirectory64End(_r:stdgo.io.Io.ReaderAt, _directoryEndOffset:GoInt64):{ var _0 : GoInt64; var _1 : Error; } {
        var _locOffset:GoInt64 = _directoryEndOffset - ((20 : GoInt64));
        if (_locOffset < ((0 : GoInt64))) {
            return { _0 : ((-1 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((20 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.readAt(_buf, _locOffset), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((-1 : GoInt64)), _1 : _err };
            };
        };
        var _b:T_readBuf = (((_buf : T_readBuf)) == null ? null : ((_buf : T_readBuf)).__copy__());
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((117853008 : GoUInt32))) {
                return { _0 : ((-1 : GoInt64)), _1 : ((null : stdgo.Error)) };
            };
        };
        if (_b._uint32() != ((0 : GoUInt32))) {
            return { _0 : ((-1 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        var _p:GoUInt64 = _b._uint64();
        if (_b._uint32() != ((1 : GoUInt32))) {
            return { _0 : ((-1 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((_p : GoInt64)), _1 : ((null : stdgo.Error)) };
    }
function _readDirectory64End(_r:stdgo.io.Io.ReaderAt, _offset:GoInt64, _d:T_directoryEnd):Error {
        var _err:Error = ((null : stdgo.Error));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((56 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.readAt(_buf, _offset), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _b:T_readBuf = (((_buf : T_readBuf)) == null ? null : ((_buf : T_readBuf)).__copy__());
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((101075792 : GoUInt32))) {
                return errFormat;
            };
        };
        _b = (((_b.__slice__(((12 : GoInt))) : T_readBuf)) == null ? null : ((_b.__slice__(((12 : GoInt))) : T_readBuf)).__copy__());
        _d._diskNbr = _b._uint32();
        _d._dirDiskNbr = _b._uint32();
        _d._dirRecordsThisDisk = _b._uint64();
        _d._directoryRecords = _b._uint64();
        _d._directorySize = _b._uint64();
        _d._directoryOffset = _b._uint64();
        return ((null : stdgo.Error));
    }
function _findSignatureInBlock(_b:Slice<GoByte>):GoInt {
        {
            var _i:GoInt = (_b != null ? _b.length : ((0 : GoInt))) - ((22 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if (((((_b != null ? _b[_i] : ((0 : GoUInt8))) == ((((("P" : GoString))).code : GoRune))) && ((_b != null ? _b[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("K" : GoString))).code : GoRune)))) && ((_b != null ? _b[_i + ((2 : GoInt))] : ((0 : GoUInt8))) == ((5 : GoUInt8)))) && ((_b != null ? _b[_i + ((3 : GoInt))] : ((0 : GoUInt8))) == ((6 : GoUInt8)))) {
                    var _n:GoInt = (((_b != null ? _b[(_i + ((22 : GoInt))) - ((2 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_b != null ? _b[(_i + ((22 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
                    if (((_n + ((22 : GoInt))) + _i) <= (_b != null ? _b.length : ((0 : GoInt)))) {
                        return _i;
                    };
                };
            });
        };
        return ((-1 : GoInt));
    }
function _toValidName(_name:GoString):GoString {
        _name = stdgo.strings.Strings.replaceAll(_name, "\\", "/");
        var _p:GoString = stdgo.path.Path.clean(_name);
        if (stdgo.strings.Strings.hasPrefix(_p, ((("/" : GoString))))) {
            _p = ((_p.__slice__((((("/" : GoString))) != null ? ((("/" : GoString))).length : ((0 : GoInt)))) : GoString));
        };
        while (stdgo.strings.Strings.hasPrefix(_p, ((("../" : GoString))))) {
            _p = ((_p.__slice__((((("../" : GoString))) != null ? ((("../" : GoString))).length : ((0 : GoInt)))) : GoString));
        };
        return _p;
    }
function _fileEntryLess(_x:GoString, _y:GoString):Bool {
        var __tmp__ = _split(_x), _xdir:GoString = __tmp__._0, _xelem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
        var __tmp__ = _split(_y), _ydir:GoString = __tmp__._0, _yelem:GoString = __tmp__._1, _1:Bool = __tmp__._2;
        return (_xdir < _ydir) || ((_xdir == _ydir) && (_xelem < _yelem));
    }
function _split(_name:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Bool; } {
        var _dir:GoString = (("" : GoString)), _elem:GoString = (("" : GoString)), _isDir:Bool = false;
        if (((_name != null ? _name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_name != null ? _name[(_name != null ? _name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            _isDir = true;
            _name = ((_name.__slice__(0, (_name != null ? _name.length : ((0 : GoInt))) - ((1 : GoInt))) : GoString));
        };
        var _i:GoInt = (_name != null ? _name.length : ((0 : GoInt))) - ((1 : GoInt));
        while ((_i >= ((0 : GoInt))) && ((_name != null ? _name[_i] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune)))) {
            _i--;
        };
        if (_i < ((0 : GoInt))) {
            return { _0 : ((("." : GoString))), _1 : _name, _2 : _isDir };
        };
        return { _0 : ((_name.__slice__(0, _i) : GoString)), _1 : ((_name.__slice__(_i + ((1 : GoInt))) : GoString)), _2 : _isDir };
    }
function testReader(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _zt in _tests) {
            _t.run(_zt.name, function(_t:stdgo.testing.Testing.T_):Void {
                _readTestZip(_t, (_zt == null ? null : _zt.__copy__()));
            });
        };
    }
function _readTestZip(_t:stdgo.testing.Testing.T_, _zt:ZipTest):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _z:Reader = ((null : Ref<Reader>));
            var _err:Error = ((null : stdgo.Error));
            var _raw:Slice<GoByte> = ((null : Slice<GoUInt8>));
            if (_zt.source != null) {
                var __tmp__ = _zt.source(), _rat:stdgo.io.Io.ReaderAt = __tmp__._0, _size:GoInt64 = __tmp__._1;
                {
                    var __tmp__ = newReader(_rat, _size);
                    _z = __tmp__._0;
                    _err = __tmp__._1;
                };
                _raw = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
                {
                    var __tmp__ = _rat.readAt(_raw, ((0 : GoInt64))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(((("ReadAt error=%v" : GoString))), Go.toInterface(_err));
                        return;
                    };
                };
            } else {
                var _path:GoString = stdgo.path.filepath.Filepath.join(((("testdata" : GoString))), _zt.name);
                if (_zt.obscured) {
                    var __tmp__ = internal.obscuretestdata.Obscuretestdata.decodeToTempFile(_path), _tf:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(((("obscuretestdata.DecodeToTempFile(%s): %v" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
                        return;
                    };
                    {
                        var _a0 = _tf;
                        __deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
                    };
                    _path = _tf;
                };
                var _rc:ReadCloser = ((null : Ref<ReadCloser>));
                {
                    var __tmp__ = openReader(_path);
                    _rc = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    __deferstack__.unshift(() -> _rc.close());
                    _z = _rc.reader;
                };
                var _err2:Error = ((null : stdgo.Error));
                {
                    var __tmp__ = stdgo.os.Os.readFile(_path);
                    _raw = __tmp__._0;
                    _err2 = __tmp__._1;
                };
                if (_err2 != null) {
                    _t.errorf(((("ReadFile(%s) error=%v" : GoString))), Go.toInterface(_path), Go.toInterface(_err2));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
            };
            if (_err != _zt.error) {
                _t.errorf(((("error=%v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_zt.error));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_err == errFormat) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_zt.file == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_z.comment != _zt.comment) {
                _t.errorf(((("comment=%q, want %q" : GoString))), Go.toInterface(_z.comment), Go.toInterface(_zt.comment));
            };
            if ((_z.file != null ? _z.file.length : ((0 : GoInt))) != (_zt.file != null ? _zt.file.length : ((0 : GoInt)))) {
                _t.fatalf(((("file count=%d, want %d" : GoString))), Go.toInterface((_z.file != null ? _z.file.length : ((0 : GoInt)))), Go.toInterface((_zt.file != null ? _zt.file.length : ((0 : GoInt)))));
            };
            for (_i => _ft in _zt.file) {
                _readTestFile(_t, (_zt == null ? null : _zt.__copy__()), (_ft == null ? null : _ft.__copy__()), (_z.file != null ? _z.file[_i] : ((null : Ref<File>))), _raw);
            };
            if (_t.failed()) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _n:GoInt = ((0 : GoInt));
            var _done:Chan<Bool> = new Chan<Bool>(0, () -> false);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((5 : GoInt)), _i++, {
                    for (_j => _ft in _zt.file) {
                        Go.routine(() -> {
                            var a = function(_j:GoInt, _ft:ZipTestFile):Void {
                                _readTestFile(_t, (_zt == null ? null : _zt.__copy__()), (_ft == null ? null : _ft.__copy__()), (_z.file != null ? _z.file[_j] : ((null : Ref<File>))), _raw);
                                _done.__send__(true);
                            };
                            a(_j, (_ft == null ? null : _ft.__copy__()));
                        });
                        _n++;
                    };
                });
            };
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _done.__get__();
            });
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function _equalTimeAndZone(_t1:stdgo.time.Time.Time, _t2:stdgo.time.Time.Time):Bool {
        var __tmp__ = _t1.zone(), _name1:GoString = __tmp__._0, _offset1:GoInt = __tmp__._1;
        var __tmp__ = _t2.zone(), _name2:GoString = __tmp__._0, _offset2:GoInt = __tmp__._1;
        return (_t1.equal((_t2 == null ? null : _t2.__copy__())) && (_name1 == _name2)) && (_offset1 == _offset2);
    }
function _readTestFile(_t:stdgo.testing.Testing.T_, _zt:ZipTest, _ft:ZipTestFile, _f:File, _raw:Slice<GoByte>):Void {
        if (_f.name != _ft.name) {
            _t.errorf(((("name=%q, want %q" : GoString))), Go.toInterface(_f.name), Go.toInterface(_ft.name));
        };
        if (!_ft.modified.isZero() && !_equalTimeAndZone((_f.modified == null ? null : _f.modified.__copy__()), (_ft.modified == null ? null : _ft.modified.__copy__()))) {
            _t.errorf(((("%s: Modified=%s, want %s" : GoString))), Go.toInterface(_f.name), Go.toInterface(_f.modified), Go.toInterface(_ft.modified));
        };
        if (!_ft.modTime.isZero() && !_equalTimeAndZone((_f.modTime() == null ? null : _f.modTime().__copy__()), (_ft.modTime == null ? null : _ft.modTime.__copy__()))) {
            _t.errorf(((("%s: ModTime=%s, want %s" : GoString))), Go.toInterface(_f.name), Go.toInterface(_f.modTime()), Go.toInterface(_ft.modTime));
        };
        _testFileMode(_t, _f, _ft.mode);
        var _size:GoUInt64 = ((_f.uncompressedSize : GoUInt64));
        if (_size == (("4294967295" : GoUInt64))) {
            _size = _f.uncompressedSize64;
        } else if (_size != _f.uncompressedSize64) {
            _t.errorf(((("%v: UncompressedSize=%#x does not match UncompressedSize64=%#x" : GoString))), Go.toInterface(_f.name), Go.toInterface(_size), Go.toInterface(_f.uncompressedSize64));
        };
        var __tmp__ = _f.openRaw(), _rw:stdgo.io.Io.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("%v: OpenRaw error=%v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_err));
            return;
        };
        var __tmp__ = _f.dataOffset(), _start:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("%v: DataOffset error=%v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_err));
            return;
        };
        var __tmp__ = stdgo.io.Io.readAll(_rw), _got:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("%v: OpenRaw ReadAll error=%v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_err));
            return;
        };
        var _end:GoUInt64 = ((_start : GoUInt64)) + _f.compressedSize64;
        var _want:Slice<GoUInt8> = ((_raw.__slice__(_start, _end) : Slice<GoUInt8>));
        if (!stdgo.bytes.Bytes.equal(_got, _want)) {
            _t.logf(((("got %q" : GoString))), Go.toInterface(_got));
            _t.logf(((("want %q" : GoString))), Go.toInterface(_want));
            _t.errorf(((("%v: OpenRaw returned unexpected bytes" : GoString))), Go.toInterface(_f.name));
            return;
        };
        var __tmp__ = _f.open(), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("%v" : GoString))), Go.toInterface(_err));
            return;
        };
        if (((_ft.content == null) && (_ft.file == ((("" : GoString))))) && (_ft.size > ((0 : GoUInt64)))) {
            if (_size != _ft.size) {
                _t.errorf(((("%v: uncompressed size %#x, want %#x" : GoString))), Go.toInterface(_ft.name), Go.toInterface(_size), Go.toInterface(_ft.size));
            };
            _r.close();
            return;
        };
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        {
            var __tmp__ = stdgo.io.Io.copy(_b, _r);
            _err = __tmp__._1;
        };
        if (_err != _ft.contentErr) {
            _t.errorf(((("copying contents: %v (want %v)" : GoString))), Go.toInterface(_err), Go.toInterface(_ft.contentErr));
        };
        if (_err != null) {
            return;
        };
        _r.close();
        {
            var _g:GoUInt64 = ((_b.len() : GoUInt64));
            if (_g != _size) {
                _t.errorf(((("%v: read %v bytes but f.UncompressedSize == %v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_g), Go.toInterface(_size));
            };
        };
        var _c:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (_ft.content != null) {
            _c = _ft.content;
        } else {
            {
                var __tmp__ = stdgo.os.Os.readFile(((("testdata/" : GoString))) + _ft.file);
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.error(Go.toInterface(_err));
                return;
            };
        };
        if (_b.len() != (_c != null ? _c.length : ((0 : GoInt)))) {
            _t.errorf(((("%s: len=%d, want %d" : GoString))), Go.toInterface(_f.name), Go.toInterface(_b.len()), Go.toInterface((_c != null ? _c.length : ((0 : GoInt)))));
            return;
        };
        for (_i => _b in _b.bytes()) {
            if (_b != (_c != null ? _c[_i] : ((0 : GoUInt8)))) {
                _t.errorf(((("%s: content[%d]=%q want %q" : GoString))), Go.toInterface(_f.name), Go.toInterface(_i), Go.toInterface(_b), Go.toInterface((_c != null ? _c[_i] : ((0 : GoUInt8)))));
                return;
            };
        };
    }
function _testFileMode(_t:stdgo.testing.Testing.T_, _f:File, _want:stdgo.io.fs.Fs.FileMode):Void {
        var _mode:stdgo.io.fs.Fs.FileMode = _f.mode();
        if (_want == ((0 : GoUInt32))) {
            _t.errorf(((("%s mode: got %v, want none" : GoString))), Go.toInterface(_f.name), Go.toInterface(_mode));
        } else if (_mode != _want) {
            _t.errorf(((("%s mode: want %v, got %v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_want), Go.toInterface(_mode));
        };
    }
function testInvalidFiles(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((71680 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_b), ((71680 : GoInt64))), _0:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != errFormat) {
            _t.errorf(((("zeroes: error=%v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(errFormat));
        };
        var _sig:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.littleEndian.putUint32(_sig, ((101010256 : GoUInt32)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((71676 : GoInt)), _i = _i + (((4 : GoInt))), {
                Go.copySlice(((_b.__slice__(_i, _i + ((4 : GoInt))) : Slice<GoUInt8>)), _sig);
            });
        };
        {
            var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_b), ((71680 : GoInt64)));
            _err = __tmp__._1;
        };
        if (_err != errFormat) {
            _t.errorf(((("sigs: error=%v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(errFormat));
        };
        {
            var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(((((("foobar" : GoString))) : Slice<GoByte>))), ((-1 : GoInt64)));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.errorf(((("archive/zip.NewReader: expected error when negative size is passed" : GoString))));
        };
    }
function _messWith(_fileName:GoString, _corrupter:(_b:Slice<GoByte>) -> Void):{ var _0 : stdgo.io.Io.ReaderAt; var _1 : GoInt64; } {
        var _r:stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt)), _size:GoInt64 = ((0 : GoInt64));
        var __tmp__ = stdgo.os.Os.readFile(stdgo.path.filepath.Filepath.join(((("testdata" : GoString))), _fileName)), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(((((("Error reading " : GoString))) + _fileName) + (((": " : GoString)))) + _err.error());
        };
        _corrupter(_data);
        return { _0 : stdgo.bytes.Bytes.newReader(_data), _1 : (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64)) };
    }
function _returnCorruptCRC32Zip():{ var _0 : stdgo.io.Io.ReaderAt; var _1 : GoInt64; } {
        var _r:stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt)), _size:GoInt64 = ((0 : GoInt64));
        return _messWith(((("go-with-datadesc-sig.zip" : GoString))), function(_b:Slice<GoByte>):Void {
            (_b != null ? _b[((45 : GoInt))] : ((0 : GoUInt8)))++;
        });
    }
function _returnCorruptNotStreamedZip():{ var _0 : stdgo.io.Io.ReaderAt; var _1 : GoInt64; } {
        var _r:stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt)), _size:GoInt64 = ((0 : GoInt64));
        return _messWith(((("crc32-not-streamed.zip" : GoString))), function(_b:Slice<GoByte>):Void {
            (_b != null ? _b[((17 : GoInt))] : ((0 : GoUInt8)))++;
            (_b != null ? _b[((157 : GoInt))] : ((0 : GoUInt8)))++;
        });
    }
function _rZipBytes():Slice<GoByte> {
        var _s:GoString = "\n0000000 50 4b 03 04 14 00 00 00 08 00 08 03 64 3c f9 f4\n0000010 89 64 48 01 00 00 b8 01 00 00 07 00 00 00 72 2f\n0000020 72 2e 7a 69 70 00 25 00 da ff 50 4b 03 04 14 00\n0000030 00 00 08 00 08 03 64 3c f9 f4 89 64 48 01 00 00\n0000040 b8 01 00 00 07 00 00 00 72 2f 72 2e 7a 69 70 00\n0000050 2f 00 d0 ff 00 25 00 da ff 50 4b 03 04 14 00 00\n0000060 00 08 00 08 03 64 3c f9 f4 89 64 48 01 00 00 b8\n0000070 01 00 00 07 00 00 00 72 2f 72 2e 7a 69 70 00 2f\n0000080 00 d0 ff c2 54 8e 57 39 00 05 00 fa ff c2 54 8e\n0000090 57 39 00 05 00 fa ff 00 05 00 fa ff 00 14 00 eb\n00000a0 ff c2 54 8e 57 39 00 05 00 fa ff 00 05 00 fa ff\n00000b0 00 14 00 eb ff 42 88 21 c4 00 00 14 00 eb ff 42\n00000c0 88 21 c4 00 00 14 00 eb ff 42 88 21 c4 00 00 14\n00000d0 00 eb ff 42 88 21 c4 00 00 14 00 eb ff 42 88 21\n00000e0 c4 00 00 00 00 ff ff 00 00 00 ff ff 00 34 00 cb\n00000f0 ff 42 88 21 c4 00 00 00 00 ff ff 00 00 00 ff ff\n0000100 00 34 00 cb ff 42 e8 21 5e 0f 00 00 00 ff ff 0a\n0000110 f0 66 64 12 61 c0 15 dc e8 a0 48 bf 48 af 2a b3\n0000120 20 c0 9b 95 0d c4 67 04 42 53 06 06 06 40 00 06\n0000130 00 f9 ff 6d 01 00 00 00 00 42 e8 21 5e 0f 00 00\n0000140 00 ff ff 0a f0 66 64 12 61 c0 15 dc e8 a0 48 bf\n0000150 48 af 2a b3 20 c0 9b 95 0d c4 67 04 42 53 06 06\n0000160 06 40 00 06 00 f9 ff 6d 01 00 00 00 00 50 4b 01\n0000170 02 14 00 14 00 00 00 08 00 08 03 64 3c f9 f4 89\n0000180 64 48 01 00 00 b8 01 00 00 07 00 00 00 00 00 00\n0000190 00 00 00 00 00 00 00 00 00 00 00 72 2f 72 2e 7a\n00001a0 69 70 50 4b 05 06 00 00 00 00 01 00 01 00 35 00\n00001b0 00 00 6d 01 00 00 00 00";
        _s = stdgo.regexp.Regexp.mustCompile("[0-9a-f]{7}").replaceAllString(_s, ((("" : GoString))));
        _s = stdgo.regexp.Regexp.mustCompile("\\s+").replaceAllString(_s, ((("" : GoString))));
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_s), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        return _b;
    }
function _returnRecursiveZip():{ var _0 : stdgo.io.Io.ReaderAt; var _1 : GoInt64; } {
        var _r:stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt)), _size:GoInt64 = ((0 : GoInt64));
        var _b:Slice<GoUInt8> = _rZipBytes();
        return { _0 : stdgo.bytes.Bytes.newReader(_b), _1 : (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) };
    }
function _biggestZipBytes():Slice<GoByte> {
        var _s:GoString = "\n0000000 50 4b 03 04 14 00 08 00 08 00 00 00 00 00 00 00\n0000010 00 00 00 00 00 00 00 00 00 00 0a 00 00 00 62 69\n0000020 67 67 65 72 2e 7a 69 70 ec dc 6b 4c 53 67 18 07\n0000030 f0 16 c5 ca 65 2e cb b8 94 20 61 1f 44 33 c7 cd\n0000040 c0 86 4a b5 c0 62 8a 61 05 c6 cd 91 b2 54 8c 1b\n0000050 63 8b 03 9c 1b 95 52 5a e3 a0 19 6c b2 05 59 44\n0000060 64 9d 73 83 71 11 46 61 14 b9 1d 14 09 4a c3 60\n0000070 2e 4c 6e a5 60 45 02 62 81 95 b6 94 9e 9e 77 e7\n0000080 d0 43 b6 f8 71 df 96 3c e7 a4 69 ce bf cf e9 79\n0000090 ce ef 79 3f bf f1 31 db b6 bb 31 76 92 e7 f3 07\n00000a0 8b fc 9c ca cc 08 cc cb cc 5e d2 1c 88 d9 7e bb\n00000b0 4f bb 3a 3f 75 f1 5d 7f 8f c2 68 67 77 8f 25 ff\n00000c0 84 e2 93 2d ef a4 95 3d 71 4e 2c b9 b0 87 c3 be\n00000d0 3d f8 a7 60 24 61 c5 ef ae 9e c8 6c 6d 4e 69 c8\n00000e0 67 65 34 f8 37 76 2d 76 5c 54 f3 95 65 49 c7 0f\n00000f0 18 71 4b 7e 5b 6a d1 79 47 61 41 b0 4e 2a 74 45\n0000100 43 58 12 b2 5a a5 c6 7d 68 55 88 d4 98 75 18 6d\n0000110 08 d1 1f 8f 5a 9e 96 ee 45 cf a4 84 4e 4b e8 50\n0000120 a7 13 d9 06 de 52 81 97 36 b2 d7 b8 fc 2b 5f 55\n0000130 23 1f 32 59 cf 30 27 fb e2 8a b9 de 45 dd 63 9c\n0000140 4b b5 8b 96 4c 7a 62 62 cc a1 a7 cf fa f1 fe dd\n0000150 54 62 11 bf 36 78 b3 c7 b1 b5 f2 61 4d 4e dd 66\n0000160 32 2e e6 70 34 5f f4 c9 e6 6c 43 6f da 6b c6 c3\n0000170 09 2c ce 09 57 7f d2 7e b4 23 ba 7c 1b 99 bc 22\n0000180 3e f1 de 91 2f e3 9c 1b 82 cc c2 84 39 aa e6 de\n0000190 b4 69 fc cc cb 72 a6 61 45 f0 d3 1d 26 19 7c 8d\n00001a0 29 c8 66 02 be 77 6a f9 3d 34 79 17 19 c8 96 24\n00001b0 a3 ac e4 dd 3b 1a 8e c6 fe 96 38 6b bf 67 5a 23\n00001c0 f4 16 f4 e6 8a b4 fc c2 cd bf 95 66 1d bb 35 aa\n00001d0 92 7d 66 d8 08 8d a5 1f 54 2a af 09 cf 61 ff d2\n00001e0 85 9d 8f b6 d7 88 07 4a 86 03 db 64 f3 d9 92 73\n00001f0 df ec a7 fc 23 4c 8d 83 79 63 2a d9 fd 8d b3 c8\n0000200 8f 7e d4 19 85 e6 8d 1c 76 f0 8b 58 32 fd 9a d6\n0000210 85 e2 48 ad c3 d5 60 6f 7e 22 dd ef 09 49 7c 7f\n0000220 3a 45 c3 71 b7 df f3 4c 63 fb b5 d9 31 5f 6e d6\n0000230 24 1d a4 4a fe 32 a7 5c 16 48 5c 3e 08 6b 8a d3\n0000240 25 1d a2 12 a5 59 24 ea 20 5f 52 6d ad 94 db 6b\n0000250 94 b9 5d eb 4b a7 5c 44 bb 1e f2 3c 6b cf 52 c9\n0000260 e9 e5 ba 06 b9 c4 e5 0a d0 00 0d d0 00 0d d0 00\n0000270 0d d0 00 0d d0 00 0d d0 00 0d d0 00 0d d0 00 0d\n0000280 d0 00 0d d0 00 0d d0 00 0d d0 00 0d d0 00 0d d0\n0000290 00 0d d0 00 0d d0 00 0d d0 00 0d d0 00 0d d0 00\n00002a0 0d d0 00 cd ff 9e 46 86 fa a7 7d 3a 43 d7 8e 10\n00002b0 52 e9 be e6 6e cf eb 9e 85 4d 65 ce cc 30 c1 44\n00002c0 c0 4e af bc 9c 6c 4b a0 d7 54 ff 1d d5 5c 89 fb\n00002d0 b5 34 7e c4 c2 9e f5 a0 f6 5b 7e 6e ca 73 c7 ef\n00002e0 5d be de f9 e8 81 eb a5 0a a5 63 54 2c d7 1c d1\n00002f0 89 17 85 f8 16 94 f2 8a b2 a3 f5 b6 6d df 75 cd\n0000300 90 dd 64 bd 5d 55 4e f2 55 19 1b b7 cc ef 1b ea\n0000310 2e 05 9c f4 aa 1e a8 cd a6 82 c7 59 0f 5e 9d e0\n0000320 bb fc 6c d6 99 23 eb 36 ad c6 c5 e1 d8 e1 e2 3e\n0000330 d9 90 5a f7 91 5d 6f bc 33 6d 98 47 d2 7c 2e 2f\n0000340 99 a4 25 72 85 49 2c be 0b 5b af 8f e5 6e 81 a6\n0000350 a3 5a 6f 39 53 3a ab 7a 8b 1e 26 f7 46 6c 7d 26\n0000360 53 b3 22 31 94 d3 83 f2 18 4d f5 92 33 27 53 97\n0000370 0f d3 e6 55 9c a6 c5 31 87 6f d3 f3 ae 39 6f 56\n0000380 10 7b ab 7e d0 b4 ca f2 b8 05 be 3f 0e 6e 5a 75\n0000390 ab 0c f5 37 0e ba 8e 75 71 7a aa ed 7a dd 6a 63\n00003a0 be 9b a0 97 27 6a 6f e7 d3 8b c4 7c ec d3 91 56\n00003b0 d9 ac 5e bf 16 42 2f 00 1f 93 a2 23 87 bd e2 59\n00003c0 a0 de 1a 66 c8 62 eb 55 8f 91 17 b4 61 42 7a 50\n00003d0 40 03 34 40 03 34 40 03 34 40 03 34 40 03 34 40\n00003e0 03 34 40 03 34 40 03 34 40 03 34 40 03 34 40 03\n00003f0 34 40 03 34 40 03 34 ff 85 86 90 8b ea 67 90 0d\n0000400 e1 42 1b d2 61 d6 79 ec fd 3e 44 28 a4 51 6c 5c\n0000410 fc d2 72 ca ba 82 18 46 16 61 cd 93 a9 0f d1 24\n0000420 17 99 e2 2c 71 16 84 0c c8 7a 13 0f 9a 5e c5 f0\n0000430 79 64 e2 12 4d c8 82 a1 81 19 2d aa 44 6d 87 54\n0000440 84 71 c1 f6 d4 ca 25 8c 77 b9 08 c7 c8 5e 10 8a\n0000450 8f 61 ed 8c ba 30 1f 79 9a c7 60 34 2b b9 8c f8\n0000460 18 a6 83 1b e3 9f ad 79 fe fd 1b 8b f1 fc 41 6f\n0000470 d4 13 1f e3 b8 83 ba 64 92 e7 eb e4 77 05 8f ba\n0000480 fa 3b 00 00 ff ff 50 4b 07 08 a6 18 b1 91 5e 04\n0000490 00 00 e4 47 00 00 50 4b 01 02 14 00 14 00 08 00\n00004a0 08 00 00 00 00 00 a6 18 b1 91 5e 04 00 00 e4 47\n00004b0 00 00 0a 00 00 00 00 00 00 00 00 00 00 00 00 00\n00004c0 00 00 00 00 62 69 67 67 65 72 2e 7a 69 70 50 4b\n00004d0 05 06 00 00 00 00 01 00 01 00 38 00 00 00 96 04\n00004e0 00 00 00 00";
        _s = stdgo.regexp.Regexp.mustCompile("[0-9a-f]{7}").replaceAllString(_s, ((("" : GoString))));
        _s = stdgo.regexp.Regexp.mustCompile("\\s+").replaceAllString(_s, ((("" : GoString))));
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_s), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        return _b;
    }
function _returnBigZipBytes():{ var _0 : stdgo.io.Io.ReaderAt; var _1 : GoInt64; } {
        var _r:stdgo.io.Io.ReaderAt = ((null : stdgo.io.Io.ReaderAt)), _size:GoInt64 = ((0 : GoInt64));
        var _b:Slice<GoUInt8> = _biggestZipBytes();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)), _i++, {
                var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_b), (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    throw Go.toInterface(_err);
                };
                var __tmp__ = (_r.file != null ? _r.file[((0 : GoInt))] : ((null : Ref<File>))).open(), _f:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    throw Go.toInterface(_err);
                };
                {
                    var __tmp__ = stdgo.io.Io.readAll(_f);
                    _b = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    throw Go.toInterface(_err);
                };
            });
        };
        return { _0 : stdgo.bytes.Bytes.newReader(_b), _1 : (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) };
    }
function testIssue8186(_t:stdgo.testing.Testing.T_):Void {
        var _dirEnts:Slice<GoString> = ((new Slice<GoString>(((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + (("\n" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("\n" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?" : GoString)) + ((haxe.io.Bytes.ofHex("aa") : GoString)) + ((haxe.io.Bytes.ofHex("1b") : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString)) + ((haxe.io.Bytes.ofHex("f0") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("-" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("res/drawable-xhdpi-v4/ic_actionbar_accept.png" : GoString)) + ((haxe.io.Bytes.ofHex("fe") : GoString)) + ((haxe.io.Bytes.ofHex("ca") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + (("\n" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("\n" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?" : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + (("K" : GoString)) + ((haxe.io.Bytes.ofHex("89") : GoString)) + ((haxe.io.Bytes.ofHex("c7") : GoString)) + (("t\n" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("t\n" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("0e") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("d1") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("resources.arsc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("$$" : GoString)) + ((haxe.io.Bytes.ofHex("18") : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + (("3" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("b4") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("13") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("t\r" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("AndroidManifest.xml" : GoString))), ((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?" : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("c5") : GoString)) + (("K" : GoString)) + ((haxe.io.Bytes.ofHex("ab") : GoString)) + ((haxe.io.Bytes.ofHex("19") : GoString)) + (("2" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("c8") : GoString)) + ((haxe.io.Bytes.ofHex("cd") : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("\x0B" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("e8") : GoString)) + ((haxe.io.Bytes.ofHex("10") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("classes.dex" : GoString))), ((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?E" : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + (("\nD" : GoString)) + ((haxe.io.Bytes.ofHex("ac") : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("P" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("&" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((":C" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("res/layout/actionbar_set_wallpaper.xml" : GoString))), ((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?Ļ" : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("e3") : GoString)) + ((haxe.io.Bytes.ofHex("d8") : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("d8") : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((" " : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((":E" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("res/layout/wallpaper_cropper.xml" : GoString))), ((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?}" : GoString)) + ((haxe.io.Bytes.ofHex("c1") : GoString)) + ((haxe.io.Bytes.ofHex("15") : GoString)) + ((haxe.io.Bytes.ofHex("9e") : GoString)) + (("Z" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("!" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("`G" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("META-INF/MANIFEST.MF" : GoString))), ((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?" : GoString)) + ((haxe.io.Bytes.ofHex("e6") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("Ьo" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("84") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("10") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("fc") : GoString)) + (("H" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("META-INF/CERT.SF" : GoString))), ((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("4" : GoString)) + ((haxe.io.Bytes.ofHex("9d") : GoString)) + (("3?" : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + (("P" : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("86") : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("b2") : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("11") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("a9") : GoString)) + (("J" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("META-INF/CERT.RSA" : GoString)))) : Slice<GoString>));
        for (_i => _s in _dirEnts) {
            var _f:File = new File();
            var _err:stdgo.Error = _readDirectoryHeader(_f, stdgo.strings.Strings.newReader(_s));
            if (_err != null) {
                _t.errorf(((("error reading #%d: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
            };
        };
    }
function testIssue10957(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString)) + (("0000000PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + (("000000000000000000000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("000000000000PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + (("000000000000000000000000\x0B" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00000000000000000000000PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + (("000000000000000000000000\x0B" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00000000000000000000000PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + (("0000<0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00000000000000\x0B" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("\x0B" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00000000000PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + (("000000000000000000000000\x0B" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00PK" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString)) + (("000000" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("0000\x0B" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : Slice<GoByte>));
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_data), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64))), _z:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (_i => _f in _z.file) {
            var __tmp__ = _f.open(), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            if (_f.uncompressedSize64 < ((1e+06 : GoUInt64))) {
                var __tmp__ = stdgo.io.Io.copy(stdgo.io.Io.discard, _r), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_i == ((3 : GoInt))) && (_err != stdgo.io.Io.errUnexpectedEOF)) {
                    _t.errorf(((("File[3] error = %v; want io.ErrUnexpectedEOF" : GoString))), Go.toInterface(_err));
                };
                if ((_err == null) && (((_n : GoUInt64)) != _f.uncompressedSize64)) {
                    _t.errorf(((("file %d: bad size: copied=%d; want=%d" : GoString))), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface(_f.uncompressedSize64));
                };
            };
            _r.close();
        };
    }
function testIssue10956(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString)) + (("PK" : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString)) + (("0000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("0000PK" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString)) + (("0000000000000000\x0B" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("0" : GoString))) : Slice<GoByte>));
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_data), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.errorf(((("got nil error, want ErrFormat" : GoString))));
        };
        if (_r != null) {
            _t.errorf(((("got non-nil Reader, want nil" : GoString))));
        };
    }
function testIssue11146(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((((("PK" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString)) + (("0000000000000000000000" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("0" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + (("00000000000000000000PK" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + (("0000" : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + (("0" : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("000000000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("0000PK" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00008" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : Slice<GoByte>));
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_data), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64))), _z:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = (_z.file != null ? _z.file[((0 : GoInt))] : ((null : Ref<File>))).open(), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo.io.Io.readAll(_r);
            _err = __tmp__._1;
        };
        if (_err != stdgo.io.Io.errUnexpectedEOF) {
            _t.errorf(((("File[0] error = %v; want io.ErrUnexpectedEOF" : GoString))), Go.toInterface(_err));
        };
        _r.close();
    }
function testIssue12449(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((new Slice<GoUInt8>(
((80 : GoUInt8)),
((75 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((107 : GoUInt8)),
((180 : GoUInt8)),
((186 : GoUInt8)),
((70 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((24 : GoUInt8)),
((0 : GoUInt8)),
((202 : GoUInt8)),
((100 : GoUInt8)),
((85 : GoUInt8)),
((117 : GoUInt8)),
((120 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((73 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((68 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((49 : GoUInt8)),
((49 : GoUInt8)),
((49 : GoUInt8)),
((50 : GoUInt8)),
((50 : GoUInt8)),
((50 : GoUInt8)),
((10 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((29 : GoUInt8)),
((136 : GoUInt8)),
((119 : GoUInt8)),
((176 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((20 : GoUInt8)),
((3 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((107 : GoUInt8)),
((180 : GoUInt8)),
((186 : GoUInt8)),
((70 : GoUInt8)),
((29 : GoUInt8)),
((136 : GoUInt8)),
((119 : GoUInt8)),
((176 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((24 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((160 : GoUInt8)),
((129 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((202 : GoUInt8)),
((100 : GoUInt8)),
((85 : GoUInt8)),
((117 : GoUInt8)),
((120 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((73 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((68 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((151 : GoUInt8)),
((43 : GoUInt8)),
((73 : GoUInt8)),
((35 : GoUInt8)),
((5 : GoUInt8)),
((197 : GoUInt8)),
((11 : GoUInt8)),
((167 : GoUInt8)),
((209 : GoUInt8)),
((82 : GoUInt8)),
((162 : GoUInt8)),
((156 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((200 : GoUInt8)),
((25 : GoUInt8)),
((193 : GoUInt8)),
((175 : GoUInt8)),
((148 : GoUInt8)),
((156 : GoUInt8)),
((97 : GoUInt8)),
((68 : GoUInt8)),
((190 : GoUInt8)),
((148 : GoUInt8)),
((25 : GoUInt8)),
((66 : GoUInt8)),
((88 : GoUInt8)),
((18 : GoUInt8)),
((198 : GoUInt8)),
((91 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((105 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>));
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(((_data : Slice<GoByte>))), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64))), _0:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("Error reading the archive: %v" : GoString))), Go.toInterface(_err));
        };
    }
function testFS(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in ((new Slice<T__struct_0>(((new T__struct_0(((("testdata/unix.zip" : GoString))), ((new Slice<GoString>(((("hello" : GoString))), ((("dir/bar" : GoString))), ((("readonly" : GoString)))) : Slice<GoString>))) : T__struct_0)), ((new T__struct_0(((("testdata/subdir.zip" : GoString))), ((new Slice<GoString>(((("a/b/c" : GoString)))) : Slice<GoString>))) : T__struct_0))) : Slice<T__struct_0>))) {
            _t.run(_test._file, function(_t:stdgo.testing.Testing.T_):Void {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t.parallel();
                    var __tmp__ = openReader(_test._file), _z:Ref<ReadCloser> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _z.close());
                    {
                        var _err:stdgo.Error = stdgo.testing.fstest.Fstest.testFS(_z, ..._test._want.__toArray__());
                        if (_err != null) {
                            _t.error(Go.toInterface(_err));
                        };
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                } catch(__exception__) {
                    if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                    __recover_exception__ = __exception__.native;
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (__recover_exception__ != null) throw __recover_exception__;
                        return;
                    };
                };
            });
        };
    }
function testFSModTime(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = openReader(((("testdata/subdir.zip" : GoString)))), _z:Ref<ReadCloser> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _z.close());
            for (_0 => _test in ((new Slice<T__struct_1>(((new T__struct_1(((("a" : GoString))), (stdgo.time.Time.date(((2021 : GoInt)), ((4 : GoInt)), ((19 : GoInt)), ((12 : GoInt)), ((29 : GoInt)), ((56 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).utc() == null ? null : stdgo.time.Time.date(((2021 : GoInt)), ((4 : GoInt)), ((19 : GoInt)), ((12 : GoInt)), ((29 : GoInt)), ((56 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).utc().__copy__())) : T__struct_1)), ((new T__struct_1(((("a/b/c" : GoString))), (stdgo.time.Time.date(((2021 : GoInt)), ((4 : GoInt)), ((19 : GoInt)), ((12 : GoInt)), ((29 : GoInt)), ((59 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).utc() == null ? null : stdgo.time.Time.date(((2021 : GoInt)), ((4 : GoInt)), ((19 : GoInt)), ((12 : GoInt)), ((29 : GoInt)), ((59 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).utc().__copy__())) : T__struct_1))) : Slice<T__struct_1>))) {
                var __tmp__ = stdgo.io.fs.Fs.stat(_z, _test._name), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("%s: %v" : GoString))), Go.toInterface(_test._name), Go.toInterface(_err));
                    continue;
                };
                {
                    var _got:stdgo.time.Time.Time = (_fi.modTime() == null ? null : _fi.modTime().__copy__());
                    if (!_got.equal((_test._want == null ? null : _test._want.__copy__()))) {
                        _t.errorf(((("%s: got modtime %v, want %v" : GoString))), Go.toInterface(_test._name), Go.toInterface(_got), Go.toInterface(_test._want));
                    };
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testCVE202127919(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((new Slice<GoUInt8>(
((80 : GoUInt8)),
((75 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((46 : GoUInt8)),
((46 : GoUInt8)),
((47 : GoUInt8)),
((116 : GoUInt8)),
((101 : GoUInt8)),
((115 : GoUInt8)),
((116 : GoUInt8)),
((46 : GoUInt8)),
((116 : GoUInt8)),
((120 : GoUInt8)),
((116 : GoUInt8)),
((10 : GoUInt8)),
((201 : GoUInt8)),
((200 : GoUInt8)),
((44 : GoUInt8)),
((86 : GoUInt8)),
((200 : GoUInt8)),
((44 : GoUInt8)),
((86 : GoUInt8)),
((72 : GoUInt8)),
((84 : GoUInt8)),
((40 : GoUInt8)),
((73 : GoUInt8)),
((45 : GoUInt8)),
((46 : GoUInt8)),
((81 : GoUInt8)),
((40 : GoUInt8)),
((73 : GoUInt8)),
((173 : GoUInt8)),
((40 : GoUInt8)),
((81 : GoUInt8)),
((72 : GoUInt8)),
((203 : GoUInt8)),
((204 : GoUInt8)),
((73 : GoUInt8)),
((213 : GoUInt8)),
((227 : GoUInt8)),
((2 : GoUInt8)),
((4 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((192 : GoUInt8)),
((215 : GoUInt8)),
((237 : GoUInt8)),
((195 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((26 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((192 : GoUInt8)),
((215 : GoUInt8)),
((237 : GoUInt8)),
((195 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((26 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((46 : GoUInt8)),
((46 : GoUInt8)),
((47 : GoUInt8)),
((116 : GoUInt8)),
((101 : GoUInt8)),
((115 : GoUInt8)),
((116 : GoUInt8)),
((46 : GoUInt8)),
((116 : GoUInt8)),
((120 : GoUInt8)),
((116 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((57 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((89 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>));
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(((_data : Slice<GoByte>))), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("Error reading the archive: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.open(((("test.txt" : GoString))));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(((("Error reading file: %v" : GoString))), Go.toInterface(_err));
        };
        if ((_r.file != null ? _r.file.length : ((0 : GoInt))) != ((1 : GoInt))) {
            _t.fatalf(((("No entries in the file list" : GoString))));
        };
        if ((_r.file != null ? _r.file[((0 : GoInt))] : ((null : Ref<File>))).name != ((("../test.txt" : GoString)))) {
            _t.errorf(((("Unexpected entry name: %s" : GoString))), Go.toInterface((_r.file != null ? _r.file[((0 : GoInt))] : ((null : Ref<File>))).name));
        };
        {
            var __tmp__ = (_r.file != null ? _r.file[((0 : GoInt))] : ((null : Ref<File>))).open(), _0:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Error opening file: %v" : GoString))), Go.toInterface(_err));
            };
        };
    }
function testCVE202133196(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((new Slice<GoUInt8>(
((80 : GoUInt8)),
((75 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((98 : GoUInt8)),
((97 : GoUInt8)),
((101 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((190 : GoUInt8)),
((32 : GoUInt8)),
((92 : GoUInt8)),
((108 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((190 : GoUInt8)),
((32 : GoUInt8)),
((92 : GoUInt8)),
((108 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((44 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((45 : GoUInt8)),
((0 : GoUInt8)),
((45 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((49 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((58 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((107 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>));
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_data), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64))), _0:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != errFormat) {
            _t.fatalf(((("unexpected error, got: %v, want: %v" : GoString))), Go.toInterface(_err), Go.toInterface(errFormat));
        };
        var _b:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(((null : Slice<GoUInt8>)));
        var _w:Ref<Writer> = newWriter(_b);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                var __tmp__ = _w.create(((("" : GoString)))), _1:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((("Writer.Create failed: %s" : GoString))), Go.toInterface(_err));
                };
            });
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatalf(((("Writer.Close failed: %s" : GoString))), Go.toInterface(_err));
            };
        };
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_b.bytes()), ((_b.len() : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("NewReader failed: %s" : GoString))), Go.toInterface(_err));
        };
        if ((_r.file != null ? _r.file.length : ((0 : GoInt))) != ((5 : GoInt))) {
            _t.errorf(((("Archive has unexpected number of files, got %d, want 5" : GoString))), Go.toInterface((_r.file != null ? _r.file.length : ((0 : GoInt)))));
        };
    }
function testCVE202139293(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((new Slice<GoUInt8>(
((80 : GoUInt8)),
((75 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((49 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((26 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((49 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((80 : GoUInt8)),
((254 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((0 : GoUInt8)),
((58 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8))) : Slice<GoUInt8>));
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_data), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64))), _0:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != errFormat) {
            _t.fatalf(((("unexpected error, got: %v, want: %v" : GoString))), Go.toInterface(_err), Go.toInterface(errFormat));
        };
    }
function testCVE202141772(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((new Slice<GoUInt8>(
((80 : GoUInt8)),
((75 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((148 : GoUInt8)),
((5 : GoUInt8)),
((83 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((47 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((120 : GoUInt8)),
((103 : GoUInt8)),
((46 : GoUInt8)),
((83 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((2 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((47 : GoUInt8)),
((47 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((120 : GoUInt8)),
((103 : GoUInt8)),
((46 : GoUInt8)),
((83 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((92 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((145 : GoUInt8)),
((104 : GoUInt8)),
((46 : GoUInt8)),
((83 : GoUInt8)),
((133 : GoUInt8)),
((17 : GoUInt8)),
((74 : GoUInt8)),
((13 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((47 : GoUInt8)),
((116 : GoUInt8)),
((101 : GoUInt8)),
((115 : GoUInt8)),
((116 : GoUInt8)),
((46 : GoUInt8)),
((116 : GoUInt8)),
((120 : GoUInt8)),
((116 : GoUInt8)),
((104 : GoUInt8)),
((101 : GoUInt8)),
((108 : GoUInt8)),
((108 : GoUInt8)),
((111 : GoUInt8)),
((32 : GoUInt8)),
((119 : GoUInt8)),
((111 : GoUInt8)),
((114 : GoUInt8)),
((108 : GoUInt8)),
((100 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((20 : GoUInt8)),
((3 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((148 : GoUInt8)),
((5 : GoUInt8)),
((83 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((16 : GoUInt8)),
((0 : GoUInt8)),
((237 : GoUInt8)),
((65 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((47 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((63 : GoUInt8)),
((0 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((120 : GoUInt8)),
((103 : GoUInt8)),
((46 : GoUInt8)),
((83 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((2 : GoUInt8)),
((0 : GoUInt8)),
((36 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((31 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((47 : GoUInt8)),
((47 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((24 : GoUInt8)),
((0 : GoUInt8)),
((147 : GoUInt8)),
((152 : GoUInt8)),
((37 : GoUInt8)),
((87 : GoUInt8)),
((37 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((147 : GoUInt8)),
((152 : GoUInt8)),
((37 : GoUInt8)),
((87 : GoUInt8)),
((37 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((147 : GoUInt8)),
((152 : GoUInt8)),
((37 : GoUInt8)),
((87 : GoUInt8)),
((37 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((63 : GoUInt8)),
((0 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((120 : GoUInt8)),
((103 : GoUInt8)),
((46 : GoUInt8)),
((83 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((36 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((63 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((92 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((24 : GoUInt8)),
((0 : GoUInt8)),
((147 : GoUInt8)),
((152 : GoUInt8)),
((37 : GoUInt8)),
((87 : GoUInt8)),
((37 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((147 : GoUInt8)),
((152 : GoUInt8)),
((37 : GoUInt8)),
((87 : GoUInt8)),
((37 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((147 : GoUInt8)),
((152 : GoUInt8)),
((37 : GoUInt8)),
((87 : GoUInt8)),
((37 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((63 : GoUInt8)),
((0 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((145 : GoUInt8)),
((104 : GoUInt8)),
((46 : GoUInt8)),
((83 : GoUInt8)),
((133 : GoUInt8)),
((17 : GoUInt8)),
((74 : GoUInt8)),
((13 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((36 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((94 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((47 : GoUInt8)),
((116 : GoUInt8)),
((101 : GoUInt8)),
((115 : GoUInt8)),
((116 : GoUInt8)),
((46 : GoUInt8)),
((116 : GoUInt8)),
((120 : GoUInt8)),
((116 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((24 : GoUInt8)),
((0 : GoUInt8)),
((169 : GoUInt8)),
((128 : GoUInt8)),
((81 : GoUInt8)),
((1 : GoUInt8)),
((38 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((49 : GoUInt8)),
((209 : GoUInt8)),
((87 : GoUInt8)),
((1 : GoUInt8)),
((38 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((223 : GoUInt8)),
((72 : GoUInt8)),
((133 : GoUInt8)),
((249 : GoUInt8)),
((37 : GoUInt8)),
((169 : GoUInt8)),
((215 : GoUInt8)),
((1 : GoUInt8)),
((80 : GoUInt8)),
((75 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((4 : GoUInt8)),
((0 : GoUInt8)),
((4 : GoUInt8)),
((0 : GoUInt8)),
((49 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((144 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>));
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(((_data : Slice<GoByte>))), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("Error reading the archive: %v" : GoString))), Go.toInterface(_err));
        };
        var _entryNames:Slice<GoString> = ((new Slice<GoString>("/", "//", "\\", "/test.txt") : Slice<GoString>));
        var _names:Slice<GoString> = ((null : Slice<GoString>));
        for (_0 => _f in _r.file) {
            _names = (_names != null ? _names.__append__(_f.name) : new Slice<GoString>(_f.name));
            {
                var __tmp__ = _f.open(), _1:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("Error opening %q: %v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = _r.open(_f.name), _2:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(((("Opening %q with fs.FS API succeeded" : GoString))), Go.toInterface(_f.name));
                };
            };
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_names), Go.toInterface(_entryNames))) {
            _t.errorf(((("Unexpected file entries: %q" : GoString))), Go.toInterface(_names));
        };
        {
            var __tmp__ = _r.open(((("" : GoString)))), _3:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(((("Opening %q with fs.FS API succeeded" : GoString))), Go.toInterface(((("" : GoString)))));
            };
        };
        {
            var __tmp__ = _r.open(((("test.txt" : GoString)))), _4:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Error opening %q with fs.FS API: %v" : GoString))), Go.toInterface(((("test.txt" : GoString)))), Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo.io.fs.Fs.readDir(_r, ((("." : GoString)))), _dirEntries:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("Error reading the root directory: %v" : GoString))), Go.toInterface(_err));
        };
        if (((_dirEntries != null ? _dirEntries.length : ((0 : GoInt))) != ((1 : GoInt))) || ((_dirEntries != null ? _dirEntries[((0 : GoInt))] : ((null : stdgo.io.fs.Fs.DirEntry))).name() != ((("test.txt" : GoString))))) {
            _t.errorf(((("Unexpected directory entries" : GoString))));
            for (_5 => _dirEntry in _dirEntries) {
                var __tmp__ = _r.open(_dirEntry.name()), _6:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _t.logf(((("%q (Open error: %v)" : GoString))), Go.toInterface(_dirEntry.name()), Go.toInterface(_err));
            };
            _t.failNow();
        };
        var __tmp__ = (_dirEntries != null ? _dirEntries[((0 : GoInt))] : ((null : stdgo.io.fs.Fs.DirEntry))).info(), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("Error reading info entry: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var _name:GoString = _info.name();
            if (_name != ((("test.txt" : GoString)))) {
                _t.errorf(((("Inconsistent name in info entry: %v" : GoString))), Go.toInterface(_name));
            };
        };
    }
function _newFlateWriter(_w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        var __tmp__ = try {
            { value : ((_flateWriterPool.get().value : stdgo.compress.flate.Flate.Writer)), ok : true };
        } catch(_) {
            { value : ((null : Ref<stdgo.compress.flate.Flate.Writer>)), ok : false };
        }, _fw = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            _fw.reset(_w);
        } else {
            {
                var __tmp__ = stdgo.compress.flate.Flate.newWriter(_w, ((5 : GoInt)));
                _fw = __tmp__._0;
            };
        };
        return (({ _fw : _fw, _mu : new stdgo.sync.Sync.Mutex() } : T_pooledFlateWriter));
    }
function _newFlateReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.ReadCloser {
        var __tmp__ = try {
            { value : ((_flateReaderPool.get().value : stdgo.io.Io.ReadCloser)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.ReadCloser)), ok : false };
        }, _fr = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            ((((_fr.__underlying__().value : Dynamic)) : stdgo.compress.flate.Flate.Resetter)).reset(_r, ((null : Slice<GoUInt8>)));
        } else {
            _fr = stdgo.compress.flate.Flate.newReader(_r);
        };
        return (({ _fr : _fr, _mu : new stdgo.sync.Sync.Mutex() } : T_pooledFlateReader));
    }
function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor):Void {
        {
            var __tmp__ = _decompressors.loadOrStore(Go.toInterface(_method), Go.toInterface(_dcomp)), _0:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw Go.toInterface(((("decompressor already registered" : GoString))));
            };
        };
    }
function registerCompressor(_method:GoUInt16, _comp:Compressor):Void {
        {
            var __tmp__ = _compressors.loadOrStore(Go.toInterface(_method), Go.toInterface(_comp)), _0:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw Go.toInterface(((("compressor already registered" : GoString))));
            };
        };
    }
function _compressor(_method:GoUInt16):Compressor {
        var __tmp__ = _compressors.load(Go.toInterface(_method)), _ci:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return null;
        };
        return ((((_ci.value : Dynamic)).__t__ : Compressor));
    }
function _decompressor(_method:GoUInt16):Decompressor {
        var __tmp__ = _decompressors.load(Go.toInterface(_method)), _di:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return null;
        };
        return ((((_di.value : Dynamic)).__t__ : Decompressor));
    }
function fileInfoHeader(_fi:stdgo.io.fs.Fs.FileInfo):{ var _0 : FileHeader; var _1 : Error; } {
        var _size:GoInt64 = _fi.size();
        var _fh:Ref<FileHeader> = (({ name : _fi.name(), uncompressedSize64 : ((_size : GoUInt64)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        _fh.setModTime((_fi.modTime() == null ? null : _fi.modTime().__copy__()));
        _fh.setMode(_fi.mode());
        if (_fh.uncompressedSize64 > (("4294967295" : GoUInt64))) {
            _fh.uncompressedSize = (("4294967295" : GoUInt32));
        } else {
            _fh.uncompressedSize = ((_fh.uncompressedSize64 : GoUInt32));
        };
        return { _0 : _fh, _1 : ((null : stdgo.Error)) };
    }
function _timeZone(_offset:stdgo.time.Time.Duration):stdgo.time.Time.Location {
        {};
        _offset = _offset.round((("900000000000" : GoInt64)));
        if ((_offset < (("-43200000000000" : GoInt64))) || ((("50400000000000" : GoInt64)) < _offset)) {
            _offset = ((0 : GoInt64));
        };
        return stdgo.time.Time.fixedZone(((("" : GoString))), (((_offset / ((1000000000 : GoInt64))) : GoInt)));
    }
function _msDosTimeToTime(_dosDate:GoUInt16, _dosTime:GoUInt16):stdgo.time.Time.Time {
        return (stdgo.time.Time.date(((((_dosDate >> ((9 : GoUnTypedInt))) + ((1980 : GoUInt16))) : GoInt)), ((((_dosDate >> ((5 : GoUnTypedInt))) & ((15 : GoUInt16))) : stdgo.time.Time.Month)), (((_dosDate & ((31 : GoUInt16))) : GoInt)), (((_dosTime >> ((11 : GoUnTypedInt))) : GoInt)), ((((_dosTime >> ((5 : GoUnTypedInt))) & ((63 : GoUInt16))) : GoInt)), ((((_dosTime & ((31 : GoUInt16))) * ((2 : GoUInt16))) : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((((_dosDate >> ((9 : GoUnTypedInt))) + ((1980 : GoUInt16))) : GoInt)), ((((_dosDate >> ((5 : GoUnTypedInt))) & ((15 : GoUInt16))) : stdgo.time.Time.Month)), (((_dosDate & ((31 : GoUInt16))) : GoInt)), (((_dosTime >> ((11 : GoUnTypedInt))) : GoInt)), ((((_dosTime >> ((5 : GoUnTypedInt))) & ((63 : GoUInt16))) : GoInt)), ((((_dosTime & ((31 : GoUInt16))) * ((2 : GoUInt16))) : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
    }
function _timeToMsDosTime(_t:stdgo.time.Time.Time):{ var _0 : GoUInt16; var _1 : GoUInt16; } {
        var _fDate:GoUInt16 = ((0 : GoUInt16)), _fTime:GoUInt16 = ((0 : GoUInt16));
        _fDate = ((((_t.day() + (((_t.month() : GoInt)) << ((5 : GoUnTypedInt)))) + ((_t.year() - ((1980 : GoInt))) << ((9 : GoUnTypedInt)))) : GoUInt16));
        _fTime = (((((_t.second() / ((2 : GoInt))) + (_t.minute() << ((5 : GoUnTypedInt)))) + (_t.hour() << ((11 : GoUnTypedInt)))) : GoUInt16));
        return { _0 : _fDate, _1 : _fTime };
    }
function _msdosModeToFileMode(_m:GoUInt32):stdgo.io.fs.Fs.FileMode {
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        if ((_m & ((16 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = (("2147484159" : GoUInt32));
        } else {
            _mode = ((438 : GoUInt32));
        };
        if ((_m & ((1 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = _mode & ((((146 : GoUInt32))) ^ ((-1 : GoUnTypedInt)));
        };
        return _mode;
    }
function _fileModeToUnixMode(_mode:stdgo.io.fs.Fs.FileMode):GoUInt32 {
        var _m:GoUInt32 = ((0 : GoUInt32));
        if (_mode & (("2401763328" : GoUInt32)) == (("2147483648" : GoUInt32))) {
            _m = ((16384 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((134217728 : GoUInt32))) {
            _m = ((40960 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((33554432 : GoUInt32))) {
            _m = ((4096 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((16777216 : GoUInt32))) {
            _m = ((49152 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((67108864 : GoUInt32))) {
            _m = ((24576 : GoUInt32));
        } else if (_mode & (("2401763328" : GoUInt32)) == ((69206016 : GoUInt32))) {
            _m = ((8192 : GoUInt32));
        };
        if ((_mode & ((8388608 : GoUInt32))) != ((0 : GoUInt32))) {
            _m = _m | (((2048 : GoUInt32)));
        };
        if ((_mode & ((4194304 : GoUInt32))) != ((0 : GoUInt32))) {
            _m = _m | (((1024 : GoUInt32)));
        };
        if ((_mode & ((1048576 : GoUInt32))) != ((0 : GoUInt32))) {
            _m = _m | (((512 : GoUInt32)));
        };
        return _m | (((_mode & ((511 : GoUInt32))) : GoUInt32));
    }
function _unixModeToFileMode(_m:GoUInt32):stdgo.io.fs.Fs.FileMode {
        var _mode:stdgo.io.fs.Fs.FileMode = (((_m & ((511 : GoUInt32))) : stdgo.io.fs.Fs.FileMode));
        if (_m & ((61440 : GoUInt32)) == ((24576 : GoUInt32))) {
            _mode = _mode | (((67108864 : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((8192 : GoUInt32))) {
            _mode = _mode | (((69206016 : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((16384 : GoUInt32))) {
            _mode = _mode | ((("2147483648" : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((4096 : GoUInt32))) {
            _mode = _mode | (((33554432 : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((40960 : GoUInt32))) {
            _mode = _mode | (((134217728 : GoUInt32)));
        } else if (_m & ((61440 : GoUInt32)) == ((32768 : GoUInt32))) {} else if (_m & ((61440 : GoUInt32)) == ((49152 : GoUInt32))) {
            _mode = _mode | (((16777216 : GoUInt32)));
        };
        if ((_m & ((1024 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = _mode | (((4194304 : GoUInt32)));
        };
        if ((_m & ((2048 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = _mode | (((8388608 : GoUInt32)));
        };
        if ((_m & ((512 : GoUInt32))) != ((0 : GoUInt32))) {
            _mode = _mode | (((1048576 : GoUInt32)));
        };
        return _mode;
    }
function newWriter(_w:stdgo.io.Io.Writer):Writer {
        return (({ _cw : (({ _w : stdgo.bufio.Bufio.newWriter(_w), _count : 0 } : T_countWriter)), _dir : ((null : Slice<Ref<T_header>>)), _last : ((null : Ref<T_fileWriter>)), _closed : false, _compressors : ((null : GoMap<GoUInt16, Compressor>)), _comment : "", _testHookCloseSizeOffset : null } : Writer));
    }
function _detectUTF8(_s:GoString):{ var _0 : Bool; var _1 : Bool; } {
        var _valid:Bool = false, _require:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_s.__slice__(_i) : GoString))), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                _i = _i + (_size);
                if (((_r < ((32 : GoInt32))) || (_r > ((125 : GoInt32)))) || (_r == ((92 : GoInt32)))) {
                    if (!stdgo.unicode.utf8.Utf8.validRune(_r) || ((_r == ((65533 : GoInt32))) && (_size == ((1 : GoInt))))) {
                        return { _0 : false, _1 : false };
                    };
                    _require = true;
                };
            };
        };
        return { _0 : true, _1 : _require };
    }
function _writeHeader(_w:stdgo.io.Io.Writer, _h:T_header):Error {
        {};
        if ((_h.name != null ? _h.name.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return _errLongName;
        };
        if ((_h.extra != null ? _h.extra.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return _errLongExtra;
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
        _b._uint32(((((67324752 : GoUInt32)) : GoUInt32)));
        _b._uint16(_h.readerVersion);
        _b._uint16(_h.flags);
        _b._uint16(_h.method);
        _b._uint16(_h.modifiedTime);
        _b._uint16(_h.modifiedDate);
        if (_h._raw && !_h._hasDataDescriptor()) {
            _b._uint32(_h.crc32);
            _b._uint32(((_min64(_h.compressedSize64, (("4294967295" : GoUInt64))) : GoUInt32)));
            _b._uint32(((_min64(_h.uncompressedSize64, (("4294967295" : GoUInt64))) : GoUInt32)));
        } else {
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
        };
        _b._uint16((((_h.name != null ? _h.name.length : ((0 : GoInt))) : GoUInt16)));
        _b._uint16((((_h.extra != null ? _h.extra.length : ((0 : GoInt))) : GoUInt16)));
        {
            var __tmp__ = _w.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_w, _h.name), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _w.write(_h.extra), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
function _min64(_x:GoUInt64, _y:GoUInt64):GoUInt64 {
        if (_x < _y) {
            return _x;
        };
        return _y;
    }
function testWriter(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _largeData:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((131072 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.math.rand.Rand.read(_largeData), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("rand.Read failed:" : GoString)))), Go.toInterface(_err));
                };
            };
            (_writeTests != null ? _writeTests[((1 : GoInt))] : new WriteTest()).data = _largeData;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    (_writeTests != null ? _writeTests[((1 : GoInt))] : new WriteTest()).data = ((null : Slice<GoUInt8>));
                };
                a();
            });
            var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
            var _w:Ref<Writer> = newWriter(_buf);
            for (_1 => _wt in _writeTests) {
                _testCreate(_t, _w, _wt);
            };
            {
                var _err:stdgo.Error = _w.close();
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_buf.bytes()), ((_buf.len() : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            for (_i => _wt in _writeTests) {
                _testReadFile(_t, (_r.file != null ? _r.file[_i] : ((null : Ref<File>))), _wt);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testWriterComment(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<T__struct_2> = ((new Slice<T__struct_2>(((new T__struct_2(((("hi, hello" : GoString))), true) : T__struct_2)), ((new T__struct_2(((("hi, こんにちわ" : GoString))), true) : T__struct_2)), ((new T__struct_2(stdgo.strings.Strings.repeat(((("a" : GoString))), ((65535 : GoInt))), true) : T__struct_2)), ((new T__struct_2(stdgo.strings.Strings.repeat(((("a" : GoString))), ((65536 : GoInt))), false) : T__struct_2))) : Slice<T__struct_2>));
        for (_0 => _test in _tests) {
            var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
            var _w:Ref<Writer> = newWriter(_buf);
            {
                var _err:stdgo.Error = _w.setComment(_test._comment);
                if (_err != null) {
                    if (_test._ok) {
                        _t.fatalf(((("SetComment: unexpected error %v" : GoString))), Go.toInterface(_err));
                    };
                    continue;
                } else {
                    if (!_test._ok) {
                        _t.fatalf(((("SetComment: unexpected success, want error" : GoString))));
                    };
                };
            };
            {
                var _err:stdgo.Error = _w.close();
                if (_test._ok == (_err != null)) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            if (_w._closed != _test._ok) {
                _t.fatalf(((("Writer.closed: got %v, want %v" : GoString))), Go.toInterface(_w._closed), Go.toInterface(_test._ok));
            };
            if (!_test._ok) {
                continue;
            };
            var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_buf.bytes()), ((_buf.len() : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_r.comment != _test._comment) {
                _t.fatalf(((("Reader.Comment: got %v, want %v" : GoString))), Go.toInterface(_r.comment), Go.toInterface(_test._comment));
            };
        };
    }
function testWriterUTF8(_t:stdgo.testing.Testing.T_):Void {
        var _utf8Tests:Slice<T__struct_3> = ((new Slice<T__struct_3>(((({ _name : ((("hi, hello" : GoString))), _comment : ((("in the world" : GoString))), _flags : ((8 : GoUInt16)), _nonUTF8 : false } : T__struct_3)) == null ? null : (({ _name : ((("hi, hello" : GoString))), _comment : ((("in the world" : GoString))), _flags : ((8 : GoUInt16)), _nonUTF8 : false } : T__struct_3)).__copy__()), ((({ _name : ((("hi, こんにちわ" : GoString))), _comment : ((("in the world" : GoString))), _flags : ((2056 : GoUInt16)), _nonUTF8 : false } : T__struct_3)) == null ? null : (({ _name : ((("hi, こんにちわ" : GoString))), _comment : ((("in the world" : GoString))), _flags : ((2056 : GoUInt16)), _nonUTF8 : false } : T__struct_3)).__copy__()), ((({ _name : ((("hi, こんにちわ" : GoString))), _comment : ((("in the world" : GoString))), _nonUTF8 : true, _flags : ((8 : GoUInt16)) } : T__struct_3)) == null ? null : (({ _name : ((("hi, こんにちわ" : GoString))), _comment : ((("in the world" : GoString))), _nonUTF8 : true, _flags : ((8 : GoUInt16)) } : T__struct_3)).__copy__()), ((({ _name : ((("hi, hello" : GoString))), _comment : ((("in the 世界" : GoString))), _flags : ((2056 : GoUInt16)), _nonUTF8 : false } : T__struct_3)) == null ? null : (({ _name : ((("hi, hello" : GoString))), _comment : ((("in the 世界" : GoString))), _flags : ((2056 : GoUInt16)), _nonUTF8 : false } : T__struct_3)).__copy__()), ((({ _name : ((("hi, こんにちわ" : GoString))), _comment : ((("in the 世界" : GoString))), _flags : ((2056 : GoUInt16)), _nonUTF8 : false } : T__struct_3)) == null ? null : (({ _name : ((("hi, こんにちわ" : GoString))), _comment : ((("in the 世界" : GoString))), _flags : ((2056 : GoUInt16)), _nonUTF8 : false } : T__struct_3)).__copy__()), ((({ _name : ((("the replacement rune is �" : GoString))), _comment : ((("the replacement rune is �" : GoString))), _flags : ((2056 : GoUInt16)), _nonUTF8 : false } : T__struct_3)) == null ? null : (({ _name : ((("the replacement rune is �" : GoString))), _comment : ((("the replacement rune is �" : GoString))), _flags : ((2056 : GoUInt16)), _nonUTF8 : false } : T__struct_3)).__copy__()), ((({ _name : (((haxe.io.Bytes.ofHex("93") : GoString)) + ((haxe.io.Bytes.ofHex("fa") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + (("{" : GoString)) + ((haxe.io.Bytes.ofHex("8c") : GoString)) + ((haxe.io.Bytes.ofHex("ea") : GoString)) + ((".txt" : GoString))), _comment : ((("in the 世界" : GoString))), _flags : ((8 : GoUInt16)), _nonUTF8 : false } : T__struct_3)) == null ? null : (({ _name : (((haxe.io.Bytes.ofHex("93") : GoString)) + ((haxe.io.Bytes.ofHex("fa") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + (("{" : GoString)) + ((haxe.io.Bytes.ofHex("8c") : GoString)) + ((haxe.io.Bytes.ofHex("ea") : GoString)) + ((".txt" : GoString))), _comment : ((("in the 世界" : GoString))), _flags : ((8 : GoUInt16)), _nonUTF8 : false } : T__struct_3)).__copy__())) : Slice<T__struct_3>));
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = newWriter(_buf);
        for (_0 => _test in _utf8Tests) {
            var _h:Ref<FileHeader> = (({ name : _test._name, comment : _test._comment, nonUTF8 : _test._nonUTF8, method : ((8 : GoUInt16)), creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
            var __tmp__ = _w.createHeader(_h), _w:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            _w.write(((new Slice<GoUInt8>() : Slice<GoUInt8>)));
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_buf.bytes()), ((_buf.len() : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (_i => _test in _utf8Tests) {
            var _flags:GoUInt16 = (_r.file != null ? _r.file[_i] : ((null : Ref<File>))).flags;
            if (_flags != _test._flags) {
                _t.errorf(((("CreateHeader(name=%q comment=%q nonUTF8=%v): flags=%#x, want %#x" : GoString))), Go.toInterface(_test._name), Go.toInterface(_test._comment), Go.toInterface(_test._nonUTF8), Go.toInterface(_flags), Go.toInterface(_test._flags));
            };
        };
    }
function testWriterTime(_t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _h:Ref<FileHeader> = (({ name : ((("test.txt" : GoString))), modified : (stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((10 : GoInt)), ((31 : GoInt)), ((21 : GoInt)), ((11 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), _timeZone((("-25200000000000" : GoInt64)))).__copy__()), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        var _w:Ref<Writer> = newWriter(_buf);
        {
            var __tmp__ = _w.createHeader(_h), _0:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("unexpected CreateHeader error: %v" : GoString))), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatalf(((("unexpected Close error: %v" : GoString))), Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo.os.Os.readFile(((("testdata/time-go.zip" : GoString)))), _want:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("unexpected ReadFile error: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var _got:Slice<GoUInt8> = _buf.bytes();
            if (!stdgo.bytes.Bytes.equal(_got, _want)) {
                stdgo.fmt.Fmt.printf(((("%x\n%x\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
                _t.error(Go.toInterface(((("contents of time-go.zip differ" : GoString)))));
            };
        };
    }
function testWriterOffset(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _largeData:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((131072 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.math.rand.Rand.read(_largeData), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("rand.Read failed:" : GoString)))), Go.toInterface(_err));
                };
            };
            (_writeTests != null ? _writeTests[((1 : GoInt))] : new WriteTest()).data = _largeData;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    (_writeTests != null ? _writeTests[((1 : GoInt))] : new WriteTest()).data = ((null : Slice<GoUInt8>));
                };
                a();
            });
            var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
            var _existingData:Slice<GoUInt8> = ((new Slice<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8))) : Slice<GoUInt8>));
            var __tmp__ = _buf.write(_existingData), _n:GoInt = __tmp__._0, _1:stdgo.Error = __tmp__._1;
            var _w:Ref<Writer> = newWriter(_buf);
            _w.setOffset(((_n : GoInt64)));
            for (_2 => _wt in _writeTests) {
                _testCreate(_t, _w, _wt);
            };
            {
                var _err:stdgo.Error = _w.close();
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_buf.bytes()), ((_buf.len() : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            for (_i => _wt in _writeTests) {
                _testReadFile(_t, (_r.file != null ? _r.file[_i] : ((null : Ref<File>))), _wt);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testWriterFlush(_t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = newWriter(((new T_nopCloser(_buf) : T_nopCloser)));
        var __tmp__ = _w.create(((("foo" : GoString)))), _0:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (_buf.len() > ((0 : GoInt))) {
            _t.fatalf(((("Unexpected %d bytes already in buffer" : GoString))), Go.toInterface(_buf.len()));
        };
        {
            var _err:stdgo.Error = _w.flush();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if (_buf.len() == ((0 : GoInt))) {
            _t.fatal(Go.toInterface(((("No bytes written after Flush" : GoString)))));
        };
    }
function testWriterDir(_t:stdgo.testing.Testing.T_):Void {
        var _w:Ref<Writer> = newWriter(stdgo.io.Io.discard);
        var __tmp__ = _w.create(((("dir/" : GoString)))), _dw:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = _dw.write(((null : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Write(nil) to directory: got %v, want nil" : GoString))), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _dw.write(((((("hello" : GoString))) : Slice<GoByte>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(Go.toInterface("Write(\"hello\") to directory: got nil error, want non-nil"));
            };
        };
    }
function testWriterDirAttributes(_t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = newWriter(_buf);
        {
            var __tmp__ = _w.createHeader((({ name : ((("dir/" : GoString))), method : ((8 : GoUInt16)), compressedSize64 : ((1234 : GoUInt64)), uncompressedSize64 : ((5678 : GoUInt64)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader))), _0:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _b:Slice<GoUInt8> = _buf.bytes();
        var _sig:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.littleEndian.putUint32(((_sig.__slice__(0) : Slice<GoUInt8>)), ((((67324752 : GoUInt32)) : GoUInt32)));
        var _idx:GoInt = stdgo.bytes.Bytes.index(_b, ((_sig.__slice__(0) : Slice<GoUInt8>)));
        if (_idx == ((-1 : GoInt))) {
            _t.fatal(Go.toInterface(((("file header not found" : GoString)))));
        };
        _b = ((_b.__slice__(_idx) : Slice<GoUInt8>));
        if (!stdgo.bytes.Bytes.equal(((_b.__slice__(((6 : GoInt)), ((10 : GoInt))) : Slice<GoUInt8>)), ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))) : Slice<GoUInt8>)))) {
            _t.errorf(((("unexpected method and flags: %v" : GoString))), Go.toInterface(((_b.__slice__(((6 : GoInt)), ((10 : GoInt))) : Slice<GoUInt8>))));
        };
        if (!stdgo.bytes.Bytes.equal(((_b.__slice__(((14 : GoInt)), ((26 : GoInt))) : Slice<GoUInt8>)), new Slice<GoUInt8>(...[for (i in 0 ... ((((12 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]))) {
            _t.errorf(((("unexpected crc, compress and uncompressed size to be 0 was: %v" : GoString))), Go.toInterface(((_b.__slice__(((14 : GoInt)), ((26 : GoInt))) : Slice<GoUInt8>))));
        };
        stdgo.encoding.binary.Binary.littleEndian.putUint32(((_sig.__slice__(0) : Slice<GoUInt8>)), ((((134695760 : GoUInt32)) : GoUInt32)));
        if (stdgo.bytes.Bytes.contains(_b, ((_sig.__slice__(0) : Slice<GoUInt8>)))) {
            _t.error(Go.toInterface(((("there should be no data descriptor" : GoString)))));
        };
    }
function testWriterCopy(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = newWriter(_buf);
        for (_0 => _wt in _writeTests) {
            _testCreate(_t, _w, _wt);
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_buf.bytes()), ((_buf.len() : GoInt64))), _src:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (_i => _wt in _writeTests) {
            _testReadFile(_t, (_src.file != null ? _src.file[_i] : ((null : Ref<File>))), _wt);
        };
        var _buf2:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _dst:Ref<Writer> = newWriter(_buf2);
        for (_1 => _f in _src.file) {
            {
                var _err:stdgo.Error = _dst.copy(_f);
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
        };
        {
            var _err:stdgo.Error = _dst.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_buf2.bytes()), ((_buf2.len() : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (_i => _wt in _writeTests) {
            _testReadFile(_t, (_r.file != null ? _r.file[_i] : ((null : Ref<File>))), _wt);
        };
    }
function testWriterCreateRaw(_t:stdgo.testing.Testing.T_):Void {
        var _files:Slice<T__struct_5> = ((new Slice<T__struct_5>(((({ _name : ((("small store w desc" : GoString))), _content : ((((("gophers" : GoString))) : Slice<GoByte>)), _method : ((0 : GoUInt16)), _flags : ((8 : GoUInt16)), _crc32 : 0, _uncompressedSize : 0, _compressedSize : 0 } : T__struct_5)) == null ? null : (({ _name : ((("small store w desc" : GoString))), _content : ((((("gophers" : GoString))) : Slice<GoByte>)), _method : ((0 : GoUInt16)), _flags : ((8 : GoUInt16)), _crc32 : 0, _uncompressedSize : 0, _compressedSize : 0 } : T__struct_5)).__copy__()), ((({ _name : ((("small deflate wo desc" : GoString))), _content : stdgo.bytes.Bytes.repeat(((((("abcdefg" : GoString))) : Slice<GoByte>)), ((2048 : GoInt))), _method : ((8 : GoUInt16)), _flags : 0, _crc32 : 0, _uncompressedSize : 0, _compressedSize : 0 } : T__struct_5)) == null ? null : (({ _name : ((("small deflate wo desc" : GoString))), _content : stdgo.bytes.Bytes.repeat(((((("abcdefg" : GoString))) : Slice<GoByte>)), ((2048 : GoInt))), _method : ((8 : GoUInt16)), _flags : 0, _crc32 : 0, _uncompressedSize : 0, _compressedSize : 0 } : T__struct_5)).__copy__())) : Slice<T__struct_5>));
        var _archive:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = newWriter(_archive);
        for (_i => _ in _files) {
            var _f:Ref<T__struct_5> = (_files != null ? _files[_i] : new T__struct_5());
            _f._crc32 = stdgo.hash.crc32.Crc32.checksumIEEE(_f._content);
            var _size:GoUInt64 = (((_f._content != null ? _f._content.length : ((0 : GoInt))) : GoUInt64));
            _f._uncompressedSize = _size;
            _f._compressedSize = _size;
            var _compressedContent:Slice<GoByte> = ((null : Slice<GoUInt8>));
            if (_f._method == ((8 : GoUInt16))) {
                var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                var __tmp__ = stdgo.compress.flate.Flate.newWriter(_buf, ((1 : GoInt))), _w:Ref<stdgo.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((("flate.NewWriter err = %v" : GoString))), Go.toInterface(_err));
                };
                {
                    var __tmp__ = _w.write(_f._content);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(((("flate Write err = %v" : GoString))), Go.toInterface(_err));
                };
                _err = _w.close();
                if (_err != null) {
                    _t.fatalf(((("flate Writer.Close err = %v" : GoString))), Go.toInterface(_err));
                };
                _compressedContent = _buf.bytes();
                _f._compressedSize = (((_compressedContent != null ? _compressedContent.length : ((0 : GoInt))) : GoUInt64));
            };
            var _h:Ref<FileHeader> = (({ name : _f._name, method : _f._method, flags : _f._flags, crc32 : _f._crc32, compressedSize64 : _f._compressedSize, uncompressedSize64 : _f._uncompressedSize, comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, compressedSize : 0, uncompressedSize : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
            var __tmp__ = _w.createRaw(_h), _w:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_compressedContent != null) {
                {
                    var __tmp__ = _w.write(_compressedContent);
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = _w.write(_f._content);
                    _err = __tmp__._1;
                };
            };
            if (_err != null) {
                _t.fatalf(((("%s Write got %v; want nil" : GoString))), Go.toInterface(_f._name), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_archive.bytes()), ((_archive.len() : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (_i => _want in _files) {
            var _got:Ref<File> = (_r.file != null ? _r.file[_i] : ((null : Ref<File>)));
            if (_got.name != _want._name) {
                _t.errorf(((("got Name %s; want %s" : GoString))), Go.toInterface(_got.name), Go.toInterface(_want._name));
            };
            if (_got.method != _want._method) {
                _t.errorf(((("%s: got Method %#x; want %#x" : GoString))), Go.toInterface(_want._name), Go.toInterface(_got.method), Go.toInterface(_want._method));
            };
            if (_got.flags != _want._flags) {
                _t.errorf(((("%s: got Flags %#x; want %#x" : GoString))), Go.toInterface(_want._name), Go.toInterface(_got.flags), Go.toInterface(_want._flags));
            };
            if (_got.crc32 != _want._crc32) {
                _t.errorf(((("%s: got CRC32 %#x; want %#x" : GoString))), Go.toInterface(_want._name), Go.toInterface(_got.crc32), Go.toInterface(_want._crc32));
            };
            if (_got.compressedSize64 != _want._compressedSize) {
                _t.errorf(((("%s: got CompressedSize64 %d; want %d" : GoString))), Go.toInterface(_want._name), Go.toInterface(_got.compressedSize64), Go.toInterface(_want._compressedSize));
            };
            if (_got.uncompressedSize64 != _want._uncompressedSize) {
                _t.errorf(((("%s: got UncompressedSize64 %d; want %d" : GoString))), Go.toInterface(_want._name), Go.toInterface(_got.uncompressedSize64), Go.toInterface(_want._uncompressedSize));
            };
            var __tmp__ = _got.open(), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("%s: Open err = %v" : GoString))), Go.toInterface(_got.name), Go.toInterface(_err));
                continue;
            };
            var __tmp__ = stdgo.io.Io.readAll(_r), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("%s: ReadAll err = %v" : GoString))), Go.toInterface(_got.name), Go.toInterface(_err));
                continue;
            };
            if (!stdgo.bytes.Bytes.equal(_buf, _want._content)) {
                _t.errorf(((("%v: ReadAll returned unexpected bytes" : GoString))), Go.toInterface(_got.name));
            };
        };
    }
function _testCreate(_t:stdgo.testing.Testing.T_, _w:Writer, _wt:WriteTest):Void {
        var _header:Ref<FileHeader> = (({ name : _wt.name, method : _wt.method, comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        if (_wt.mode != ((0 : GoUInt32))) {
            _header.setMode(_wt.mode);
        };
        var __tmp__ = _w.createHeader(_header), _f:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = _f.write(_wt.data);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
    }
function _testReadFile(_t:stdgo.testing.Testing.T_, _f:File, _wt:WriteTest):Void {
        if (_f.name != _wt.name) {
            _t.fatalf(((("File name: got %q, want %q" : GoString))), Go.toInterface(_f.name), Go.toInterface(_wt.name));
        };
        _testFileMode(_t, _f, _wt.mode);
        var __tmp__ = _f.open(), _rc:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("opening %s: %v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_err));
        };
        var __tmp__ = stdgo.io.Io.readAll(_rc), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("reading %s: %v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_err));
        };
        _err = _rc.close();
        if (_err != null) {
            _t.fatalf(((("closing %s: %v" : GoString))), Go.toInterface(_f.name), Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_b, _wt.data)) {
            _t.errorf(((("File contents %q, want %q" : GoString))), Go.toInterface(_b), Go.toInterface(_wt.data));
        };
    }
function benchmarkCompressedZipGarbage(_b:stdgo.testing.Testing.B):Void {
        var _bigBuf:Slice<GoUInt8> = stdgo.bytes.Bytes.repeat(((((("a" : GoString))) : Slice<GoByte>)), ((1048576 : GoInt)));
        var _runOnce:Ref<stdgo.bytes.Bytes.Buffer> -> Void = function(_buf:stdgo.bytes.Bytes.Buffer):Void {
            _buf.reset();
            var _zw:Ref<Writer> = newWriter(_buf);
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j < ((3 : GoInt)), _j++, {
                    var __tmp__ = _zw.createHeader((({ name : ((("foo" : GoString))), method : ((8 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader))), _w:stdgo.io.Io.Writer = __tmp__._0, _0:stdgo.Error = __tmp__._1;
                    _w.write(_bigBuf);
                });
            };
            _zw.close();
        };
        _b.reportAllocs();
        _runOnce(((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)));
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.testing.Testing.PB):Void {
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            while (_pb.next()) {
                _runOnce(_buf);
            };
        });
    }
function testOver65kFiles(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short() && (stdgo.internal.testenv.Testenv.builder() == ((("" : GoString))))) {
            _t.skip(Go.toInterface(((("skipping in short mode" : GoString)))));
        };
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = newWriter(_buf);
        {};
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((65578 : GoInt)), _i++, {
                var __tmp__ = _w.createHeader((({ name : stdgo.fmt.Fmt.sprintf(((("%d.dat" : GoString))), Go.toInterface(_i)), method : ((0 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader))), _0:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((("creating file %d: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
                };
            });
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatalf(((("Writer.Close: %v" : GoString))), Go.toInterface(_err));
            };
        };
        var _s:GoString = ((_buf.toString() : GoString));
        var __tmp__ = newReader(stdgo.strings.Strings.newReader(_s), (((_s != null ? _s.length : ((0 : GoInt))) : GoInt64))), _zr:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("NewReader: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var _got:GoInt = (_zr.file != null ? _zr.file.length : ((0 : GoInt)));
            if (_got != ((65578 : GoInt))) {
                _t.fatalf(((("File contains %d files, want %d" : GoString))), Go.toInterface(_got), Go.toInterface(((65578 : GoInt))));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((65578 : GoInt)), _i++, {
                var _want:GoString = stdgo.fmt.Fmt.sprintf(((("%d.dat" : GoString))), Go.toInterface(_i));
                if ((_zr.file != null ? _zr.file[_i] : ((null : Ref<File>))).name != _want) {
                    _t.fatalf(((("File(%d) = %q, want %q" : GoString))), Go.toInterface(_i), Go.toInterface((_zr.file != null ? _zr.file[_i] : ((null : Ref<File>))).name), Go.toInterface(_want));
                };
            });
        };
    }
function testModTime(_t:stdgo.testing.Testing.T_):Void {
        var _testTime:stdgo.time.Time.Time = stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((45 : GoInt)), ((58 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc);
        var _fh:Ref<FileHeader> = new FileHeader();
        _fh.setModTime((_testTime == null ? null : _testTime.__copy__()));
        var _outTime:stdgo.time.Time.Time = (_fh.modTime() == null ? null : _fh.modTime().__copy__());
        if (!_outTime.equal((_testTime == null ? null : _testTime.__copy__()))) {
            _t.errorf(((("times don\'t match: got %s, want %s" : GoString))), Go.toInterface(_outTime), Go.toInterface(_testTime));
        };
    }
function _testHeaderRoundTrip(_fh:FileHeader, _wantUncompressedSize:GoUInt32, _wantUncompressedSize64:GoUInt64, _t:stdgo.testing.Testing.T_):Void {
        var _fi:stdgo.io.fs.Fs.FileInfo = _fh.fileInfo();
        var __tmp__ = fileInfoHeader(_fi), _fh2:Ref<FileHeader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _got:GoString = _fh2.name, _want:GoString = _fh.name;
            if (_got != _want) {
                _t.errorf(((("Name: got %s, want %s\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoUInt32 = _fh2.uncompressedSize, _want:GoUInt32 = _wantUncompressedSize;
            if (_got != _want) {
                _t.errorf(((("UncompressedSize: got %d, want %d\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoUInt64 = _fh2.uncompressedSize64, _want:GoUInt64 = _wantUncompressedSize64;
            if (_got != _want) {
                _t.errorf(((("UncompressedSize64: got %d, want %d\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoUInt16 = _fh2.modifiedTime, _want:GoUInt16 = _fh.modifiedTime;
            if (_got != _want) {
                _t.errorf(((("ModifiedTime: got %d, want %d\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoUInt16 = _fh2.modifiedDate, _want:GoUInt16 = _fh.modifiedDate;
            if (_got != _want) {
                _t.errorf(((("ModifiedDate: got %d, want %d\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = try {
                { value : ((_fi.sys().value : FileHeader)), ok : true };
            } catch(_) {
                { value : ((null : Ref<FileHeader>)), ok : false };
            }, _sysfh = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok && (_sysfh != _fh)) {
                _t.errorf(((("Sys didn\'t return original *FileHeader" : GoString))));
            };
        };
    }
function testFileHeaderRoundTrip(_t:stdgo.testing.Testing.T_):Void {
        var _fh:Ref<FileHeader> = (({ name : ((("foo.txt" : GoString))), uncompressedSize : ((987654321 : GoUInt32)), modifiedTime : ((1234 : GoUInt16)), modifiedDate : ((5678 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modified : new stdgo.time.Time.Time(), crc32 : 0, compressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        _testHeaderRoundTrip(_fh, _fh.uncompressedSize, ((_fh.uncompressedSize : GoUInt64)), _t);
    }
function testFileHeaderRoundTrip64(_t:stdgo.testing.Testing.T_):Void {
        var _fh:Ref<FileHeader> = (({ name : ((("foo.txt" : GoString))), uncompressedSize64 : (("9876543210" : GoUInt64)), modifiedTime : ((1234 : GoUInt16)), modifiedDate : ((5678 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modified : new stdgo.time.Time.Time(), crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        _testHeaderRoundTrip(_fh, (("4294967295" : GoUInt32)), _fh.uncompressedSize64, _t);
    }
function testFileHeaderRoundTripModified(_t:stdgo.testing.Testing.T_):Void {
        var _fh:Ref<FileHeader> = (({ name : ((("foo.txt" : GoString))), uncompressedSize : ((987654321 : GoUInt32)), modified : (stdgo.time.Time.now().local() == null ? null : stdgo.time.Time.now().local().__copy__()), modifiedTime : ((1234 : GoUInt16)), modifiedDate : ((5678 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, crc32 : 0, compressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        var _fi:stdgo.io.fs.Fs.FileInfo = _fh.fileInfo();
        var __tmp__ = fileInfoHeader(_fi), _fh2:Ref<FileHeader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _got:stdgo.time.Time.Time = (_fh2.modified == null ? null : _fh2.modified.__copy__()), _want:stdgo.time.Time.Time = (_fh.modified.utc() == null ? null : _fh.modified.utc().__copy__());
            if (_got != _want) {
                _t.errorf(((("Modified: got %s, want %s\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:stdgo.time.Time.Time = (_fi.modTime() == null ? null : _fi.modTime().__copy__()), _want:stdgo.time.Time.Time = (_fh.modified.utc() == null ? null : _fh.modified.utc().__copy__());
            if (_got != _want) {
                _t.errorf(((("Modified: got %s, want %s\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testFileHeaderRoundTripWithoutModified(_t:stdgo.testing.Testing.T_):Void {
        var _fh:Ref<FileHeader> = (({ name : ((("foo.txt" : GoString))), uncompressedSize : ((987654321 : GoUInt32)), modifiedTime : ((1234 : GoUInt16)), modifiedDate : ((5678 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modified : new stdgo.time.Time.Time(), crc32 : 0, compressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        var _fi:stdgo.io.fs.Fs.FileInfo = _fh.fileInfo();
        var __tmp__ = fileInfoHeader(_fi), _fh2:Ref<FileHeader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _got:stdgo.time.Time.Time = (_fh2.modTime() == null ? null : _fh2.modTime().__copy__()), _want:stdgo.time.Time.Time = (_fh.modTime() == null ? null : _fh.modTime().__copy__());
            if (_got != _want) {
                _t.errorf(((("Modified: got %s, want %s\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:stdgo.time.Time.Time = (_fi.modTime() == null ? null : _fi.modTime().__copy__()), _want:stdgo.time.Time.Time = (_fh.modTime() == null ? null : _fh.modTime().__copy__());
            if (_got != _want) {
                _t.errorf(((("Modified: got %s, want %s\n" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function _min(_x:GoInt64, _y:GoInt64):GoInt64 {
        if (_x < _y) {
            return _x;
        };
        return _y;
    }
function _memset(_a:Slice<GoByte>, _b:GoByte):Void {
        if ((_a != null ? _a.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        if (_a != null) _a[((0 : GoInt))] = _b;
        {
            var _i:GoInt = ((1 : GoInt)), _l:GoInt = (_a != null ? _a.length : ((0 : GoInt)));
            Go.cfor(_i < _l, _i = _i * (((2 : GoInt))), {
                Go.copySlice(((_a.__slice__(_i) : Slice<GoUInt8>)), ((_a.__slice__(0, _i) : Slice<GoUInt8>)));
            });
        };
    }
function testRLEBuffer(_t:stdgo.testing.Testing.T_):Void {
        var _b:Ref<T_rleBuffer> = new T_rleBuffer();
        var _all:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _writes:Slice<GoString> = ((new Slice<GoString>(((("abcdeee" : GoString))), ((("eeeeeee" : GoString))), ((("eeeefghaaiii" : GoString)))) : Slice<GoString>));
        for (_0 => _w in _writes) {
            _b.write(((_w : Slice<GoByte>)));
            _all = (_all != null ? _all.__append__(..._w.__toArray__()) : new Slice<GoUInt8>(..._w.__toArray__()));
        };
        if ((_b._buf != null ? _b._buf.length : ((0 : GoInt))) != ((10 : GoInt))) {
            _t.fatalf(((("len(b.buf) = %d; want 10" : GoString))), Go.toInterface((_b._buf != null ? _b._buf.length : ((0 : GoInt)))));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_all != null ? _all.length : ((0 : GoInt))), _i++, {
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((_all != null ? _all.length : ((0 : GoInt))) - _i), _j++, {
                        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_j : GoInt)).toBasic()) ((0 : GoUInt8))]);
                        var __tmp__ = _b.readAt(_buf, ((_i : GoInt64))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_err != null) || (_n != (_buf != null ? _buf.length : ((0 : GoInt))))) {
                            _t.errorf(((("ReadAt(%d, %d) = %d, %v; want %d, nil" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_buf != null ? _buf.length : ((0 : GoInt)))));
                        };
                        if (!stdgo.bytes.Bytes.equal(_buf, ((_all.__slice__(_i, _i + _j) : Slice<GoUInt8>)))) {
                            _t.errorf(((("ReadAt(%d, %d) = %q; want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_buf), Go.toInterface(((_all.__slice__(_i, _i + _j) : Slice<GoUInt8>))));
                        };
                    });
                };
            });
        };
    }
function testZip64(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("slow test; skipping" : GoString)))));
        };
        _t.parallel();
        {};
        var _buf:Ref<T_rleBuffer> = _testZip64(_t, (("4294967296" : GoInt64)));
        _testZip64DirectoryRecordLength(_buf, _t);
    }
function testZip64EdgeCase(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("slow test; skipping" : GoString)))));
        };
        _t.parallel();
        {};
        var _buf:Ref<T_rleBuffer> = _testZip64(_t, (("4294967291" : GoInt64)));
        _testZip64DirectoryRecordLength(_buf, _t);
    }
function testZip64DirectoryOffset(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping in short mode" : GoString)))));
        };
        _t.parallel();
        {};
        var _gen:GoUInt64 -> (Ref<Writer> -> Void) = function(_wantOff:GoUInt64):Writer -> Void {
            return function(_w:Writer):Void {
                _w._testHookCloseSizeOffset = function(_size:GoUInt64, _off:GoUInt64):Void {
                    if (_off != _wantOff) {
                        _t.errorf(((("central directory offset = %d (%x); want %d" : GoString))), Go.toInterface(_off), Go.toInterface(_off), Go.toInterface(_wantOff));
                    };
                };
                var __tmp__ = _w.createHeader((({ name : ((("huge.txt" : GoString))), method : ((0 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader))), _f:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                ((((_f.__underlying__().value : Dynamic)) : T_fileWriter))._crc32 = ((new T_fakeHash32() : T_fakeHash32));
                var _size:GoUInt64 = ((_wantOff - ((30 : GoUInt64))) - (((((("huge.txt" : GoString))) != null ? ((("huge.txt" : GoString))).length : ((0 : GoInt))) : GoUInt64))) - ((16 : GoUInt64));
                {
                    var __tmp__ = stdgo.io.Io.copyN(_f, ((new T_zeros() : T_zeros)), ((_size : GoInt64))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
                {
                    var _err:stdgo.Error = _w.close();
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
            };
        };
        _t.run(((("uint32max-2_NoZip64" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            _t.parallel();
            if (_generatesZip64(_t, _gen((("4294967294" : GoUInt64))))) {
                _t.error(Go.toInterface(((("unexpected zip64" : GoString)))));
            };
        });
        _t.run(((("uint32max-1_Zip64" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            _t.parallel();
            if (!_generatesZip64(_t, _gen((("4294967295" : GoUInt64))))) {
                _t.error(Go.toInterface(((("expected zip64" : GoString)))));
            };
        });
    }
function testZip64ManyRecords(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping in short mode" : GoString)))));
        };
        _t.parallel();
        var _gen:GoInt -> (Ref<Writer> -> Void) = function(_numRec:GoInt):Writer -> Void {
            return function(_w:Writer):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _numRec, _i++, {
                        var __tmp__ = _w.createHeader((({ name : ((("a.txt" : GoString))), method : ((0 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader))), _0:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatal(Go.toInterface(_err));
                        };
                    });
                };
                {
                    var _err:stdgo.Error = _w.close();
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
            };
        };
        _t.run(((("uint16max-1_NoZip64" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            _t.parallel();
            if (_generatesZip64(_t, _gen(((65534 : GoInt))))) {
                _t.error(Go.toInterface(((("unexpected zip64" : GoString)))));
            };
        });
        _t.run(((("uint16max_Zip64" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            _t.parallel();
            if (!_generatesZip64(_t, _gen(((65535 : GoInt))))) {
                _t.error(Go.toInterface(((("expected zip64" : GoString)))));
            };
        });
    }
function _generatesZip64(_t:stdgo.testing.Testing.T_, _f:(_w:Writer) -> Void):Bool {
        var _ss:Ref<T_suffixSaver> = (({ _keep : ((10485760 : GoInt)), _buf : ((null : Slice<GoUInt8>)), _start : 0, _size : 0 } : T_suffixSaver));
        var _w:Ref<Writer> = newWriter(_ss);
        _f(_w);
        return _suffixIsZip64(_t, _ss);
    }
function _suffixIsZip64(_t:stdgo.testing.Testing.T_, _zip:T_sizedReaderAt):Bool {
        var _d:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _zip.readAt(_d, _zip.size() - (((_d != null ? _d.length : ((0 : GoInt))) : GoInt64))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("ReadAt: %v" : GoString))), Go.toInterface(_err));
            };
        };
        var _sigOff:GoInt = _findSignatureInBlock(_d);
        if (_sigOff == ((-1 : GoInt))) {
            _t.errorf(((("failed to find signature in block" : GoString))));
            return false;
        };
        var __tmp__ = _findDirectory64End(_zip, (_zip.size() - (((_d != null ? _d.length : ((0 : GoInt))) : GoInt64))) + ((_sigOff : GoInt64))), _dirOff:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("findDirectory64End: %v" : GoString))), Go.toInterface(_err));
        };
        if (_dirOff == ((-1 : GoInt64))) {
            return false;
        };
        _d = new Slice<GoUInt8>(...[for (i in 0 ... ((((56 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _zip.readAt(_d, _dirOff), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("ReadAt(off=%d): %v" : GoString))), Go.toInterface(_dirOff), Go.toInterface(_err));
            };
        };
        var _b:T_readBuf = (((_d : T_readBuf)) == null ? null : ((_d : T_readBuf)).__copy__());
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((101075792 : GoUInt32))) {
                return false;
            };
        };
        var _size:GoUInt64 = _b._uint64();
        if (_size != ((44 : GoUInt64))) {
            _t.errorf(((("expected length of %d, got %d" : GoString))), Go.toInterface(((44 : GoInt))), Go.toInterface(_size));
        };
        return true;
    }
function testZip64LargeDirectory(_t:stdgo.testing.Testing.T_):Void {
        if (true) {
            _t.skip(Go.toInterface(((("too slow on wasm" : GoString)))));
        };
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping in short mode" : GoString)))));
        };
        _t.parallel();
        var _gen:GoInt64 -> (Ref<Writer> -> Void) = function(_wantLen:GoInt64):Writer -> Void {
            return function(_w:Writer):Void {
                _w._testHookCloseSizeOffset = function(_size:GoUInt64, _off:GoUInt64):Void {
                    if (_size != ((_wantLen : GoUInt64))) {
                        _t.errorf(((("Close central directory size = %d; want %d" : GoString))), Go.toInterface(_size), Go.toInterface(_wantLen));
                    };
                };
                var _uint16string:GoString = stdgo.strings.Strings.repeat(((("." : GoString))), ((65535 : GoInt)));
                var _remain:GoInt64 = _wantLen;
                while (_remain > ((0 : GoInt64))) {
                    var _commentLen:GoInt = ((65488 : GoInt));
                    var _thisRecLen:GoInt = ((65581 : GoInt)) + _commentLen;
                    if (((_thisRecLen : GoInt64)) > _remain) {
                        var _remove:GoInt = _thisRecLen - ((_remain : GoInt));
                        _commentLen = _commentLen - (_remove);
                        _thisRecLen = _thisRecLen - (_remove);
                    };
                    _remain = _remain - (((_thisRecLen : GoInt64)));
                    var __tmp__ = _w.createHeader((({ name : _uint16string, comment : ((_uint16string.__slice__(0, _commentLen) : GoString)), nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader))), _f:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(((("CreateHeader: %v" : GoString))), Go.toInterface(_err));
                    };
                    ((((_f.__underlying__().value : Dynamic)) : T_fileWriter))._crc32 = ((new T_fakeHash32() : T_fakeHash32));
                };
                {
                    var _err:stdgo.Error = _w.close();
                    if (_err != null) {
                        _t.fatalf(((("Close: %v" : GoString))), Go.toInterface(_err));
                    };
                };
            };
        };
        _t.run(((("uint32max-1_NoZip64" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            _t.parallel();
            if (_generatesZip64(_t, _gen((("4294967294" : GoInt64))))) {
                _t.error(Go.toInterface(((("unexpected zip64" : GoString)))));
            };
        });
        _t.run(((("uint32max_HasZip64" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            _t.parallel();
            if (!_generatesZip64(_t, _gen((("4294967295" : GoInt64))))) {
                _t.error(Go.toInterface(((("expected zip64" : GoString)))));
            };
        });
    }
function _testZip64(_t:stdgo.testing.Testing.TB, _size:GoInt64):T_rleBuffer {
        {};
        var _chunks:GoInt = (((_size / ((1024 : GoInt64))) : GoInt));
        var _buf:Ref<T_rleBuffer> = new T_rleBuffer();
        var _w:Ref<Writer> = newWriter(_buf);
        var __tmp__ = _w.createHeader((({ name : ((("huge.txt" : GoString))), method : ((0 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader))), _f:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        ((((_f.__underlying__().value : Dynamic)) : T_fileWriter))._crc32 = ((new T_fakeHash32() : T_fakeHash32));
        var _chunk:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _chunk) {
            if (_chunk != null) _chunk[_i] = ((((("." : GoString))).code : GoRune));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _chunks, _i++, {
                var __tmp__ = _f.write(_chunk), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("write chunk:" : GoString)))), Go.toInterface(_err));
                };
            });
        };
        {
            var _frag:GoInt = (((_size % ((1024 : GoInt64))) : GoInt));
            if (_frag > ((0 : GoInt))) {
                var __tmp__ = _f.write(((_chunk.__slice__(0, _frag) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("write chunk:" : GoString)))), Go.toInterface(_err));
                };
            };
        };
        var _end:Slice<GoUInt8> = ((((("END\n" : GoString))) : Slice<GoByte>));
        {
            var __tmp__ = _f.write(_end);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(((("write end:" : GoString)))), Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var __tmp__ = newReader(_buf, ((_buf.size() : GoInt64))), _r:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(((("reader:" : GoString)))), Go.toInterface(_err));
        };
        var _f0:Ref<File> = (_r.file != null ? _r.file[((0 : GoInt))] : ((null : Ref<File>)));
        var __tmp__ = _f0.open(), _rc:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(((("opening:" : GoString)))), Go.toInterface(_err));
        };
        ((((_rc.__underlying__().value : Dynamic)) : T_checksumReader))._hash = ((new T_fakeHash32() : T_fakeHash32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _chunks, _i++, {
                var __tmp__ = stdgo.io.Io.readFull(_rc, _chunk), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("read:" : GoString)))), Go.toInterface(_err));
                };
            });
        };
        {
            var _frag:GoInt = (((_size % ((1024 : GoInt64))) : GoInt));
            if (_frag > ((0 : GoInt))) {
                var __tmp__ = stdgo.io.Io.readFull(_rc, ((_chunk.__slice__(0, _frag) : Slice<GoUInt8>))), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("read:" : GoString)))), Go.toInterface(_err));
                };
            };
        };
        var __tmp__ = stdgo.io.Io.readAll(_rc), _gotEnd:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(((("read end:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_gotEnd, _end)) {
            _t.errorf(((("End of zip64 archive %q, want %q" : GoString))), Go.toInterface(_gotEnd), Go.toInterface(_end));
        };
        _err = _rc.close();
        if (_err != null) {
            _t.fatal(Go.toInterface(((("closing:" : GoString)))), Go.toInterface(_err));
        };
        if ((_size + (((((("END\n" : GoString))) != null ? ((("END\n" : GoString))).length : ((0 : GoInt))) : GoInt64))) >= (("4294967295" : GoInt64))) {
            {
                var _got:GoUInt32 = _f0.uncompressedSize, _want:GoUInt32 = (((("4294967295" : GoUInt32)) : GoUInt32));
                if (_got != _want) {
                    _t.errorf(((("UncompressedSize %#x, want %#x" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        {
            var _got:GoUInt64 = _f0.uncompressedSize64, _want:GoUInt64 = ((_size : GoUInt64)) + (((_end != null ? _end.length : ((0 : GoInt))) : GoUInt64));
            if (_got != _want) {
                _t.errorf(((("UncompressedSize64 %#x, want %#x" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        return _buf;
    }
function _testZip64DirectoryRecordLength(_buf:T_rleBuffer, _t:stdgo.testing.Testing.T_):Void {
        if (!_suffixIsZip64(_t, _buf)) {
            _t.fatal(Go.toInterface(((("not a zip64" : GoString)))));
        };
    }
function _testValidHeader(_h:FileHeader, _t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _z:Ref<Writer> = newWriter(_buf);
        var __tmp__ = _z.createHeader(_h), _f:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("error creating header: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var __tmp__ = _f.write(((((("hi" : GoString))) : Slice<GoByte>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("error writing content: %v" : GoString))), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _z.close();
            if (_err != null) {
                _t.fatalf(((("error closing zip writer: %v" : GoString))), Go.toInterface(_err));
            };
        };
        var _b:Slice<GoUInt8> = _buf.bytes();
        var __tmp__ = newReader(stdgo.bytes.Bytes.newReader(_b), (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64))), _zf:Ref<Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("got %v, expected nil" : GoString))), Go.toInterface(_err));
        };
        var _zh:FileHeader = ((_zf.file != null ? _zf.file[((0 : GoInt))] : ((null : Ref<File>))).fileHeader == null ? null : (_zf.file != null ? _zf.file[((0 : GoInt))] : ((null : Ref<File>))).fileHeader.__copy__());
        if (((_zh.name != _h.name) || (_zh.method != _h.method)) || (_zh.uncompressedSize64 != (((((("hi" : GoString))) != null ? ((("hi" : GoString))).length : ((0 : GoInt))) : GoUInt64)))) {
            _t.fatalf(((("got %q/%d/%d expected %q/%d/%d" : GoString))), Go.toInterface(_zh.name), Go.toInterface(_zh.method), Go.toInterface(_zh.uncompressedSize64), Go.toInterface(_h.name), Go.toInterface(_h.method), Go.toInterface((((("hi" : GoString))) != null ? ((("hi" : GoString))).length : ((0 : GoInt)))));
        };
    }
function testHeaderInvalidTagAndSize(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _ts:stdgo.time.Time.Time = (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__());
        var _filename:GoString = _ts.format(((("20060102T150405.000.txt" : GoString))));
        var _h:FileHeader = ((({ name : _filename, method : ((8 : GoUInt16)), extra : ((_ts.format(((("2006-01-02T15:04:05.999999999Z07:00" : GoString)))) : Slice<GoByte>)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader)) == null ? null : (({ name : _filename, method : ((8 : GoUInt16)), extra : ((_ts.format(((("2006-01-02T15:04:05.999999999Z07:00" : GoString)))) : Slice<GoByte>)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader)).__copy__());
        _h.setModTime((_ts == null ? null : _ts.__copy__()));
        _testValidHeader(_h, _t);
    }
function testHeaderTooShort(_t:stdgo.testing.Testing.T_):Void {
        var _h:FileHeader = ((({ name : ((("foo.txt" : GoString))), method : ((8 : GoUInt16)), extra : ((new Slice<GoUInt8>(((1 : GoUInt8))) : Slice<GoUInt8>)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader)) == null ? null : (({ name : ((("foo.txt" : GoString))), method : ((8 : GoUInt16)), extra : ((new Slice<GoUInt8>(((1 : GoUInt8))) : Slice<GoUInt8>)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader)).__copy__());
        _testValidHeader(_h, _t);
    }
function testHeaderTooLongErr(_t:stdgo.testing.Testing.T_):Void {
        var _headerTests:Slice<T__struct_6> = ((new Slice<T__struct_6>(((({ _name : stdgo.strings.Strings.repeat(((("x" : GoString))), ((65536 : GoInt))), _extra : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _wanterr : _errLongName } : T__struct_6)) == null ? null : (({ _name : stdgo.strings.Strings.repeat(((("x" : GoString))), ((65536 : GoInt))), _extra : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _wanterr : _errLongName } : T__struct_6)).__copy__()), ((({ _name : ((("long_extra" : GoString))), _extra : stdgo.bytes.Bytes.repeat(((new Slice<GoUInt8>(((255 : GoUInt8))) : Slice<GoUInt8>)), ((65536 : GoInt))), _wanterr : _errLongExtra } : T__struct_6)) == null ? null : (({ _name : ((("long_extra" : GoString))), _extra : stdgo.bytes.Bytes.repeat(((new Slice<GoUInt8>(((255 : GoUInt8))) : Slice<GoUInt8>)), ((65536 : GoInt))), _wanterr : _errLongExtra } : T__struct_6)).__copy__())) : Slice<T__struct_6>));
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:Ref<Writer> = newWriter(_buf);
        for (_0 => _test in _headerTests) {
            var _h:Ref<FileHeader> = (({ name : _test._name, extra : _test._extra, comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, method : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader));
            var __tmp__ = _w.createHeader(_h), _1:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != _test._wanterr) {
                _t.errorf(((("error=%v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_test._wanterr));
            };
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
function testHeaderIgnoredSize(_t:stdgo.testing.Testing.T_):Void {
        var _h:FileHeader = ((({ name : ((("foo.txt" : GoString))), method : ((8 : GoUInt16)), extra : ((new Slice<GoUInt8>(
((1 : GoUInt8)),
((0 : GoUInt8)),
((24 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8))) : Slice<GoUInt8>)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader)) == null ? null : (({ name : ((("foo.txt" : GoString))), method : ((8 : GoUInt16)), extra : ((new Slice<GoUInt8>(
((1 : GoUInt8)),
((0 : GoUInt8)),
((24 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8))) : Slice<GoUInt8>)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader)).__copy__());
        _testValidHeader(_h, _t);
    }
function testZeroLengthHeader(_t:stdgo.testing.Testing.T_):Void {
        var _h:FileHeader = ((({ name : ((("extadata.txt" : GoString))), method : ((8 : GoUInt16)), extra : ((new Slice<GoUInt8>(
((85 : GoUInt8)),
((84 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((154 : GoUInt8)),
((144 : GoUInt8)),
((195 : GoUInt8)),
((77 : GoUInt8)),
((85 : GoUInt8)),
((120 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader)) == null ? null : (({ name : ((("extadata.txt" : GoString))), method : ((8 : GoUInt16)), extra : ((new Slice<GoUInt8>(
((85 : GoUInt8)),
((84 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((154 : GoUInt8)),
((144 : GoUInt8)),
((195 : GoUInt8)),
((77 : GoUInt8)),
((85 : GoUInt8)),
((120 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, externalAttrs : 0 } : FileHeader)).__copy__());
        _testValidHeader(_h, _t);
    }
function benchmarkZip64Test(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _testZip64(_b, ((67108864 : GoInt64)));
            });
        };
    }
function benchmarkZip64TestSizes(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _size in ((new Slice<GoInt64>(((4096 : GoInt64)), ((1048576 : GoInt64)), ((67108864 : GoInt64))) : Slice<GoInt64>))) {
            _b.run(stdgo.fmt.Fmt.sprint(_size), function(_b:stdgo.testing.Testing.B):Void {
                _b.runParallel(function(_pb:stdgo.testing.Testing.PB):Void {
                    while (_pb.next()) {
                        _testZip64(_b, _size);
                    };
                });
            });
        };
    }
function testSuffixSaver(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _ss:Ref<T_suffixSaver> = (({ _keep : ((10 : GoInt)), _buf : ((null : Slice<GoUInt8>)), _start : 0, _size : 0 } : T_suffixSaver));
        _ss.write(((((("abc" : GoString))) : Slice<GoByte>)));
        {
            var _got:GoString = ((_ss.suffix() : GoString));
            if (_got != ((("abc" : GoString)))) {
                _t.errorf(((("got = %q; want abc" : GoString))), Go.toInterface(_got));
            };
        };
        _ss.write(((((("defghijklmno" : GoString))) : Slice<GoByte>)));
        {
            var _got:GoString = ((_ss.suffix() : GoString));
            if (_got != ((("fghijklmno" : GoString)))) {
                _t.errorf(((("got = %q; want fghijklmno" : GoString))), Go.toInterface(_got));
            };
        };
        {
            var _got:GoInt64 = _ss.size(), _want:GoInt64 = ((((15 : GoInt)) : GoInt64));
            if (_got != _want) {
                _t.errorf(((("Size = %d; want %d" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_ss.size() : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _off:GoInt64 = ((((0 : GoInt64)) : GoInt64));
            Go.cfor(_off < _ss.size(), _off++, {
                {
                    var _size:GoInt = ((1 : GoInt));
                    Go.cfor(_size <= (((_ss.size() - _off) : GoInt)), _size++, {
                        var _readBuf:Slice<GoUInt8> = ((_buf.__slice__(0, _size) : Slice<GoUInt8>));
                        var __tmp__ = _ss.readAt(_readBuf, _off), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_off < (_ss.size() - ((10 : GoInt64)))) {
                            if (_err != _errDiscardedBytes) {
                                _t.errorf(((("off %d, size %d = %v, %v (%q); want errDiscardedBytes" : GoString))), Go.toInterface(_off), Go.toInterface(_size), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((_readBuf.__slice__(0, _n) : Slice<GoUInt8>))));
                            };
                            continue;
                        };
                        var _want:GoString = ((((("abcdefghijklmno" : GoString))).__slice__(_off, _off + ((_size : GoInt64))) : GoString));
                        var _got:GoString = ((((_readBuf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString));
                        if ((_err != null) || (_got != _want)) {
                            _t.errorf(((("off %d, size %d = %v, %v (%q); want %q" : GoString))), Go.toInterface(_off), Go.toInterface(_size), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_got), Go.toInterface(_want));
                        };
                    });
                };
            });
        };
    }
@:keep var _ = {
        try {
            _compressors.store(Go.toInterface(((0 : GoUInt16))), Go.toInterface(Compressor_static_extension(function(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.io.Io.WriteCloser; var _1 : Error; } {
                throw "__return__";
            })));
            _compressors.store(Go.toInterface(((8 : GoUInt16))), Go.toInterface(Compressor_static_extension(function(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.io.Io.WriteCloser; var _1 : Error; } {
                throw "__return__";
            })));
            _decompressors.store(Go.toInterface(((0 : GoUInt16))), Go.toInterface(Decompressor_static_extension(stdgo.io.Io.nopCloser)));
            _decompressors.store(Go.toInterface(((8 : GoUInt16))), Go.toInterface(Decompressor_static_extension(_newFlateReader)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_fileInfoDirEntry_wrapper {
    public var __t__ : T_fileInfoDirEntry;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_sizedReaderAt_wrapper {
    public var __t__ : T_sizedReaderAt;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Reader_wrapper {
    @:keep
    public function _openReadDir(_dir:GoString):Slice<T_fileListEntry> {
        var _r = __t__;
        _r;
        var _files:Slice<T_fileListEntry> = _r._fileList;
        var _i:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_i] : new T_fileListEntry())._name), _idir:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
            return _idir >= _dir;
        });
        var _j:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_j:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_j] : new T_fileListEntry())._name), _jdir:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
            return _jdir > _dir;
        });
        return ((_files.__slice__(_i, _j) : Slice<T_fileListEntry>));
    }
    @:keep
    public function _openLookup(_name:GoString):T_fileListEntry {
        var _r = __t__;
        _r;
        if (_name == ((("." : GoString)))) {
            return _dotFile;
        };
        var __tmp__ = _split(_name), _dir:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
        var _files:Slice<T_fileListEntry> = _r._fileList;
        var _i:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_i] : new T_fileListEntry())._name), _idir:GoString = __tmp__._0, _ielem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
            return (_idir > _dir) || ((_idir == _dir) && (_ielem >= _elem));
        });
        if (_i < (_files != null ? _files.length : ((0 : GoInt)))) {
            var _fname:GoString = (_files != null ? _files[_i] : new T_fileListEntry())._name;
            if ((_fname == _name) || ((((_fname != null ? _fname.length : ((0 : GoInt))) == ((_name != null ? _name.length : ((0 : GoInt))) + ((1 : GoInt)))) && ((_fname != null ? _fname[(_name != null ? _name.length : ((0 : GoInt)))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) && (((_fname.__slice__(0, (_name != null ? _name.length : ((0 : GoInt)))) : GoString)) == _name))) {
                return (_files != null ? _files[_i] : new T_fileListEntry());
            };
        };
        return null;
    }
    @:keep
    public function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } {
        var _r = __t__;
        _r;
        _r._initFileList();
        if (!stdgo.io.fs.Fs.validPath(_name)) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)) };
        };
        var _e:Ref<T_fileListEntry> = _r._openLookup(_name);
        if (_e == null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)) };
        };
        if (_e._isDir) {
            return { _0 : ((new T_openDir(_e, _r._openReadDir(_name), ((0 : GoInt))) : T_openDir)), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _e._file.open(), _rc:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : _err };
        };
        return { _0 : ((((_rc.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.File)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _initFileList():Void {
        var _r = __t__;
        _r;
        _r._fileListOnce.do_(function():Void {
            var _dirs:GoMap<GoString, Bool> = new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
            var _knownDirs:GoMap<GoString, Bool> = new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
            for (_0 => _file in _r.file) {
                var _isDir:Bool = ((_file.name != null ? _file.name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_file.name != null ? _file.name[(_file.name != null ? _file.name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)));
                var _name:GoString = _toValidName(_file.name);
                if (_name == ((("" : GoString)))) {
                    continue;
                };
                {
                    var _dir:GoString = stdgo.path.Path.dir(_name);
                    Go.cfor(_dir != ((("." : GoString))), _dir = stdgo.path.Path.dir(_dir), {
                        if (_dirs != null) _dirs[_dir] = true;
                    });
                };
                var _entry:T_fileListEntry = ((({ _name : _name, _file : _file, _isDir : _isDir } : T_fileListEntry)) == null ? null : (({ _name : _name, _file : _file, _isDir : _isDir } : T_fileListEntry)).__copy__());
                _r._fileList = (_r._fileList != null ? _r._fileList.__append__((_entry == null ? null : _entry.__copy__())) : new Slice<T_fileListEntry>((_entry == null ? null : _entry.__copy__())));
                if (_isDir) {
                    if (_knownDirs != null) _knownDirs[_name] = true;
                };
            };
            for (_dir => _ in _dirs) {
                if (!(_knownDirs != null ? _knownDirs[_dir] : false)) {
                    var _entry:T_fileListEntry = ((({ _name : _dir, _file : null, _isDir : true } : T_fileListEntry)) == null ? null : (({ _name : _dir, _file : null, _isDir : true } : T_fileListEntry)).__copy__());
                    _r._fileList = (_r._fileList != null ? _r._fileList.__append__((_entry == null ? null : _entry.__copy__())) : new Slice<T_fileListEntry>((_entry == null ? null : _entry.__copy__())));
                };
            };
            stdgo.sort.Sort.slice(Go.toInterface(_r._fileList), function(_i:GoInt, _j:GoInt):Bool {
                return _fileEntryLess((_r._fileList != null ? _r._fileList[_i] : new T_fileListEntry())._name, (_r._fileList != null ? _r._fileList[_j] : new T_fileListEntry())._name);
            });
        });
    }
    @:keep
    public function _decompressor(_method:GoUInt16):Decompressor {
        var _z = __t__;
        _z;
        var _dcomp:Decompressor = (_z._decompressors != null ? _z._decompressors[_method] : ((null : Decompressor)));
        if (_dcomp == null) {
            _dcomp = stdgo.archive.zip.Zip._decompressor(_method);
        };
        return _dcomp;
    }
    @:keep
    public function registerDecompressor(_method:GoUInt16, _dcomp:Decompressor):Void {
        var _z = __t__;
        _z;
        if (_z._decompressors == null) {
            _z._decompressors = new Map<Int, Decompressor>();
        };
        if (_z._decompressors != null) _z._decompressors[_method] = _dcomp;
    }
    @:keep
    public function _init(_r:stdgo.io.Io.ReaderAt, _size:GoInt64):Error {
        var _z = __t__;
        _z;
        var __tmp__ = _readDirectoryEnd(_r, _size), _end:Ref<T_directoryEnd> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _z._r = _r;
        if ((_end._directorySize < ((_size : GoUInt64))) && (((((_size : GoUInt64)) - _end._directorySize) / ((30 : GoUInt64))) >= _end._directoryRecords)) {
            _z.file = new Slice<Ref<File>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Ref<File>))]).__setCap__(((_end._directoryRecords : GoInt)).toBasic());
        };
        _z.comment = _end._comment;
        var _rs:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)), _size);
        {
            {
                var __tmp__ = _rs.seek(((_end._directoryOffset : GoInt64)), ((0 : GoInt)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _buf:Ref<stdgo.bufio.Bufio.Reader> = stdgo.bufio.Bufio.newReader(_rs);
        while (true) {
            var _f:Ref<File> = (({ _zip : _z, _zipr : _r, fileHeader : new FileHeader(), _headerOffset : 0, _zip64 : false, _descErr : ((null : stdgo.Error)) } : File));
            _err = _readDirectoryHeader(_f, _buf);
            if ((_err == errFormat) || (_err == stdgo.io.Io.errUnexpectedEOF)) {
                break;
            };
            if (_err != null) {
                return _err;
            };
            _z.file = (_z.file != null ? _z.file.__append__(_f) : new Slice<Ref<File>>(_f));
        };
        if ((((_z.file != null ? _z.file.length : ((0 : GoInt))) : GoUInt16)) != ((_end._directoryRecords : GoUInt16))) {
            return _err;
        };
        return ((null : stdgo.Error));
    }
    public var __t__ : Reader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Reader_static_extension {
    @:keep
    public static function _openReadDir(_r:Ref<Reader>, _dir:GoString):Slice<T_fileListEntry> {
        _r;
        var _files:Slice<T_fileListEntry> = _r._fileList;
        var _i:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_i] : new T_fileListEntry())._name), _idir:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
            return _idir >= _dir;
        });
        var _j:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_j:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_j] : new T_fileListEntry())._name), _jdir:GoString = __tmp__._0, _0:GoString = __tmp__._1, _1:Bool = __tmp__._2;
            return _jdir > _dir;
        });
        return ((_files.__slice__(_i, _j) : Slice<T_fileListEntry>));
    }
    @:keep
    public static function _openLookup(_r:Ref<Reader>, _name:GoString):T_fileListEntry {
        _r;
        if (_name == ((("." : GoString)))) {
            return _dotFile;
        };
        var __tmp__ = _split(_name), _dir:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
        var _files:Slice<T_fileListEntry> = _r._fileList;
        var _i:GoInt = stdgo.sort.Sort.search((_files != null ? _files.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var __tmp__ = _split((_files != null ? _files[_i] : new T_fileListEntry())._name), _idir:GoString = __tmp__._0, _ielem:GoString = __tmp__._1, _0:Bool = __tmp__._2;
            return (_idir > _dir) || ((_idir == _dir) && (_ielem >= _elem));
        });
        if (_i < (_files != null ? _files.length : ((0 : GoInt)))) {
            var _fname:GoString = (_files != null ? _files[_i] : new T_fileListEntry())._name;
            if ((_fname == _name) || ((((_fname != null ? _fname.length : ((0 : GoInt))) == ((_name != null ? _name.length : ((0 : GoInt))) + ((1 : GoInt)))) && ((_fname != null ? _fname[(_name != null ? _name.length : ((0 : GoInt)))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) && (((_fname.__slice__(0, (_name != null ? _name.length : ((0 : GoInt)))) : GoString)) == _name))) {
                return (_files != null ? _files[_i] : new T_fileListEntry());
            };
        };
        return null;
    }
    @:keep
    public static function open(_r:Ref<Reader>, _name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } {
        _r;
        _r._initFileList();
        if (!stdgo.io.fs.Fs.validPath(_name)) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)) };
        };
        var _e:Ref<T_fileListEntry> = _r._openLookup(_name);
        if (_e == null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)) };
        };
        if (_e._isDir) {
            return { _0 : ((new T_openDir(_e, _r._openReadDir(_name), ((0 : GoInt))) : T_openDir)), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _e._file.open(), _rc:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : _err };
        };
        return { _0 : ((((_rc.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.File)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _initFileList(_r:Ref<Reader>):Void {
        _r;
        _r._fileListOnce.do_(function():Void {
            var _dirs:GoMap<GoString, Bool> = new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
            var _knownDirs:GoMap<GoString, Bool> = new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
            for (_0 => _file in _r.file) {
                var _isDir:Bool = ((_file.name != null ? _file.name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_file.name != null ? _file.name[(_file.name != null ? _file.name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)));
                var _name:GoString = _toValidName(_file.name);
                if (_name == ((("" : GoString)))) {
                    continue;
                };
                {
                    var _dir:GoString = stdgo.path.Path.dir(_name);
                    Go.cfor(_dir != ((("." : GoString))), _dir = stdgo.path.Path.dir(_dir), {
                        if (_dirs != null) _dirs[_dir] = true;
                    });
                };
                var _entry:T_fileListEntry = ((({ _name : _name, _file : _file, _isDir : _isDir } : T_fileListEntry)) == null ? null : (({ _name : _name, _file : _file, _isDir : _isDir } : T_fileListEntry)).__copy__());
                _r._fileList = (_r._fileList != null ? _r._fileList.__append__((_entry == null ? null : _entry.__copy__())) : new Slice<T_fileListEntry>((_entry == null ? null : _entry.__copy__())));
                if (_isDir) {
                    if (_knownDirs != null) _knownDirs[_name] = true;
                };
            };
            for (_dir => _ in _dirs) {
                if (!(_knownDirs != null ? _knownDirs[_dir] : false)) {
                    var _entry:T_fileListEntry = ((({ _name : _dir, _file : null, _isDir : true } : T_fileListEntry)) == null ? null : (({ _name : _dir, _file : null, _isDir : true } : T_fileListEntry)).__copy__());
                    _r._fileList = (_r._fileList != null ? _r._fileList.__append__((_entry == null ? null : _entry.__copy__())) : new Slice<T_fileListEntry>((_entry == null ? null : _entry.__copy__())));
                };
            };
            stdgo.sort.Sort.slice(Go.toInterface(_r._fileList), function(_i:GoInt, _j:GoInt):Bool {
                return _fileEntryLess((_r._fileList != null ? _r._fileList[_i] : new T_fileListEntry())._name, (_r._fileList != null ? _r._fileList[_j] : new T_fileListEntry())._name);
            });
        });
    }
    @:keep
    public static function _decompressor(_z:Ref<Reader>, _method:GoUInt16):Decompressor {
        _z;
        var _dcomp:Decompressor = (_z._decompressors != null ? _z._decompressors[_method] : ((null : Decompressor)));
        if (_dcomp == null) {
            _dcomp = stdgo.archive.zip.Zip._decompressor(_method);
        };
        return _dcomp;
    }
    @:keep
    public static function registerDecompressor(_z:Ref<Reader>, _method:GoUInt16, _dcomp:Decompressor):Void {
        _z;
        if (_z._decompressors == null) {
            _z._decompressors = new Map<Int, Decompressor>();
        };
        if (_z._decompressors != null) _z._decompressors[_method] = _dcomp;
    }
    @:keep
    public static function _init(_z:Ref<Reader>, _r:stdgo.io.Io.ReaderAt, _size:GoInt64):Error {
        _z;
        var __tmp__ = _readDirectoryEnd(_r, _size), _end:Ref<T_directoryEnd> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _z._r = _r;
        if ((_end._directorySize < ((_size : GoUInt64))) && (((((_size : GoUInt64)) - _end._directorySize) / ((30 : GoUInt64))) >= _end._directoryRecords)) {
            _z.file = new Slice<Ref<File>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Ref<File>))]).__setCap__(((_end._directoryRecords : GoInt)).toBasic());
        };
        _z.comment = _end._comment;
        var _rs:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_r, ((0 : GoInt64)), _size);
        {
            {
                var __tmp__ = _rs.seek(((_end._directoryOffset : GoInt64)), ((0 : GoInt)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _buf:Ref<stdgo.bufio.Bufio.Reader> = stdgo.bufio.Bufio.newReader(_rs);
        while (true) {
            var _f:Ref<File> = (({ _zip : _z, _zipr : _r, fileHeader : new FileHeader(), _headerOffset : 0, _zip64 : false, _descErr : ((null : stdgo.Error)) } : File));
            _err = _readDirectoryHeader(_f, _buf);
            if ((_err == errFormat) || (_err == stdgo.io.Io.errUnexpectedEOF)) {
                break;
            };
            if (_err != null) {
                return _err;
            };
            _z.file = (_z.file != null ? _z.file.__append__(_f) : new Slice<Ref<File>>(_f));
        };
        if ((((_z.file != null ? _z.file.length : ((0 : GoInt))) : GoUInt16)) != ((_end._directoryRecords : GoUInt16))) {
            return _err;
        };
        return ((null : stdgo.Error));
    }
}
class ReadCloser_wrapper {
    @:keep
    public function close():Error {
        var _rc = __t__;
        _rc;
        return _rc._f.close();
    }
    public var __t__ : ReadCloser;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class ReadCloser_static_extension {
    @:keep
    public static function close(_rc:Ref<ReadCloser>):Error {
        _rc;
        return _rc._f.close();
    }
}
class File_wrapper {
    @:keep
    public function _findBodyOffset():{ var _0 : GoInt64; var _1 : Error; } {
        var _f = __t__;
        _f;
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        {
            var __tmp__ = _f._zipr.readAt(((_buf.__slice__(0) : Slice<GoUInt8>)), _f._headerOffset), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoInt64)), _1 : _err };
            };
        };
        var _b:T_readBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf)).__copy__());
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((67324752 : GoUInt32))) {
                return { _0 : ((0 : GoInt64)), _1 : errFormat };
            };
        };
        _b = (((_b.__slice__(((22 : GoInt))) : T_readBuf)) == null ? null : ((_b.__slice__(((22 : GoInt))) : T_readBuf)).__copy__());
        var _filenameLen:GoInt = ((_b._uint16() : GoInt));
        var _extraLen:GoInt = ((_b._uint16() : GoInt));
        return { _0 : ((((((30 : GoInt)) + _filenameLen) + _extraLen) : GoInt64)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function openRaw():{ var _0 : stdgo.io.Io.Reader; var _1 : Error; } {
        var _f = __t__;
        _f;
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.Reader)), _1 : _err };
        };
        var _r:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f._zipr, _f._headerOffset + _bodyOffset, ((_f.compressedSize64 : GoInt64)));
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function open():{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        var _f = __t__;
        _f;
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : _err };
        };
        var _size:GoInt64 = ((_f.compressedSize64 : GoInt64));
        var _r:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f._zipr, _f._headerOffset + _bodyOffset, _size);
        var _dcomp:Decompressor = _f._zip._decompressor(_f.method);
        if (_dcomp == null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : errAlgorithm };
        };
        var _rc:stdgo.io.Io.ReadCloser = _dcomp(_r);
        var _desr:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
        if (_f._hasDataDescriptor()) {
            _desr = stdgo.io.Io.newSectionReader(_f._zipr, (_f._headerOffset + _bodyOffset) + _size, ((16 : GoInt64)));
        };
        _rc = (({ _rc : _rc, _hash : stdgo.hash.crc32.Crc32.newIEEE(), _f : _f, _desr : _desr, _nread : 0, _err : ((null : stdgo.Error)) } : T_checksumReader));
        return { _0 : _rc, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function dataOffset():{ var _0 : GoInt64; var _1 : Error; } {
        var _f = __t__;
        _f;
        var _offset:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        return { _0 : _f._headerOffset + _bodyOffset, _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : File;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class File_static_extension {
    @:keep
    public static function _findBodyOffset(_f:Ref<File>):{ var _0 : GoInt64; var _1 : Error; } {
        _f;
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        {
            var __tmp__ = _f._zipr.readAt(((_buf.__slice__(0) : Slice<GoUInt8>)), _f._headerOffset), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoInt64)), _1 : _err };
            };
        };
        var _b:T_readBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_readBuf)).__copy__());
        {
            var _sig:GoUInt32 = _b._uint32();
            if (_sig != ((67324752 : GoUInt32))) {
                return { _0 : ((0 : GoInt64)), _1 : errFormat };
            };
        };
        _b = (((_b.__slice__(((22 : GoInt))) : T_readBuf)) == null ? null : ((_b.__slice__(((22 : GoInt))) : T_readBuf)).__copy__());
        var _filenameLen:GoInt = ((_b._uint16() : GoInt));
        var _extraLen:GoInt = ((_b._uint16() : GoInt));
        return { _0 : ((((((30 : GoInt)) + _filenameLen) + _extraLen) : GoInt64)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function openRaw(_f:Ref<File>):{ var _0 : stdgo.io.Io.Reader; var _1 : Error; } {
        _f;
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.Reader)), _1 : _err };
        };
        var _r:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f._zipr, _f._headerOffset + _bodyOffset, ((_f.compressedSize64 : GoInt64)));
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function open(_f:Ref<File>):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        _f;
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : _err };
        };
        var _size:GoInt64 = ((_f.compressedSize64 : GoInt64));
        var _r:Ref<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(_f._zipr, _f._headerOffset + _bodyOffset, _size);
        var _dcomp:Decompressor = _f._zip._decompressor(_f.method);
        if (_dcomp == null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : errAlgorithm };
        };
        var _rc:stdgo.io.Io.ReadCloser = _dcomp(_r);
        var _desr:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
        if (_f._hasDataDescriptor()) {
            _desr = stdgo.io.Io.newSectionReader(_f._zipr, (_f._headerOffset + _bodyOffset) + _size, ((16 : GoInt64)));
        };
        _rc = (({ _rc : _rc, _hash : stdgo.hash.crc32.Crc32.newIEEE(), _f : _f, _desr : _desr, _nread : 0, _err : ((null : stdgo.Error)) } : T_checksumReader));
        return { _0 : _rc, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function dataOffset(_f:Ref<File>):{ var _0 : GoInt64; var _1 : Error; } {
        _f;
        var _offset:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        return { _0 : _f._headerOffset + _bodyOffset, _1 : ((null : stdgo.Error)) };
    }
}
class T_checksumReader_wrapper {
    @:keep
    public function close():Error {
        var _r = __t__;
        _r;
        return _r._rc.close();
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _r._err };
        };
        {
            var __tmp__ = _r._rc.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._hash.write(((_b.__slice__(0, _n) : Slice<GoUInt8>)));
        _r._nread = _r._nread + (((_n : GoUInt64)));
        if (_err == null) {
            return { _0 : _n, _1 : _err };
        };
        if (_err == stdgo.io.Io.eof) {
            if (_r._nread != _r._f.uncompressedSize64) {
                return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errUnexpectedEOF };
            };
            if (_r._desr != null) {
                {
                    var _err1:stdgo.Error = _readDataDescriptor(_r._desr, _r._f);
                    if (_err1 != null) {
                        if (_err1 == stdgo.io.Io.eof) {
                            _err = stdgo.io.Io.errUnexpectedEOF;
                        } else {
                            _err = _err1;
                        };
                    } else if (_r._hash.sum32() != _r._f.crc32) {
                        _err = errChecksum;
                    };
                };
            } else {
                if ((_r._f.crc32 != ((0 : GoUInt32))) && (_r._hash.sum32() != _r._f.crc32)) {
                    _err = errChecksum;
                };
            };
        };
        _r._err = _err;
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _r = __t__;
        _r;
        return { _0 : ((new T_headerFileInfo(_r._f.fileHeader) : T_headerFileInfo)), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_checksumReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_checksumReader_static_extension {
    @:keep
    public static function close(_r:Ref<T_checksumReader>):Error {
        _r;
        return _r._rc.close();
    }
    @:keep
    public static function read(_r:Ref<T_checksumReader>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _r._err };
        };
        {
            var __tmp__ = _r._rc.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._hash.write(((_b.__slice__(0, _n) : Slice<GoUInt8>)));
        _r._nread = _r._nread + (((_n : GoUInt64)));
        if (_err == null) {
            return { _0 : _n, _1 : _err };
        };
        if (_err == stdgo.io.Io.eof) {
            if (_r._nread != _r._f.uncompressedSize64) {
                return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errUnexpectedEOF };
            };
            if (_r._desr != null) {
                {
                    var _err1:stdgo.Error = _readDataDescriptor(_r._desr, _r._f);
                    if (_err1 != null) {
                        if (_err1 == stdgo.io.Io.eof) {
                            _err = stdgo.io.Io.errUnexpectedEOF;
                        } else {
                            _err = _err1;
                        };
                    } else if (_r._hash.sum32() != _r._f.crc32) {
                        _err = errChecksum;
                    };
                };
            } else {
                if ((_r._f.crc32 != ((0 : GoUInt32))) && (_r._hash.sum32() != _r._f.crc32)) {
                    _err = errChecksum;
                };
            };
        };
        _r._err = _err;
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function stat(_r:Ref<T_checksumReader>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        _r;
        return { _0 : ((new T_headerFileInfo(_r._f.fileHeader) : T_headerFileInfo)), _1 : ((null : stdgo.Error)) };
    }
}
class T_fileListEntry_wrapper {
    @:keep
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _f = __t__;
        _f;
        return { _0 : _f, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function modTime():stdgo.time.Time.Time {
        var _f = __t__;
        _f;
        if (_f._file == null) {
            return ((new stdgo.time.Time.Time() : stdgo.time.Time.Time));
        };
        return (_f._file.fileHeader.modified.utc() == null ? null : _f._file.fileHeader.modified.utc().__copy__());
    }
    @:keep
    public function sys():AnyInterface {
        var _f = __t__;
        _f;
        return ((null : AnyInterface));
    }
    @:keep
    public function isDir():Bool {
        var _f = __t__;
        _f;
        return true;
    }
    @:keep
    public function type():stdgo.io.fs.Fs.FileMode {
        var _f = __t__;
        _f;
        return (("2147483648" : GoUInt32));
    }
    @:keep
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _f = __t__;
        _f;
        return (("2147484013" : GoUInt32));
    }
    @:keep
    public function size():GoInt64 {
        var _f = __t__;
        _f;
        return ((0 : GoInt64));
    }
    @:keep
    public function name():GoString {
        var _f = __t__;
        _f;
        var __tmp__ = _split(_f._name), _0:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _1:Bool = __tmp__._2;
        return _elem;
    }
    @:keep
    public function _stat():T_fileInfoDirEntry {
        var _e = __t__;
        _e;
        if (!_e._isDir) {
            return ((new T_headerFileInfo(_e._file.fileHeader) : T_headerFileInfo));
        };
        return _e;
    }
    public var __t__ : T_fileListEntry;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_fileListEntry_static_extension {
    @:keep
    public static function info(_f:Ref<T_fileListEntry>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        _f;
        return { _0 : _f, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function modTime(_f:Ref<T_fileListEntry>):stdgo.time.Time.Time {
        _f;
        if (_f._file == null) {
            return ((new stdgo.time.Time.Time() : stdgo.time.Time.Time));
        };
        return (_f._file.fileHeader.modified.utc() == null ? null : _f._file.fileHeader.modified.utc().__copy__());
    }
    @:keep
    public static function sys(_f:Ref<T_fileListEntry>):AnyInterface {
        _f;
        return ((null : AnyInterface));
    }
    @:keep
    public static function isDir(_f:Ref<T_fileListEntry>):Bool {
        _f;
        return true;
    }
    @:keep
    public static function type(_f:Ref<T_fileListEntry>):stdgo.io.fs.Fs.FileMode {
        _f;
        return (("2147483648" : GoUInt32));
    }
    @:keep
    public static function mode(_f:Ref<T_fileListEntry>):stdgo.io.fs.Fs.FileMode {
        _f;
        return (("2147484013" : GoUInt32));
    }
    @:keep
    public static function size(_f:Ref<T_fileListEntry>):GoInt64 {
        _f;
        return ((0 : GoInt64));
    }
    @:keep
    public static function name(_f:Ref<T_fileListEntry>):GoString {
        _f;
        var __tmp__ = _split(_f._name), _0:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _1:Bool = __tmp__._2;
        return _elem;
    }
    @:keep
    public static function _stat(_e:Ref<T_fileListEntry>):T_fileInfoDirEntry {
        _e;
        if (!_e._isDir) {
            return ((new T_headerFileInfo(_e._file.fileHeader) : T_headerFileInfo));
        };
        return _e;
    }
}
class T_openDir_wrapper {
    @:keep
    public function readDir(_count:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        var _d = __t__;
        _d;
        var _n:GoInt = (_d._files != null ? _d._files.length : ((0 : GoInt))) - _d._offset;
        if ((_count > ((0 : GoInt))) && (_n > _count)) {
            _n = _count;
        };
        if (_n == ((0 : GoInt))) {
            if (_count <= ((0 : GoInt))) {
                return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : stdgo.io.Io.eof };
        };
        var _list:Slice<stdgo.io.fs.Fs.DirEntry> = new Slice<stdgo.io.fs.Fs.DirEntry>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : stdgo.io.fs.Fs.DirEntry))]);
        for (_i => _ in _list) {
            if (_list != null) _list[_i] = (_d._files != null ? _d._files[_d._offset + _i] : new T_fileListEntry())._stat();
        };
        _d._offset = _d._offset + (_n);
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = __t__;
        _d;
        return { _0 : ((0 : GoInt)), _1 : (({ op : ((("read" : GoString))), path : _d._e._name, err : stdgo.errors.Errors.new_(((("is a directory" : GoString)))) } : stdgo.io.fs.Fs.PathError)) };
    }
    @:keep
    public function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _d = __t__;
        _d;
        return { _0 : _d._e._stat(), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function close():Error {
        var _d = __t__;
        _d;
        return ((null : stdgo.Error));
    }
    public var __t__ : T_openDir;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_openDir_static_extension {
    @:keep
    public static function readDir(_d:Ref<T_openDir>, _count:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        _d;
        var _n:GoInt = (_d._files != null ? _d._files.length : ((0 : GoInt))) - _d._offset;
        if ((_count > ((0 : GoInt))) && (_n > _count)) {
            _n = _count;
        };
        if (_n == ((0 : GoInt))) {
            if (_count <= ((0 : GoInt))) {
                return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : stdgo.io.Io.eof };
        };
        var _list:Slice<stdgo.io.fs.Fs.DirEntry> = new Slice<stdgo.io.fs.Fs.DirEntry>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : stdgo.io.fs.Fs.DirEntry))]);
        for (_i => _ in _list) {
            if (_list != null) _list[_i] = (_d._files != null ? _d._files[_d._offset + _i] : new T_fileListEntry())._stat();
        };
        _d._offset = _d._offset + (_n);
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function read(_d:Ref<T_openDir>, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _d;
        return { _0 : ((0 : GoInt)), _1 : (({ op : ((("read" : GoString))), path : _d._e._name, err : stdgo.errors.Errors.new_(((("is a directory" : GoString)))) } : stdgo.io.fs.Fs.PathError)) };
    }
    @:keep
    public static function stat(_d:Ref<T_openDir>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        _d;
        return { _0 : _d._e._stat(), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function close(_d:Ref<T_openDir>):Error {
        _d;
        return ((null : stdgo.Error));
    }
}
class ZipTest_wrapper {
    public var __t__ : ZipTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ZipTestFile_wrapper {
    public var __t__ : ZipTestFile;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_pooledFlateWriter_wrapper {
    @:keep
    public function close():Error {
        var _w = __t__;
        _w;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _w._mu.lock();
        try {
            __deferstack__.unshift(() -> _w._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_w._fw != null) {
                _err = _w._fw.close();
                _flateWriterPool.put(Go.toInterface(_w._fw));
                _w._fw = null;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        _w;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _w._mu.lock();
        try {
            __deferstack__.unshift(() -> _w._mu.unlock());
            if (_w._fw == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("Write after Close" : GoString)))) };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _w._fw.write(_p);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    public var __t__ : T_pooledFlateWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_pooledFlateWriter_static_extension {
    @:keep
    public static function close(_w:Ref<T_pooledFlateWriter>):Error {
        _w;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _w._mu.lock();
        try {
            __deferstack__.unshift(() -> _w._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_w._fw != null) {
                _err = _w._fw.close();
                _flateWriterPool.put(Go.toInterface(_w._fw));
                _w._fw = null;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public static function write(_w:Ref<T_pooledFlateWriter>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _w;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _w._mu.lock();
        try {
            __deferstack__.unshift(() -> _w._mu.unlock());
            if (_w._fw == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("Write after Close" : GoString)))) };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _w._fw.write(_p);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
class T_pooledFlateReader_wrapper {
    @:keep
    public function close():Error {
        var _r = __t__;
        _r;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _r._mu.lock();
        try {
            __deferstack__.unshift(() -> _r._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_r._fr != null) {
                _err = _r._fr.close();
                _flateReaderPool.put(Go.toInterface(_r._fr));
                _r._fr = ((null : stdgo.io.Io.ReadCloser));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _r._mu.lock();
        try {
            __deferstack__.unshift(() -> _r._mu.unlock());
            if (_r._fr == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("Read after Close" : GoString)))) };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _r._fr.read(_p);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    public var __t__ : T_pooledFlateReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_pooledFlateReader_static_extension {
    @:keep
    public static function close(_r:Ref<T_pooledFlateReader>):Error {
        _r;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _r._mu.lock();
        try {
            __deferstack__.unshift(() -> _r._mu.unlock());
            var _err:Error = ((null : stdgo.Error));
            if (_r._fr != null) {
                _err = _r._fr.close();
                _flateReaderPool.put(Go.toInterface(_r._fr));
                _r._fr = ((null : stdgo.io.Io.ReadCloser));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public static function read(_r:Ref<T_pooledFlateReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _r._mu.lock();
        try {
            __deferstack__.unshift(() -> _r._mu.unlock());
            if (_r._fr == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("Read after Close" : GoString)))) };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _r._fr.read(_p);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
class FileHeader_wrapper {
    @:keep
    public function _hasDataDescriptor():Bool {
        var _f = __t__;
        _f;
        return (_f.flags & ((8 : GoUInt16))) != ((0 : GoUInt16));
    }
    @:keep
    public function _isZip64():Bool {
        var _h = __t__;
        _h;
        return (_h.compressedSize64 >= (("4294967295" : GoUInt64))) || (_h.uncompressedSize64 >= (("4294967295" : GoUInt64)));
    }
    @:keep
    public function setMode(_mode:stdgo.io.fs.Fs.FileMode):Void {
        var _h = __t__;
        _h;
        _h.creatorVersion = (_h.creatorVersion & ((255 : GoUInt16))) | ((768 : GoUInt16));
        _h.externalAttrs = _fileModeToUnixMode(_mode) << ((16 : GoUnTypedInt));
        if ((_mode & (("2147483648" : GoUInt32))) != ((0 : GoUInt32))) {
            _h.externalAttrs = _h.externalAttrs | (((16 : GoUInt32)));
        };
        if ((_mode & ((128 : GoUInt32))) == ((0 : GoUInt32))) {
            _h.externalAttrs = _h.externalAttrs | (((1 : GoUInt32)));
        };
    }
    @:keep
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _h = __t__;
        _h;
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        if (_h.creatorVersion >> ((8 : GoUnTypedInt)) == ((3 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((19 : GoUInt16))) {
            _mode = _unixModeToFileMode(_h.externalAttrs >> ((16 : GoUnTypedInt)));
        } else if (_h.creatorVersion >> ((8 : GoUnTypedInt)) == ((11 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((14 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((0 : GoUInt16))) {
            _mode = _msdosModeToFileMode(_h.externalAttrs);
        };
        if (((_h.name != null ? _h.name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_h.name != null ? _h.name[(_h.name != null ? _h.name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            _mode = _mode | ((("2147483648" : GoUInt32)));
        };
        return _mode;
    }
    @:keep
    public function setModTime(_t:stdgo.time.Time.Time):Void {
        var _h = __t__;
        _h;
        _t = (_t.utc() == null ? null : _t.utc().__copy__());
        _h.modified = (_t == null ? null : _t.__copy__());
        {
            var __tmp__ = _timeToMsDosTime((_t == null ? null : _t.__copy__()));
            _h.modifiedDate = __tmp__._0;
            _h.modifiedTime = __tmp__._1;
        };
    }
    @:keep
    public function modTime():stdgo.time.Time.Time {
        var _h = __t__;
        _h;
        return (_msDosTimeToTime(_h.modifiedDate, _h.modifiedTime) == null ? null : _msDosTimeToTime(_h.modifiedDate, _h.modifiedTime).__copy__());
    }
    @:keep
    public function fileInfo():stdgo.io.fs.Fs.FileInfo {
        var _h = __t__;
        _h;
        return ((new T_headerFileInfo(_h) : T_headerFileInfo));
    }
    public var __t__ : FileHeader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class FileHeader_static_extension {
    @:keep
    public static function _hasDataDescriptor(_f:Ref<FileHeader>):Bool {
        _f;
        return (_f.flags & ((8 : GoUInt16))) != ((0 : GoUInt16));
    }
    @:keep
    public static function _isZip64(_h:Ref<FileHeader>):Bool {
        _h;
        return (_h.compressedSize64 >= (("4294967295" : GoUInt64))) || (_h.uncompressedSize64 >= (("4294967295" : GoUInt64)));
    }
    @:keep
    public static function setMode(_h:Ref<FileHeader>, _mode:stdgo.io.fs.Fs.FileMode):Void {
        _h;
        _h.creatorVersion = (_h.creatorVersion & ((255 : GoUInt16))) | ((768 : GoUInt16));
        _h.externalAttrs = _fileModeToUnixMode(_mode) << ((16 : GoUnTypedInt));
        if ((_mode & (("2147483648" : GoUInt32))) != ((0 : GoUInt32))) {
            _h.externalAttrs = _h.externalAttrs | (((16 : GoUInt32)));
        };
        if ((_mode & ((128 : GoUInt32))) == ((0 : GoUInt32))) {
            _h.externalAttrs = _h.externalAttrs | (((1 : GoUInt32)));
        };
    }
    @:keep
    public static function mode(_h:Ref<FileHeader>):stdgo.io.fs.Fs.FileMode {
        _h;
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        if (_h.creatorVersion >> ((8 : GoUnTypedInt)) == ((3 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((19 : GoUInt16))) {
            _mode = _unixModeToFileMode(_h.externalAttrs >> ((16 : GoUnTypedInt)));
        } else if (_h.creatorVersion >> ((8 : GoUnTypedInt)) == ((11 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((14 : GoUInt16)) || _h.creatorVersion >> ((8 : GoUnTypedInt)) == ((0 : GoUInt16))) {
            _mode = _msdosModeToFileMode(_h.externalAttrs);
        };
        if (((_h.name != null ? _h.name.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_h.name != null ? _h.name[(_h.name != null ? _h.name.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            _mode = _mode | ((("2147483648" : GoUInt32)));
        };
        return _mode;
    }
    @:keep
    public static function setModTime(_h:Ref<FileHeader>, _t:stdgo.time.Time.Time):Void {
        _h;
        _t = (_t.utc() == null ? null : _t.utc().__copy__());
        _h.modified = (_t == null ? null : _t.__copy__());
        {
            var __tmp__ = _timeToMsDosTime((_t == null ? null : _t.__copy__()));
            _h.modifiedDate = __tmp__._0;
            _h.modifiedTime = __tmp__._1;
        };
    }
    @:keep
    public static function modTime(_h:Ref<FileHeader>):stdgo.time.Time.Time {
        _h;
        return (_msDosTimeToTime(_h.modifiedDate, _h.modifiedTime) == null ? null : _msDosTimeToTime(_h.modifiedDate, _h.modifiedTime).__copy__());
    }
    @:keep
    public static function fileInfo(_h:Ref<FileHeader>):stdgo.io.fs.Fs.FileInfo {
        _h;
        return ((new T_headerFileInfo(_h) : T_headerFileInfo));
    }
}
class T_headerFileInfo_wrapper {
    @:keep
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return { _0 : _fi, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function sys():AnyInterface {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return Go.toInterface(_fi._fh);
    }
    @:keep
    public function type():stdgo.io.fs.Fs.FileMode {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return _fi._fh.mode().type();
    }
    @:keep
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return _fi._fh.mode();
    }
    @:keep
    public function modTime():stdgo.time.Time.Time {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        if (_fi._fh.modified.isZero()) {
            return (_fi._fh.modTime() == null ? null : _fi._fh.modTime().__copy__());
        };
        return (_fi._fh.modified.utc() == null ? null : _fi._fh.modified.utc().__copy__());
    }
    @:keep
    public function isDir():Bool {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return _fi.mode().isDir();
    }
    @:keep
    public function size():GoInt64 {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        if (_fi._fh.uncompressedSize64 > ((0 : GoUInt64))) {
            return ((_fi._fh.uncompressedSize64 : GoInt64));
        };
        return ((_fi._fh.uncompressedSize : GoInt64));
    }
    @:keep
    public function name():GoString {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return stdgo.path.Path.base(_fi._fh.name);
    }
    public var __t__ : T_headerFileInfo;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_headerFileInfo_static_extension {
    @:keep
    public static function info(_fi:T_headerFileInfo):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        (_fi == null ? null : _fi.__copy__());
        return { _0 : _fi, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function sys(_fi:T_headerFileInfo):AnyInterface {
        (_fi == null ? null : _fi.__copy__());
        return Go.toInterface(_fi._fh);
    }
    @:keep
    public static function type(_fi:T_headerFileInfo):stdgo.io.fs.Fs.FileMode {
        (_fi == null ? null : _fi.__copy__());
        return _fi._fh.mode().type();
    }
    @:keep
    public static function mode(_fi:T_headerFileInfo):stdgo.io.fs.Fs.FileMode {
        (_fi == null ? null : _fi.__copy__());
        return _fi._fh.mode();
    }
    @:keep
    public static function modTime(_fi:T_headerFileInfo):stdgo.time.Time.Time {
        (_fi == null ? null : _fi.__copy__());
        if (_fi._fh.modified.isZero()) {
            return (_fi._fh.modTime() == null ? null : _fi._fh.modTime().__copy__());
        };
        return (_fi._fh.modified.utc() == null ? null : _fi._fh.modified.utc().__copy__());
    }
    @:keep
    public static function isDir(_fi:T_headerFileInfo):Bool {
        (_fi == null ? null : _fi.__copy__());
        return _fi.mode().isDir();
    }
    @:keep
    public static function size(_fi:T_headerFileInfo):GoInt64 {
        (_fi == null ? null : _fi.__copy__());
        if (_fi._fh.uncompressedSize64 > ((0 : GoUInt64))) {
            return ((_fi._fh.uncompressedSize64 : GoInt64));
        };
        return ((_fi._fh.uncompressedSize : GoInt64));
    }
    @:keep
    public static function name(_fi:T_headerFileInfo):GoString {
        (_fi == null ? null : _fi.__copy__());
        return stdgo.path.Path.base(_fi._fh.name);
    }
}
class T_directoryEnd_wrapper {
    public var __t__ : T_directoryEnd;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Writer_wrapper {
    @:keep
    public function _compressor(_method:GoUInt16):Compressor {
        var _w = __t__;
        _w;
        var _comp:Compressor = (_w._compressors != null ? _w._compressors[_method] : ((null : Compressor)));
        if (_comp == null) {
            _comp = stdgo.archive.zip.Zip._compressor(_method);
        };
        return _comp;
    }
    @:keep
    public function registerCompressor(_method:GoUInt16, _comp:Compressor):Void {
        var _w = __t__;
        _w;
        if (_w._compressors == null) {
            _w._compressors = new Map<Int, Compressor>();
        };
        if (_w._compressors != null) _w._compressors[_method] = _comp;
    }
    @:keep
    public function copy(_f:File):Error {
        var _w = __t__;
        _w;
        var __tmp__ = _f.openRaw(), _r:stdgo.io.Io.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _w.createRaw(_f.fileHeader), _fw:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo.io.Io.copy(_fw, _r);
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    public function createRaw(_fh:FileHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = __t__;
        _w;
        {
            var _err:stdgo.Error = _w._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _fh.compressedSize = ((_min64(_fh.compressedSize64, (("4294967295" : GoUInt64))) : GoUInt32));
        _fh.uncompressedSize = ((_min64(_fh.uncompressedSize64, (("4294967295" : GoUInt64))) : GoUInt32));
        var _h:Ref<T_header> = (({ fileHeader : _fh, _offset : ((_w._cw._count : GoUInt64)), _raw : true } : T_header));
        _w._dir = (_w._dir != null ? _w._dir.__append__(_h) : new Slice<Ref<T_header>>(_h));
        {
            var _err:stdgo.Error = _writeHeader(_w._cw, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        if (stdgo.strings.Strings.hasSuffix(_fh.name, ((("/" : GoString))))) {
            _w._last = null;
            return { _0 : ((new T_dirWriter() : T_dirWriter)), _1 : ((null : stdgo.Error)) };
        };
        var _fw:Ref<T_fileWriter> = (({ _header : _h, _zipw : _w._cw, _rawCount : ((null : Ref<T_countWriter>)), _comp : ((null : stdgo.io.Io.WriteCloser)), _compCount : ((null : Ref<T_countWriter>)), _crc32 : ((null : stdgo.hash.Hash.Hash32)), _closed : false } : T_fileWriter));
        _w._last = _fw;
        return { _0 : _fw, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function createHeader(_fh:FileHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = __t__;
        _w;
        {
            var _err:stdgo.Error = _w._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        var __tmp__ = _detectUTF8(_fh.name), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
        var __tmp__ = _detectUTF8(_fh.comment), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
        if (_fh.nonUTF8) {
            _fh.flags = _fh.flags & ((((2048 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
        } else if ((_utf8Require1 || _utf8Require2) && (_utf8Valid1 && _utf8Valid2)) {
            _fh.flags = _fh.flags | (((2048 : GoUInt16)));
        };
        _fh.creatorVersion = (_fh.creatorVersion & ((65280 : GoUInt16))) | ((20 : GoUInt16));
        _fh.readerVersion = ((20 : GoUInt16));
        if (!_fh.modified.isZero()) {
            {
                var __tmp__ = _timeToMsDosTime((_fh.modified == null ? null : _fh.modified.__copy__()));
                _fh.modifiedDate = __tmp__._0;
                _fh.modifiedTime = __tmp__._1;
            };
            var _mbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
            var _mt:GoUInt32 = ((_fh.modified.unix() : GoUInt32));
            var _eb:T_writeBuf = (((((_mbuf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_mbuf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _eb._uint16(((21589 : GoUInt16)));
            _eb._uint16(((5 : GoUInt16)));
            _eb._uint8(((1 : GoUInt8)));
            _eb._uint32(_mt);
            _fh.extra = (_fh.extra != null ? _fh.extra.__append__(...((_mbuf.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_mbuf.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
        };
        var _ow:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer)), _fw:T_fileWriter = ((null : Ref<T_fileWriter>));
        var _h:Ref<T_header> = (({ fileHeader : _fh, _offset : ((_w._cw._count : GoUInt64)), _raw : false } : T_header));
        if (stdgo.strings.Strings.hasSuffix(_fh.name, ((("/" : GoString))))) {
            _fh.method = ((0 : GoUInt16));
            _fh.flags = _fh.flags & ((((8 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
            _fh.compressedSize = ((0 : GoUInt32));
            _fh.compressedSize64 = ((0 : GoUInt64));
            _fh.uncompressedSize = ((0 : GoUInt32));
            _fh.uncompressedSize64 = ((0 : GoUInt64));
            _ow = ((new T_dirWriter() : T_dirWriter));
        } else {
            _fh.flags = _fh.flags | (((8 : GoUInt16)));
            _fw = (({ _zipw : _w._cw, _compCount : (({ _w : _w._cw, _count : 0 } : T_countWriter)), _crc32 : stdgo.hash.crc32.Crc32.newIEEE(), _header : ((null : Ref<T_header>)), _rawCount : ((null : Ref<T_countWriter>)), _comp : ((null : stdgo.io.Io.WriteCloser)), _closed : false } : T_fileWriter));
            var _comp:Compressor = _w._compressor(_fh.method);
            if (_comp == null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : errAlgorithm };
            };
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _comp(_fw._compCount);
                _fw._comp = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
            _fw._rawCount = (({ _w : _fw._comp, _count : 0 } : T_countWriter));
            _fw._header = _h;
            _ow = _fw;
        };
        _w._dir = (_w._dir != null ? _w._dir.__append__(_h) : new Slice<Ref<T_header>>(_h));
        {
            var _err:stdgo.Error = _writeHeader(_w._cw, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _w._last = _fw;
        return { _0 : _ow, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _prepare(_fh:FileHeader):Error {
        var _w = __t__;
        _w;
        if ((_w._last != null) && !_w._last._closed) {
            {
                var _err:stdgo.Error = _w._last._close();
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((_w._dir != null ? _w._dir.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_w._dir != null ? _w._dir[(_w._dir != null ? _w._dir.length : ((0 : GoInt))) - ((1 : GoInt))] : ((null : Ref<T_header>))).fileHeader == _fh)) {
            return stdgo.errors.Errors.new_(((("archive/zip: invalid duplicate FileHeader" : GoString))));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function create(_name:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = __t__;
        _w;
        var _header:Ref<FileHeader> = (({ name : _name, method : ((8 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        return _w.createHeader(_header);
    }
    @:keep
    public function close():Error {
        var _w = __t__;
        _w;
        if ((_w._last != null) && !_w._last._closed) {
            {
                var _err:stdgo.Error = _w._last._close();
                if (_err != null) {
                    return _err;
                };
            };
            _w._last = null;
        };
        if (_w._closed) {
            return stdgo.errors.Errors.new_(((("zip: writer closed twice" : GoString))));
        };
        _w._closed = true;
        var _start:GoInt64 = _w._cw._count;
        for (_0 => _h in _w._dir) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 46) ((0 : GoUInt8))]);
            var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _b._uint32(((((33639248 : GoUInt32)) : GoUInt32)));
            _b._uint16(_h.creatorVersion);
            _b._uint16(_h.readerVersion);
            _b._uint16(_h.flags);
            _b._uint16(_h.method);
            _b._uint16(_h.modifiedTime);
            _b._uint16(_h.modifiedDate);
            _b._uint32(_h.crc32);
            if (_h._isZip64() || (_h._offset >= (("4294967295" : GoUInt64)))) {
                _b._uint32((("4294967295" : GoUInt32)));
                _b._uint32((("4294967295" : GoUInt32)));
                var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
                var _eb:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
                _eb._uint16(((1 : GoUInt16)));
                _eb._uint16(((24 : GoUInt16)));
                _eb._uint64(_h.uncompressedSize64);
                _eb._uint64(_h.compressedSize64);
                _eb._uint64(_h._offset);
                _h.extra = (_h.extra != null ? _h.extra.__append__(...((_buf.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_buf.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
            } else {
                _b._uint32(_h.compressedSize);
                _b._uint32(_h.uncompressedSize);
            };
            _b._uint16((((_h.name != null ? _h.name.length : ((0 : GoInt))) : GoUInt16)));
            _b._uint16((((_h.extra != null ? _h.extra.length : ((0 : GoInt))) : GoUInt16)));
            _b._uint16((((_h.comment != null ? _h.comment.length : ((0 : GoInt))) : GoUInt16)));
            _b = (((_b.__slice__(((4 : GoInt))) : T_writeBuf)) == null ? null : ((_b.__slice__(((4 : GoInt))) : T_writeBuf)).__copy__());
            _b._uint32(_h.externalAttrs);
            if (_h._offset > (("4294967295" : GoUInt64))) {
                _b._uint32((("4294967295" : GoUInt32)));
            } else {
                _b._uint32(((_h._offset : GoUInt32)));
            };
            {
                var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w._cw, _h.name), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w._cw.write(_h.extra), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w._cw, _h.comment), _4:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _end:GoInt64 = _w._cw._count;
        var _records:GoUInt64 = (((_w._dir != null ? _w._dir.length : ((0 : GoInt))) : GoUInt64));
        var _size:GoUInt64 = (((_end - _start) : GoUInt64));
        var _offset:GoUInt64 = ((_start : GoUInt64));
        {
            var _f:(GoUInt64, GoUInt64) -> Void = _w._testHookCloseSizeOffset;
            if (_f != null) {
                _f(_size, _offset);
            };
        };
        if (((_records >= ((65535 : GoUInt64))) || (_size >= (("4294967295" : GoUInt64)))) || (_offset >= (("4294967295" : GoUInt64)))) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 76) ((0 : GoUInt8))]);
            var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _b._uint32(((101075792 : GoUInt32)));
            _b._uint64(((44 : GoUInt64)));
            _b._uint16(((45 : GoUInt16)));
            _b._uint16(((45 : GoUInt16)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(_records);
            _b._uint64(_records);
            _b._uint64(_size);
            _b._uint64(_offset);
            _b._uint32(((117853008 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(((_end : GoUInt64)));
            _b._uint32(((1 : GoUInt32)));
            {
                var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _5:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _records = ((65535 : GoUInt64));
            _size = (("4294967295" : GoUInt64));
            _offset = (("4294967295" : GoUInt64));
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 22) ((0 : GoUInt8))]);
        var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
        _b._uint32(((((101010256 : GoUInt32)) : GoUInt32)));
        _b = (((_b.__slice__(((4 : GoInt))) : T_writeBuf)) == null ? null : ((_b.__slice__(((4 : GoInt))) : T_writeBuf)).__copy__());
        _b._uint16(((_records : GoUInt16)));
        _b._uint16(((_records : GoUInt16)));
        _b._uint32(((_size : GoUInt32)));
        _b._uint32(((_offset : GoUInt32)));
        _b._uint16((((_w._comment != null ? _w._comment.length : ((0 : GoInt))) : GoUInt16)));
        {
            var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _6:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_w._cw, _w._comment), _7:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((((_w._cw._w.__underlying__().value : Dynamic)) : stdgo.bufio.Bufio.Writer)).flush();
    }
    @:keep
    public function setComment(_comment:GoString):Error {
        var _w = __t__;
        _w;
        if ((_comment != null ? _comment.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return stdgo.errors.Errors.new_(((("zip: Writer.Comment too long" : GoString))));
        };
        _w._comment = _comment;
        return ((null : stdgo.Error));
    }
    @:keep
    public function flush():Error {
        var _w = __t__;
        _w;
        return ((((_w._cw._w.__underlying__().value : Dynamic)) : stdgo.bufio.Bufio.Writer)).flush();
    }
    @:keep
    public function setOffset(_n:GoInt64):Void {
        var _w = __t__;
        _w;
        if (_w._cw._count != ((0 : GoInt64))) {
            throw Go.toInterface(((("zip: SetOffset called after data was written" : GoString))));
        };
        _w._cw._count = _n;
    }
    public var __t__ : Writer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Writer_static_extension {
    @:keep
    public static function _compressor(_w:Ref<Writer>, _method:GoUInt16):Compressor {
        _w;
        var _comp:Compressor = (_w._compressors != null ? _w._compressors[_method] : ((null : Compressor)));
        if (_comp == null) {
            _comp = stdgo.archive.zip.Zip._compressor(_method);
        };
        return _comp;
    }
    @:keep
    public static function registerCompressor(_w:Ref<Writer>, _method:GoUInt16, _comp:Compressor):Void {
        _w;
        if (_w._compressors == null) {
            _w._compressors = new Map<Int, Compressor>();
        };
        if (_w._compressors != null) _w._compressors[_method] = _comp;
    }
    @:keep
    public static function copy(_w:Ref<Writer>, _f:File):Error {
        _w;
        var __tmp__ = _f.openRaw(), _r:stdgo.io.Io.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _w.createRaw(_f.fileHeader), _fw:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo.io.Io.copy(_fw, _r);
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    public static function createRaw(_w:Ref<Writer>, _fh:FileHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        _w;
        {
            var _err:stdgo.Error = _w._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _fh.compressedSize = ((_min64(_fh.compressedSize64, (("4294967295" : GoUInt64))) : GoUInt32));
        _fh.uncompressedSize = ((_min64(_fh.uncompressedSize64, (("4294967295" : GoUInt64))) : GoUInt32));
        var _h:Ref<T_header> = (({ fileHeader : _fh, _offset : ((_w._cw._count : GoUInt64)), _raw : true } : T_header));
        _w._dir = (_w._dir != null ? _w._dir.__append__(_h) : new Slice<Ref<T_header>>(_h));
        {
            var _err:stdgo.Error = _writeHeader(_w._cw, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        if (stdgo.strings.Strings.hasSuffix(_fh.name, ((("/" : GoString))))) {
            _w._last = null;
            return { _0 : ((new T_dirWriter() : T_dirWriter)), _1 : ((null : stdgo.Error)) };
        };
        var _fw:Ref<T_fileWriter> = (({ _header : _h, _zipw : _w._cw, _rawCount : ((null : Ref<T_countWriter>)), _comp : ((null : stdgo.io.Io.WriteCloser)), _compCount : ((null : Ref<T_countWriter>)), _crc32 : ((null : stdgo.hash.Hash.Hash32)), _closed : false } : T_fileWriter));
        _w._last = _fw;
        return { _0 : _fw, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function createHeader(_w:Ref<Writer>, _fh:FileHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        _w;
        {
            var _err:stdgo.Error = _w._prepare(_fh);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        var __tmp__ = _detectUTF8(_fh.name), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
        var __tmp__ = _detectUTF8(_fh.comment), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
        if (_fh.nonUTF8) {
            _fh.flags = _fh.flags & ((((2048 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
        } else if ((_utf8Require1 || _utf8Require2) && (_utf8Valid1 && _utf8Valid2)) {
            _fh.flags = _fh.flags | (((2048 : GoUInt16)));
        };
        _fh.creatorVersion = (_fh.creatorVersion & ((65280 : GoUInt16))) | ((20 : GoUInt16));
        _fh.readerVersion = ((20 : GoUInt16));
        if (!_fh.modified.isZero()) {
            {
                var __tmp__ = _timeToMsDosTime((_fh.modified == null ? null : _fh.modified.__copy__()));
                _fh.modifiedDate = __tmp__._0;
                _fh.modifiedTime = __tmp__._1;
            };
            var _mbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
            var _mt:GoUInt32 = ((_fh.modified.unix() : GoUInt32));
            var _eb:T_writeBuf = (((((_mbuf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_mbuf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _eb._uint16(((21589 : GoUInt16)));
            _eb._uint16(((5 : GoUInt16)));
            _eb._uint8(((1 : GoUInt8)));
            _eb._uint32(_mt);
            _fh.extra = (_fh.extra != null ? _fh.extra.__append__(...((_mbuf.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_mbuf.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
        };
        var _ow:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer)), _fw:T_fileWriter = ((null : Ref<T_fileWriter>));
        var _h:Ref<T_header> = (({ fileHeader : _fh, _offset : ((_w._cw._count : GoUInt64)), _raw : false } : T_header));
        if (stdgo.strings.Strings.hasSuffix(_fh.name, ((("/" : GoString))))) {
            _fh.method = ((0 : GoUInt16));
            _fh.flags = _fh.flags & ((((8 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
            _fh.compressedSize = ((0 : GoUInt32));
            _fh.compressedSize64 = ((0 : GoUInt64));
            _fh.uncompressedSize = ((0 : GoUInt32));
            _fh.uncompressedSize64 = ((0 : GoUInt64));
            _ow = ((new T_dirWriter() : T_dirWriter));
        } else {
            _fh.flags = _fh.flags | (((8 : GoUInt16)));
            _fw = (({ _zipw : _w._cw, _compCount : (({ _w : _w._cw, _count : 0 } : T_countWriter)), _crc32 : stdgo.hash.crc32.Crc32.newIEEE(), _header : ((null : Ref<T_header>)), _rawCount : ((null : Ref<T_countWriter>)), _comp : ((null : stdgo.io.Io.WriteCloser)), _closed : false } : T_fileWriter));
            var _comp:Compressor = _w._compressor(_fh.method);
            if (_comp == null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : errAlgorithm };
            };
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _comp(_fw._compCount);
                _fw._comp = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
            _fw._rawCount = (({ _w : _fw._comp, _count : 0 } : T_countWriter));
            _fw._header = _h;
            _ow = _fw;
        };
        _w._dir = (_w._dir != null ? _w._dir.__append__(_h) : new Slice<Ref<T_header>>(_h));
        {
            var _err:stdgo.Error = _writeHeader(_w._cw, _h);
            if (_err != null) {
                return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
            };
        };
        _w._last = _fw;
        return { _0 : _ow, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _prepare(_w:Ref<Writer>, _fh:FileHeader):Error {
        _w;
        if ((_w._last != null) && !_w._last._closed) {
            {
                var _err:stdgo.Error = _w._last._close();
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((_w._dir != null ? _w._dir.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_w._dir != null ? _w._dir[(_w._dir != null ? _w._dir.length : ((0 : GoInt))) - ((1 : GoInt))] : ((null : Ref<T_header>))).fileHeader == _fh)) {
            return stdgo.errors.Errors.new_(((("archive/zip: invalid duplicate FileHeader" : GoString))));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function create(_w:Ref<Writer>, _name:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        _w;
        var _header:Ref<FileHeader> = (({ name : _name, method : ((8 : GoUInt16)), comment : "", nonUTF8 : false, creatorVersion : 0, readerVersion : 0, flags : 0, modified : new stdgo.time.Time.Time(), modifiedTime : 0, modifiedDate : 0, crc32 : 0, compressedSize : 0, uncompressedSize : 0, compressedSize64 : 0, uncompressedSize64 : 0, extra : ((null : Slice<GoUInt8>)), externalAttrs : 0 } : FileHeader));
        return _w.createHeader(_header);
    }
    @:keep
    public static function close(_w:Ref<Writer>):Error {
        _w;
        if ((_w._last != null) && !_w._last._closed) {
            {
                var _err:stdgo.Error = _w._last._close();
                if (_err != null) {
                    return _err;
                };
            };
            _w._last = null;
        };
        if (_w._closed) {
            return stdgo.errors.Errors.new_(((("zip: writer closed twice" : GoString))));
        };
        _w._closed = true;
        var _start:GoInt64 = _w._cw._count;
        for (_0 => _h in _w._dir) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 46) ((0 : GoUInt8))]);
            var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _b._uint32(((((33639248 : GoUInt32)) : GoUInt32)));
            _b._uint16(_h.creatorVersion);
            _b._uint16(_h.readerVersion);
            _b._uint16(_h.flags);
            _b._uint16(_h.method);
            _b._uint16(_h.modifiedTime);
            _b._uint16(_h.modifiedDate);
            _b._uint32(_h.crc32);
            if (_h._isZip64() || (_h._offset >= (("4294967295" : GoUInt64)))) {
                _b._uint32((("4294967295" : GoUInt32)));
                _b._uint32((("4294967295" : GoUInt32)));
                var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
                var _eb:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
                _eb._uint16(((1 : GoUInt16)));
                _eb._uint16(((24 : GoUInt16)));
                _eb._uint64(_h.uncompressedSize64);
                _eb._uint64(_h.compressedSize64);
                _eb._uint64(_h._offset);
                _h.extra = (_h.extra != null ? _h.extra.__append__(...((_buf.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_buf.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
            } else {
                _b._uint32(_h.compressedSize);
                _b._uint32(_h.uncompressedSize);
            };
            _b._uint16((((_h.name != null ? _h.name.length : ((0 : GoInt))) : GoUInt16)));
            _b._uint16((((_h.extra != null ? _h.extra.length : ((0 : GoInt))) : GoUInt16)));
            _b._uint16((((_h.comment != null ? _h.comment.length : ((0 : GoInt))) : GoUInt16)));
            _b = (((_b.__slice__(((4 : GoInt))) : T_writeBuf)) == null ? null : ((_b.__slice__(((4 : GoInt))) : T_writeBuf)).__copy__());
            _b._uint32(_h.externalAttrs);
            if (_h._offset > (("4294967295" : GoUInt64))) {
                _b._uint32((("4294967295" : GoUInt32)));
            } else {
                _b._uint32(((_h._offset : GoUInt32)));
            };
            {
                var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w._cw, _h.name), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w._cw.write(_h.extra), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.writeString(_w._cw, _h.comment), _4:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _end:GoInt64 = _w._cw._count;
        var _records:GoUInt64 = (((_w._dir != null ? _w._dir.length : ((0 : GoInt))) : GoUInt64));
        var _size:GoUInt64 = (((_end - _start) : GoUInt64));
        var _offset:GoUInt64 = ((_start : GoUInt64));
        {
            var _f:(GoUInt64, GoUInt64) -> Void = _w._testHookCloseSizeOffset;
            if (_f != null) {
                _f(_size, _offset);
            };
        };
        if (((_records >= ((65535 : GoUInt64))) || (_size >= (("4294967295" : GoUInt64)))) || (_offset >= (("4294967295" : GoUInt64)))) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 76) ((0 : GoUInt8))]);
            var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
            _b._uint32(((101075792 : GoUInt32)));
            _b._uint64(((44 : GoUInt64)));
            _b._uint16(((45 : GoUInt16)));
            _b._uint16(((45 : GoUInt16)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(_records);
            _b._uint64(_records);
            _b._uint64(_size);
            _b._uint64(_offset);
            _b._uint32(((117853008 : GoUInt32)));
            _b._uint32(((0 : GoUInt32)));
            _b._uint64(((_end : GoUInt64)));
            _b._uint32(((1 : GoUInt32)));
            {
                var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _5:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _records = ((65535 : GoUInt64));
            _size = (("4294967295" : GoUInt64));
            _offset = (("4294967295" : GoUInt64));
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 22) ((0 : GoUInt8))]);
        var _b:T_writeBuf = (((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)) == null ? null : ((((_buf.__slice__(0) : Slice<GoUInt8>)) : T_writeBuf)).__copy__());
        _b._uint32(((((101010256 : GoUInt32)) : GoUInt32)));
        _b = (((_b.__slice__(((4 : GoInt))) : T_writeBuf)) == null ? null : ((_b.__slice__(((4 : GoInt))) : T_writeBuf)).__copy__());
        _b._uint16(((_records : GoUInt16)));
        _b._uint16(((_records : GoUInt16)));
        _b._uint32(((_size : GoUInt32)));
        _b._uint32(((_offset : GoUInt32)));
        _b._uint16((((_w._comment != null ? _w._comment.length : ((0 : GoInt))) : GoUInt16)));
        {
            var __tmp__ = _w._cw.write(((_buf.__slice__(0) : Slice<GoUInt8>))), _6:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_w._cw, _w._comment), _7:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((((_w._cw._w.__underlying__().value : Dynamic)) : stdgo.bufio.Bufio.Writer)).flush();
    }
    @:keep
    public static function setComment(_w:Ref<Writer>, _comment:GoString):Error {
        _w;
        if ((_comment != null ? _comment.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return stdgo.errors.Errors.new_(((("zip: Writer.Comment too long" : GoString))));
        };
        _w._comment = _comment;
        return ((null : stdgo.Error));
    }
    @:keep
    public static function flush(_w:Ref<Writer>):Error {
        _w;
        return ((((_w._cw._w.__underlying__().value : Dynamic)) : stdgo.bufio.Bufio.Writer)).flush();
    }
    @:keep
    public static function setOffset(_w:Ref<Writer>, _n:GoInt64):Void {
        _w;
        if (_w._cw._count != ((0 : GoInt64))) {
            throw Go.toInterface(((("zip: SetOffset called after data was written" : GoString))));
        };
        _w._cw._count = _n;
    }
}
class T_header_wrapper {
    public var __t__ : T_header;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_dirWriter_wrapper {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("zip: write to directory" : GoString)))) };
    }
    public var __t__ : T_dirWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_dirWriter_static_extension {
    @:keep
    public static function write(_:T_dirWriter, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("zip: write to directory" : GoString)))) };
    }
}
class T_fileWriter_wrapper {
    @:keep
    public function _writeDataDescriptor():Error {
        var _w = __t__;
        _w;
        if (!_w._hasDataDescriptor()) {
            return ((null : stdgo.Error));
        };
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (_w._isZip64()) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((24 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        } else {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        var _b:T_writeBuf = (((_buf : T_writeBuf)) == null ? null : ((_buf : T_writeBuf)).__copy__());
        _b._uint32(((134695760 : GoUInt32)));
        _b._uint32(_w.crc32);
        if (_w._isZip64()) {
            _b._uint64(_w.compressedSize64);
            _b._uint64(_w.uncompressedSize64);
        } else {
            _b._uint32(_w.compressedSize);
            _b._uint32(_w.uncompressedSize);
        };
        var __tmp__ = _w._zipw.write(_buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public function _close():Error {
        var _w = __t__;
        _w;
        if (_w._closed) {
            return stdgo.errors.Errors.new_(((("zip: file closed twice" : GoString))));
        };
        _w._closed = true;
        if (_w._raw) {
            return _w._writeDataDescriptor();
        };
        {
            var _err:stdgo.Error = _w._comp.close();
            if (_err != null) {
                return _err;
            };
        };
        var _fh:Ref<FileHeader> = _w._header.fileHeader;
        _fh.crc32 = _w._crc32.sum32();
        _fh.compressedSize64 = ((_w._compCount._count : GoUInt64));
        _fh.uncompressedSize64 = ((_w._rawCount._count : GoUInt64));
        if (_fh._isZip64()) {
            _fh.compressedSize = (("4294967295" : GoUInt32));
            _fh.uncompressedSize = (("4294967295" : GoUInt32));
            _fh.readerVersion = ((45 : GoUInt16));
        } else {
            _fh.compressedSize = ((_fh.compressedSize64 : GoUInt32));
            _fh.uncompressedSize = ((_fh.uncompressedSize64 : GoUInt32));
        };
        return _w._writeDataDescriptor();
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        _w;
        if (_w._closed) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("zip: write to closed file" : GoString)))) };
        };
        if (_w._raw) {
            return _w._zipw.write(_p);
        };
        _w._crc32.write(_p);
        return _w._rawCount.write(_p);
    }
    public var __t__ : T_fileWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_fileWriter_static_extension {
    @:keep
    public static function _writeDataDescriptor(_w:Ref<T_fileWriter>):Error {
        _w;
        if (!_w._hasDataDescriptor()) {
            return ((null : stdgo.Error));
        };
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (_w._isZip64()) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((24 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        } else {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        var _b:T_writeBuf = (((_buf : T_writeBuf)) == null ? null : ((_buf : T_writeBuf)).__copy__());
        _b._uint32(((134695760 : GoUInt32)));
        _b._uint32(_w.crc32);
        if (_w._isZip64()) {
            _b._uint64(_w.compressedSize64);
            _b._uint64(_w.uncompressedSize64);
        } else {
            _b._uint32(_w.compressedSize);
            _b._uint32(_w.uncompressedSize);
        };
        var __tmp__ = _w._zipw.write(_buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public static function _close(_w:Ref<T_fileWriter>):Error {
        _w;
        if (_w._closed) {
            return stdgo.errors.Errors.new_(((("zip: file closed twice" : GoString))));
        };
        _w._closed = true;
        if (_w._raw) {
            return _w._writeDataDescriptor();
        };
        {
            var _err:stdgo.Error = _w._comp.close();
            if (_err != null) {
                return _err;
            };
        };
        var _fh:Ref<FileHeader> = _w._header.fileHeader;
        _fh.crc32 = _w._crc32.sum32();
        _fh.compressedSize64 = ((_w._compCount._count : GoUInt64));
        _fh.uncompressedSize64 = ((_w._rawCount._count : GoUInt64));
        if (_fh._isZip64()) {
            _fh.compressedSize = (("4294967295" : GoUInt32));
            _fh.uncompressedSize = (("4294967295" : GoUInt32));
            _fh.readerVersion = ((45 : GoUInt16));
        } else {
            _fh.compressedSize = ((_fh.compressedSize64 : GoUInt32));
            _fh.uncompressedSize = ((_fh.uncompressedSize64 : GoUInt32));
        };
        return _w._writeDataDescriptor();
    }
    @:keep
    public static function write(_w:Ref<T_fileWriter>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _w;
        if (_w._closed) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("zip: write to closed file" : GoString)))) };
        };
        if (_w._raw) {
            return _w._zipw.write(_p);
        };
        _w._crc32.write(_p);
        return _w._rawCount.write(_p);
    }
}
class T_countWriter_wrapper {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        _w;
        var __tmp__ = _w._w.write(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w._count = _w._count + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    public var __t__ : T_countWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_countWriter_static_extension {
    @:keep
    public static function write(_w:Ref<T_countWriter>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _w;
        var __tmp__ = _w._w.write(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w._count = _w._count + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
}
class T_nopCloser_wrapper {
    @:keep
    public function close():Error {
        var _w = __t__;
        (_w == null ? null : _w.__copy__());
        return ((null : stdgo.Error));
    }
    public var __t__ : T_nopCloser;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_nopCloser_static_extension {
    @:keep
    public static function close(_w:T_nopCloser):Error {
        (_w == null ? null : _w.__copy__());
        return ((null : stdgo.Error));
    }
}
class WriteTest_wrapper {
    public var __t__ : WriteTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_repeatedByte_wrapper {
    public var __t__ : T_repeatedByte;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_rleBuffer_wrapper {
    @:keep
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _skipParts:GoInt = stdgo.sort.Sort.search((_r._buf != null ? _r._buf.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var _part:Ref<T_repeatedByte> = (_r._buf != null ? _r._buf[_i] : new T_repeatedByte());
            return (_part._off + _part._n) > _off;
        });
        var _parts:Slice<T_repeatedByte> = ((_r._buf.__slice__(_skipParts) : Slice<T_repeatedByte>));
        if ((_parts != null ? _parts.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _skipBytes:GoInt64 = _off - (_parts != null ? _parts[((0 : GoInt))] : new T_repeatedByte())._off;
            for (_0 => _part in _parts) {
                var _repeat:GoInt = ((_min(_part._n - _skipBytes, ((((_p != null ? _p.length : ((0 : GoInt))) - _n) : GoInt64))) : GoInt));
                _memset(((_p.__slice__(_n, _n + _repeat) : Slice<GoUInt8>)), _part._b);
                _n = _n + (_repeat);
                if (_n == (_p != null ? _p.length : ((0 : GoInt)))) {
                    return { _0 : _n, _1 : _err };
                };
                _skipBytes = ((0 : GoInt64));
            };
        };
        if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _rp:T_repeatedByte = ((null : Ref<T_repeatedByte>));
        if ((_r._buf != null ? _r._buf.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _rp = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
            {
                var _lastByte:GoUInt8 = _rp._b;
                if (((_p != null ? _p.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))) == _lastByte)) {
                    if (stdgo.bytes.Bytes.count(_p, ((new Slice<GoUInt8>(_lastByte) : Slice<GoUInt8>))) == (_p != null ? _p.length : ((0 : GoInt)))) {
                        _rp._n = _rp._n + ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)));
                        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
                    };
                };
            };
        };
        for (_0 => _b in _p) {
            if ((_rp == null) || (_rp._b != _b)) {
                _r._buf = (_r._buf != null ? _r._buf.__append__(((new T_repeatedByte(_r.size(), _b, ((1 : GoInt64))) : T_repeatedByte))) : new Slice<T_repeatedByte>(((new T_repeatedByte(_r.size(), _b, ((1 : GoInt64))) : T_repeatedByte))));
                _rp = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
            } else {
                _rp._n++;
            };
        };
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function size():GoInt64 {
        var _r = __t__;
        _r;
        if ((_r._buf != null ? _r._buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((0 : GoInt64));
        };
        var _last:Ref<T_repeatedByte> = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
        return _last._off + _last._n;
    }
    public var __t__ : T_rleBuffer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_rleBuffer_static_extension {
    @:keep
    public static function readAt(_r:Ref<T_rleBuffer>, _p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _skipParts:GoInt = stdgo.sort.Sort.search((_r._buf != null ? _r._buf.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            var _part:Ref<T_repeatedByte> = (_r._buf != null ? _r._buf[_i] : new T_repeatedByte());
            return (_part._off + _part._n) > _off;
        });
        var _parts:Slice<T_repeatedByte> = ((_r._buf.__slice__(_skipParts) : Slice<T_repeatedByte>));
        if ((_parts != null ? _parts.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _skipBytes:GoInt64 = _off - (_parts != null ? _parts[((0 : GoInt))] : new T_repeatedByte())._off;
            for (_0 => _part in _parts) {
                var _repeat:GoInt = ((_min(_part._n - _skipBytes, ((((_p != null ? _p.length : ((0 : GoInt))) - _n) : GoInt64))) : GoInt));
                _memset(((_p.__slice__(_n, _n + _repeat) : Slice<GoUInt8>)), _part._b);
                _n = _n + (_repeat);
                if (_n == (_p != null ? _p.length : ((0 : GoInt)))) {
                    return { _0 : _n, _1 : _err };
                };
                _skipBytes = ((0 : GoInt64));
            };
        };
        if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function write(_r:Ref<T_rleBuffer>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _rp:T_repeatedByte = ((null : Ref<T_repeatedByte>));
        if ((_r._buf != null ? _r._buf.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _rp = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
            {
                var _lastByte:GoUInt8 = _rp._b;
                if (((_p != null ? _p.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))) == _lastByte)) {
                    if (stdgo.bytes.Bytes.count(_p, ((new Slice<GoUInt8>(_lastByte) : Slice<GoUInt8>))) == (_p != null ? _p.length : ((0 : GoInt)))) {
                        _rp._n = _rp._n + ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)));
                        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
                    };
                };
            };
        };
        for (_0 => _b in _p) {
            if ((_rp == null) || (_rp._b != _b)) {
                _r._buf = (_r._buf != null ? _r._buf.__append__(((new T_repeatedByte(_r.size(), _b, ((1 : GoInt64))) : T_repeatedByte))) : new Slice<T_repeatedByte>(((new T_repeatedByte(_r.size(), _b, ((1 : GoInt64))) : T_repeatedByte))));
                _rp = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
            } else {
                _rp._n++;
            };
        };
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function size(_r:Ref<T_rleBuffer>):GoInt64 {
        _r;
        if ((_r._buf != null ? _r._buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((0 : GoInt64));
        };
        var _last:Ref<T_repeatedByte> = (_r._buf != null ? _r._buf[(_r._buf != null ? _r._buf.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_repeatedByte());
        return _last._off + _last._n;
    }
}
class T_fakeHash32_wrapper {
    @:keep
    public function sum32():GoUInt32 {
        var _ = __t__;
        return ((0 : GoUInt32));
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_fakeHash32;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_fakeHash32_static_extension {
    @:keep
    public static function sum32(_:T_fakeHash32):GoUInt32 {
        return ((0 : GoUInt32));
    }
    @:keep
    public static function write(_:T_fakeHash32, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_suffixSaver_wrapper {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ss = __t__;
        _ss;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _n = (_p != null ? _p.length : ((0 : GoInt)));
        _ss._size = _ss._size + ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)));
        if ((_ss._buf != null ? _ss._buf.length : ((0 : GoInt))) < _ss._keep) {
            var _space:GoInt = _ss._keep - (_ss._buf != null ? _ss._buf.length : ((0 : GoInt)));
            var _add:GoInt = (_p != null ? _p.length : ((0 : GoInt)));
            if (_add > _space) {
                _add = _space;
            };
            _ss._buf = (_ss._buf != null ? _ss._buf.__append__(...((_p.__slice__(0, _add) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_p.__slice__(0, _add) : Slice<GoUInt8>)).__toArray__()));
            _p = ((_p.__slice__(_add) : Slice<GoUInt8>));
        };
        while ((_p != null ? _p.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _n:GoInt = Go.copySlice(((_ss._buf.__slice__(_ss._start) : Slice<GoUInt8>)), _p);
            _p = ((_p.__slice__(_n) : Slice<GoUInt8>));
            _ss._start = _ss._start + (_n);
            if (_ss._start == _ss._keep) {
                _ss._start = ((0 : GoInt));
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function suffix():Slice<GoByte> {
        var _ss = __t__;
        _ss;
        if ((_ss._buf != null ? _ss._buf.length : ((0 : GoInt))) < _ss._keep) {
            return _ss._buf;
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_ss._keep : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = Go.copySlice(_buf, ((_ss._buf.__slice__(_ss._start) : Slice<GoUInt8>)));
        Go.copySlice(((_buf.__slice__(_n) : Slice<GoUInt8>)), ((_ss._buf.__slice__(0) : Slice<GoUInt8>)));
        return _buf;
    }
    @:keep
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _ss = __t__;
        _ss;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _back:GoInt64 = _ss._size - _off;
        if (_back > ((_ss._keep : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : _errDiscardedBytes };
        };
        var _suf:Slice<GoUInt8> = _ss.suffix();
        _n = Go.copySlice(_p, ((_suf.__slice__((_suf != null ? _suf.length : ((0 : GoInt))) - ((_back : GoInt))) : Slice<GoUInt8>)));
        if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function size():GoInt64 {
        var _ss = __t__;
        _ss;
        return _ss._size;
    }
    public var __t__ : T_suffixSaver;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_suffixSaver_static_extension {
    @:keep
    public static function write(_ss:Ref<T_suffixSaver>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _ss;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _n = (_p != null ? _p.length : ((0 : GoInt)));
        _ss._size = _ss._size + ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)));
        if ((_ss._buf != null ? _ss._buf.length : ((0 : GoInt))) < _ss._keep) {
            var _space:GoInt = _ss._keep - (_ss._buf != null ? _ss._buf.length : ((0 : GoInt)));
            var _add:GoInt = (_p != null ? _p.length : ((0 : GoInt)));
            if (_add > _space) {
                _add = _space;
            };
            _ss._buf = (_ss._buf != null ? _ss._buf.__append__(...((_p.__slice__(0, _add) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_p.__slice__(0, _add) : Slice<GoUInt8>)).__toArray__()));
            _p = ((_p.__slice__(_add) : Slice<GoUInt8>));
        };
        while ((_p != null ? _p.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _n:GoInt = Go.copySlice(((_ss._buf.__slice__(_ss._start) : Slice<GoUInt8>)), _p);
            _p = ((_p.__slice__(_n) : Slice<GoUInt8>));
            _ss._start = _ss._start + (_n);
            if (_ss._start == _ss._keep) {
                _ss._start = ((0 : GoInt));
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function suffix(_ss:Ref<T_suffixSaver>):Slice<GoByte> {
        _ss;
        if ((_ss._buf != null ? _ss._buf.length : ((0 : GoInt))) < _ss._keep) {
            return _ss._buf;
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_ss._keep : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = Go.copySlice(_buf, ((_ss._buf.__slice__(_ss._start) : Slice<GoUInt8>)));
        Go.copySlice(((_buf.__slice__(_n) : Slice<GoUInt8>)), ((_ss._buf.__slice__(0) : Slice<GoUInt8>)));
        return _buf;
    }
    @:keep
    public static function readAt(_ss:Ref<T_suffixSaver>, _p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        _ss;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _back:GoInt64 = _ss._size - _off;
        if (_back > ((_ss._keep : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : _errDiscardedBytes };
        };
        var _suf:Slice<GoUInt8> = _ss.suffix();
        _n = Go.copySlice(_p, ((_suf.__slice__((_suf != null ? _suf.length : ((0 : GoInt))) - ((_back : GoInt))) : Slice<GoUInt8>)));
        if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function size(_ss:Ref<T_suffixSaver>):GoInt64 {
        _ss;
        return _ss._size;
    }
}
class T_zeros_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        for (_i => _ in _p) {
            if (_p != null) _p[_i] = ((0 : GoUInt8));
        };
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_zeros;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_zeros_static_extension {
    @:keep
    public static function read(_:T_zeros, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        for (_i => _ in _p) {
            if (_p != null) _p[_i] = ((0 : GoUInt8));
        };
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_4_wrapper {
    public var __t__ : T__struct_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_5_wrapper {
    public var __t__ : T__struct_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_6_wrapper {
    public var __t__ : T__struct_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_readBuf_wrapper {
    @:keep
    public function _sub(_n:GoInt):T_readBuf {
        var _b = __t__;
        _b;
        var _b2:T_readBuf = ((((_b).__slice__(0, _n) : T_readBuf)) == null ? null : (((_b).__slice__(0, _n) : T_readBuf)).__copy__());
        _b = ((((_b).__slice__(_n) : T_readBuf)) == null ? null : (((_b).__slice__(_n) : T_readBuf)).__copy__());
        return (_b2 == null ? null : _b2.__copy__());
    }
    @:keep
    public function _uint64():GoUInt64 {
        var _b = __t__;
        _b;
        var _v:GoUInt64 = stdgo.encoding.binary.Binary.littleEndian.uint64(_b);
        _b = ((((_b).__slice__(((8 : GoInt))) : T_readBuf)) == null ? null : (((_b).__slice__(((8 : GoInt))) : T_readBuf)).__copy__());
        return _v;
    }
    @:keep
    public function _uint32():GoUInt32 {
        var _b = __t__;
        _b;
        var _v:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_b);
        _b = ((((_b).__slice__(((4 : GoInt))) : T_readBuf)) == null ? null : (((_b).__slice__(((4 : GoInt))) : T_readBuf)).__copy__());
        return _v;
    }
    @:keep
    public function _uint16():GoUInt16 {
        var _b = __t__;
        _b;
        var _v:GoUInt16 = stdgo.encoding.binary.Binary.littleEndian.uint16(_b);
        _b = ((((_b).__slice__(((2 : GoInt))) : T_readBuf)) == null ? null : (((_b).__slice__(((2 : GoInt))) : T_readBuf)).__copy__());
        return _v;
    }
    @:keep
    public function _uint8():GoUInt8 {
        var _b = __t__;
        _b;
        var _v:GoUInt8 = ((_b) != null ? (_b)[((0 : GoInt))] : ((0 : GoUInt8)));
        _b = ((((_b).__slice__(((1 : GoInt))) : T_readBuf)) == null ? null : (((_b).__slice__(((1 : GoInt))) : T_readBuf)).__copy__());
        return _v;
    }
    public var __t__ : T_readBuf;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_readBuf_static_extension {
    @:keep
    public static function _sub(_b:Ref<T_readBuf>, _n:GoInt):T_readBuf {
        _b;
        var _b2:T_readBuf = ((((_b).__slice__(0, _n) : T_readBuf)) == null ? null : (((_b).__slice__(0, _n) : T_readBuf)).__copy__());
        _b = ((((_b).__slice__(_n) : T_readBuf)) == null ? null : (((_b).__slice__(_n) : T_readBuf)).__copy__());
        return (_b2 == null ? null : _b2.__copy__());
    }
    @:keep
    public static function _uint64(_b:Ref<T_readBuf>):GoUInt64 {
        _b;
        var _v:GoUInt64 = stdgo.encoding.binary.Binary.littleEndian.uint64(_b);
        _b = ((((_b).__slice__(((8 : GoInt))) : T_readBuf)) == null ? null : (((_b).__slice__(((8 : GoInt))) : T_readBuf)).__copy__());
        return _v;
    }
    @:keep
    public static function _uint32(_b:Ref<T_readBuf>):GoUInt32 {
        _b;
        var _v:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_b);
        _b = ((((_b).__slice__(((4 : GoInt))) : T_readBuf)) == null ? null : (((_b).__slice__(((4 : GoInt))) : T_readBuf)).__copy__());
        return _v;
    }
    @:keep
    public static function _uint16(_b:Ref<T_readBuf>):GoUInt16 {
        _b;
        var _v:GoUInt16 = stdgo.encoding.binary.Binary.littleEndian.uint16(_b);
        _b = ((((_b).__slice__(((2 : GoInt))) : T_readBuf)) == null ? null : (((_b).__slice__(((2 : GoInt))) : T_readBuf)).__copy__());
        return _v;
    }
    @:keep
    public static function _uint8(_b:Ref<T_readBuf>):GoUInt8 {
        _b;
        var _v:GoUInt8 = ((_b) != null ? (_b)[((0 : GoInt))] : ((0 : GoUInt8)));
        _b = ((((_b).__slice__(((1 : GoInt))) : T_readBuf)) == null ? null : (((_b).__slice__(((1 : GoInt))) : T_readBuf)).__copy__());
        return _v;
    }
}
class Compressor_wrapper {
    public var __t__ : Compressor;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Decompressor_wrapper {
    public var __t__ : Decompressor;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_writeBuf_wrapper {
    @:keep
    public function _uint64(_v:GoUInt64):Void {
        var _b = __t__;
        _b;
        stdgo.encoding.binary.Binary.littleEndian.putUint64(_b, _v);
        _b = ((((_b).__slice__(((8 : GoInt))) : T_writeBuf)) == null ? null : (((_b).__slice__(((8 : GoInt))) : T_writeBuf)).__copy__());
    }
    @:keep
    public function _uint32(_v:GoUInt32):Void {
        var _b = __t__;
        _b;
        stdgo.encoding.binary.Binary.littleEndian.putUint32(_b, _v);
        _b = ((((_b).__slice__(((4 : GoInt))) : T_writeBuf)) == null ? null : (((_b).__slice__(((4 : GoInt))) : T_writeBuf)).__copy__());
    }
    @:keep
    public function _uint16(_v:GoUInt16):Void {
        var _b = __t__;
        _b;
        stdgo.encoding.binary.Binary.littleEndian.putUint16(_b, _v);
        _b = ((((_b).__slice__(((2 : GoInt))) : T_writeBuf)) == null ? null : (((_b).__slice__(((2 : GoInt))) : T_writeBuf)).__copy__());
    }
    @:keep
    public function _uint8(_v:GoUInt8):Void {
        var _b = __t__;
        _b;
        if ((_b) != null) (_b)[((0 : GoInt))] = _v;
        _b = ((((_b).__slice__(((1 : GoInt))) : T_writeBuf)) == null ? null : (((_b).__slice__(((1 : GoInt))) : T_writeBuf)).__copy__());
    }
    public var __t__ : T_writeBuf;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_writeBuf_static_extension {
    @:keep
    public static function _uint64(_b:Ref<T_writeBuf>, _v:GoUInt64):Void {
        _b;
        stdgo.encoding.binary.Binary.littleEndian.putUint64(_b, _v);
        _b = ((((_b).__slice__(((8 : GoInt))) : T_writeBuf)) == null ? null : (((_b).__slice__(((8 : GoInt))) : T_writeBuf)).__copy__());
    }
    @:keep
    public static function _uint32(_b:Ref<T_writeBuf>, _v:GoUInt32):Void {
        _b;
        stdgo.encoding.binary.Binary.littleEndian.putUint32(_b, _v);
        _b = ((((_b).__slice__(((4 : GoInt))) : T_writeBuf)) == null ? null : (((_b).__slice__(((4 : GoInt))) : T_writeBuf)).__copy__());
    }
    @:keep
    public static function _uint16(_b:Ref<T_writeBuf>, _v:GoUInt16):Void {
        _b;
        stdgo.encoding.binary.Binary.littleEndian.putUint16(_b, _v);
        _b = ((((_b).__slice__(((2 : GoInt))) : T_writeBuf)) == null ? null : (((_b).__slice__(((2 : GoInt))) : T_writeBuf)).__copy__());
    }
    @:keep
    public static function _uint8(_b:Ref<T_writeBuf>, _v:GoUInt8):Void {
        _b;
        if ((_b) != null) (_b)[((0 : GoInt))] = _v;
        _b = ((((_b).__slice__(((1 : GoInt))) : T_writeBuf)) == null ? null : (((_b).__slice__(((1 : GoInt))) : T_writeBuf)).__copy__());
    }
}
class T_file_fuzzReader_0_wrapper {
    public var __t__ : T_file_fuzzReader_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
