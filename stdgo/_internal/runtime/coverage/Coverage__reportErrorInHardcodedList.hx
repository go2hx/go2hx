package stdgo._internal.runtime.coverage;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.encodemeta.Encodemeta;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.internal.coverage.pods.Pods;
import stdgo._internal.internal.coverage.cformat.Cformat;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.time.Time;
import stdgo._internal.internal.coverage.encodecounter.Encodecounter;
import stdgo._internal.internal.coverage.decodemeta.Decodemeta;
import stdgo._internal.internal.coverage.decodecounter.Decodecounter;
import stdgo._internal.encoding.json.Json;
function _reportErrorInHardcodedList(_slot:stdgo.GoInt32, _pkgID:stdgo.GoInt32, _fnID:stdgo.GoUInt32, _nCtrs:stdgo.GoUInt32):Void {
        var _metaList = stdgo._internal.runtime.coverage.Coverage__getCovMetaList._getCovMetaList();
        var _pkgMap = stdgo._internal.runtime.coverage.Coverage__getCovPkgMap._getCovPkgMap();
        stdgo.Go.println(("internal error in coverage meta-data tracking:" : stdgo.GoString));
        stdgo.Go.println(("encountered bad pkgID:" : stdgo.GoString), _pkgID, (" at slot:" : stdgo.GoString), _slot, (" fnID:" : stdgo.GoString), Std.string(((_fnID : UInt) : Float)), (" numCtrs:" : stdgo.GoString), Std.string(((_nCtrs : UInt) : Float)));
        stdgo.Go.println(("list of hard-coded runtime package IDs needs revising." : stdgo.GoString));
        stdgo.Go.println(("[see the comment on the \'rtPkgs\' var in " : stdgo.GoString));
        stdgo.Go.println((" <goroot>/src/internal/coverage/pkid.go]" : stdgo.GoString));
        stdgo.Go.println(("registered list:" : stdgo.GoString));
        for (_k => _b in _metaList) {
            stdgo.Go.print(("slot: " : stdgo.GoString), _k, (" path=\'" : stdgo.GoString), _b.pkgPath, ("\' " : stdgo.GoString));
            if (_b.pkgID != ((-1 : stdgo.GoInt))) {
                stdgo.Go.print((" hard-coded id: " : stdgo.GoString), _b.pkgID);
            };
            stdgo.Go.println(stdgo.Go.str());
        };
        stdgo.Go.println(("remap table:" : stdgo.GoString));
        for (_from => _to in _pkgMap) {
            stdgo.Go.println(("from " : stdgo.GoString), _from, (" to " : stdgo.GoString), _to);
        };
    }
