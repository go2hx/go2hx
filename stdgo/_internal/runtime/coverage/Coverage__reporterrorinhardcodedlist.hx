package stdgo._internal.runtime.coverage;
function _reportErrorInHardcodedList(_slot:stdgo.GoInt32, _pkgID:stdgo.GoInt32, _fnID:stdgo.GoUInt32, _nCtrs:stdgo.GoUInt32):Void {
        var _metaList = stdgo._internal.runtime.coverage.Coverage__getcovmetalist._getCovMetaList();
        var _pkgMap = stdgo._internal.runtime.coverage.Coverage__getcovpkgmap._getCovPkgMap();
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L604"
        stdgo.Go.println(("internal error in coverage meta-data tracking:" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L605"
        stdgo.Go.println(("encountered bad pkgID:" : stdgo.GoString), _pkgID, (" at slot:" : stdgo.GoString), _slot, (" fnID:" : stdgo.GoString), Std.string(((_fnID : UInt) : Float)), (" numCtrs:" : stdgo.GoString), Std.string(((_nCtrs : UInt) : Float)));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L607"
        stdgo.Go.println(("list of hard-coded runtime package IDs needs revising." : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L608"
        stdgo.Go.println(("[see the comment on the \'rtPkgs\' var in " : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L609"
        stdgo.Go.println((" <goroot>/src/internal/coverage/pkid.go]" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L610"
        stdgo.Go.println(("registered list:" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L611"
        for (_k => _b in _metaList) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L612"
            stdgo.Go.print(("slot: " : stdgo.GoString), _k, (" path=\'" : stdgo.GoString), _b.pkgPath, ("\' " : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L613"
            if (_b.pkgID != ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L614"
                stdgo.Go.print((" hard-coded id: " : stdgo.GoString), _b.pkgID);
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L616"
            stdgo.Go.println((stdgo.Go.str() : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L618"
        stdgo.Go.println(("remap table:" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L619"
        for (_from => _to in _pkgMap) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L620"
            stdgo.Go.println(("from " : stdgo.GoString), _from, (" to " : stdgo.GoString), _to);
        };
    }
