package stdgo.runtime;
private function set_gCTestMoveStackOnNextCall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_gCTestMoveStackOnNextCall.gCTestMoveStackOnNextCall = v;
        return v;
    }
