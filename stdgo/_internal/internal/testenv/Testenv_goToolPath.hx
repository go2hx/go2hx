package stdgo._internal.internal.testenv;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.testing.Testing;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.time.Time;
import stdgo._internal.context.Context;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.platform.Platform;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
function goToolPath(_t:stdgo._internal.testing.Testing_TB.TB):stdgo.GoString {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(_t);
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_goTool.goTool(), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__0 => _envVar in stdgo._internal.strings.Strings_fields.fields(("\n\tAR\n\tCC\n\tCGO_CFLAGS\n\tCGO_CFLAGS_ALLOW\n\tCGO_CFLAGS_DISALLOW\n\tCGO_CPPFLAGS\n\tCGO_CPPFLAGS_ALLOW\n\tCGO_CPPFLAGS_DISALLOW\n\tCGO_CXXFLAGS\n\tCGO_CXXFLAGS_ALLOW\n\tCGO_CXXFLAGS_DISALLOW\n\tCGO_ENABLED\n\tCGO_FFLAGS\n\tCGO_FFLAGS_ALLOW\n\tCGO_FFLAGS_DISALLOW\n\tCGO_LDFLAGS\n\tCGO_LDFLAGS_ALLOW\n\tCGO_LDFLAGS_DISALLOW\n\tCXX\n\tFC\n\tGCCGO\n\tGO111MODULE\n\tGO386\n\tGOAMD64\n\tGOARCH\n\tGOARM\n\tGOBIN\n\tGOCACHE\n\tGOCACHEPROG\n\tGOENV\n\tGOEXE\n\tGOEXPERIMENT\n\tGOFLAGS\n\tGOGCCFLAGS\n\tGOHOSTARCH\n\tGOHOSTOS\n\tGOINSECURE\n\tGOMIPS\n\tGOMIPS64\n\tGOMODCACHE\n\tGONOPROXY\n\tGONOSUMDB\n\tGOOS\n\tGOPATH\n\tGOPPC64\n\tGOPRIVATE\n\tGOPROXY\n\tGOROOT\n\tGOSUMDB\n\tGOTMPDIR\n\tGOTOOLCHAIN\n\tGOTOOLDIR\n\tGOVCS\n\tGOWASM\n\tGOWORK\n\tGO_EXTLINK_ENABLED\n\tPKG_CONFIG\n" : stdgo.GoString))) {
            stdgo._internal.os.Os_getenv.getenv(_envVar?.__copy__());
        };
        return _path?.__copy__();
    }
