package stdgo.runtime;
private function set_lockPartialOrder(v:Array<Array<T_lockRank>>):Array<Array<T_lockRank>> {
        stdgo._internal.runtime.Runtime_lockPartialOrder.lockPartialOrder = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_T_lockRank.T_lockRank>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.runtime.Runtime_T_lockRank.T_lockRank>>);
        return v;
    }
