package stdgo.os;
private function set_testingForceReadDirLstat(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.os.Os_testingForceReadDirLstat.testingForceReadDirLstat = v;
        return v;
    }
