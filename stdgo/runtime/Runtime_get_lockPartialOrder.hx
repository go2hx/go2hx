package stdgo.runtime;
private function get_lockPartialOrder():Array<Array<T_lockRank>> return [for (i in stdgo._internal.runtime.Runtime_lockPartialOrder.lockPartialOrder) [for (i in i) i]];
