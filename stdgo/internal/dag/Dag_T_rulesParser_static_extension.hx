package stdgo.internal.dag;
class T_rulesParser_static_extension {
    static public function _nextToken(_p:T_rulesParser):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser>);
        return stdgo._internal.internal.dag.Dag_T_rulesParser_static_extension.T_rulesParser_static_extension._nextToken(_p);
    }
    static public function _nextList(_p:T_rulesParser):stdgo.Tuple<Array<String>, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser>);
        return {
            final obj = stdgo._internal.internal.dag.Dag_T_rulesParser_static_extension.T_rulesParser_static_extension._nextList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _syntaxError(_p:T_rulesParser, _msg:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_T_rulesParser_static_extension.T_rulesParser_static_extension._syntaxError(_p, _msg);
    }
}
