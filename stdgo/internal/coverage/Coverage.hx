package stdgo.internal.coverage;
var metaFilesFileName : stdgo.GoString = ("metafiles.txt" : stdgo.GoString);
var metaFilePref : stdgo.GoString = ("covmeta" : stdgo.GoString);
var metaFileVersion : stdgo.GoUInt64 = 1i32;
var covMetaHeaderSize : stdgo.GoUInt64 = 44i32;
var ctrModeInvalid : CounterMode = 0i32;
var ctrModeSet : CounterMode = 1i32;
var ctrModeCount : CounterMode = 2i32;
var ctrModeAtomic : CounterMode = 3i32;
var ctrModeRegOnly : CounterMode = 4i32;
var ctrModeTestMain : CounterMode = 5i32;
var ctrGranularityInvalid : CounterGranularity = 0i32;
var ctrGranularityPerBlock : CounterGranularity = 1i32;
var ctrGranularityPerFunc : CounterGranularity = 2i32;
var counterFileVersion : stdgo.GoUInt64 = 1i32;
var counterFilePref : stdgo.GoString = ("covcounters" : stdgo.GoString);
var counterFileTempl : stdgo.GoString = ("%s.%x.%d.%d" : stdgo.GoString);
var counterFileRegexp : stdgo.GoString = ("^%s\\.(\\S+)\\.(\\d+)\\.(\\d+)+$" : stdgo.GoString);
var ctrRaw : CounterFlavor = 1i32;
var ctrULeb128 : CounterFlavor = 2i32;
var numCtrsOffset : stdgo.GoUInt64 = 0i32;
var pkgIdOffset : stdgo.GoUInt64 = 1i32;
var funcIdOffset : stdgo.GoUInt64 = 2i32;
var firstCtrOffset : stdgo.GoUInt64 = 3i32;
var notHardCoded : stdgo.GoUInt64 = -1i32;
var covMetaMagic(get, set) : stdgo.GoArray<stdgo.GoUInt8>;
private function get_covMetaMagic():stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.internal.coverage.Coverage_covmetamagic.covMetaMagic;
private function set_covMetaMagic(v:stdgo.GoArray<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        stdgo._internal.internal.coverage.Coverage_covmetamagic.covMetaMagic = v;
        return v;
    }
var covCounterMagic(get, set) : stdgo.GoArray<stdgo.GoUInt8>;
private function get_covCounterMagic():stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic;
private function set_covCounterMagic(v:stdgo.GoArray<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic = v;
        return v;
    }
typedef CoverPkgConfig = stdgo._internal.internal.coverage.Coverage_coverpkgconfig.CoverPkgConfig;
typedef CoverFixupConfig = stdgo._internal.internal.coverage.Coverage_coverfixupconfig.CoverFixupConfig;
typedef MetaFileCollection = stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection;
typedef MetaFileHeader = stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader;
typedef MetaSymbolHeader = stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader;
typedef FuncDesc = stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc;
typedef CoverableUnit = stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit;
typedef CounterFileHeader = stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader;
typedef CounterSegmentHeader = stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader;
typedef CounterFileFooter = stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter;
typedef CounterMode = stdgo._internal.internal.coverage.Coverage_countermode.CounterMode;
typedef CounterGranularity = stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity;
typedef CounterFlavor = stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor;
typedef CoverPkgConfigPointer = stdgo._internal.internal.coverage.Coverage_coverpkgconfigpointer.CoverPkgConfigPointer;
typedef CoverFixupConfigPointer = stdgo._internal.internal.coverage.Coverage_coverfixupconfigpointer.CoverFixupConfigPointer;
typedef MetaFileCollectionPointer = stdgo._internal.internal.coverage.Coverage_metafilecollectionpointer.MetaFileCollectionPointer;
typedef MetaFileHeaderPointer = stdgo._internal.internal.coverage.Coverage_metafileheaderpointer.MetaFileHeaderPointer;
typedef MetaSymbolHeaderPointer = stdgo._internal.internal.coverage.Coverage_metasymbolheaderpointer.MetaSymbolHeaderPointer;
typedef FuncDescPointer = stdgo._internal.internal.coverage.Coverage_funcdescpointer.FuncDescPointer;
typedef CoverableUnitPointer = stdgo._internal.internal.coverage.Coverage_coverableunitpointer.CoverableUnitPointer;
typedef CounterFileHeaderPointer = stdgo._internal.internal.coverage.Coverage_counterfileheaderpointer.CounterFileHeaderPointer;
typedef CounterSegmentHeaderPointer = stdgo._internal.internal.coverage.Coverage_countersegmentheaderpointer.CounterSegmentHeaderPointer;
typedef CounterFileFooterPointer = stdgo._internal.internal.coverage.Coverage_counterfilefooterpointer.CounterFileFooterPointer;
typedef CounterModePointer = stdgo._internal.internal.coverage.Coverage_countermodepointer.CounterModePointer;
typedef CounterGranularityPointer = stdgo._internal.internal.coverage.Coverage_countergranularitypointer.CounterGranularityPointer;
typedef CounterFlavorPointer = stdgo._internal.internal.coverage.Coverage_counterflavorpointer.CounterFlavorPointer;
class Coverage {
    static public inline function parseCounterMode(_mode:stdgo.GoString):stdgo._internal.internal.coverage.Coverage_countermode.CounterMode return stdgo._internal.internal.coverage.Coverage_parsecountermode.parseCounterMode(_mode);
    static public inline function round4(_x:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.coverage.Coverage_round4.round4(_x);
    /**
        * HardCodedPkgID returns the hard-coded ID for the specified package
        * path, or -1 if we don't use a hard-coded ID. Hard-coded IDs start
        * at -2 and decrease as we go down the list.
    **/
    static public inline function hardCodedPkgID(_pkgpath:stdgo.GoString):stdgo.GoInt return stdgo._internal.internal.coverage.Coverage_hardcodedpkgid.hardCodedPkgID(_pkgpath);
}
