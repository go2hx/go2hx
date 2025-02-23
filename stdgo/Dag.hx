package stdgo;
@:structInit @:using(stdgo.internal.dag.Dag.Graph_static_extension) abstract Graph(stdgo._internal.internal.dag.Dag_graph.Graph) from stdgo._internal.internal.dag.Dag_graph.Graph to stdgo._internal.internal.dag.Dag_graph.Graph {
    public var nodes(get, set) : Array<String>;
    function get_nodes():Array<String> return [for (i in this.nodes) i];
    function set_nodes(v:Array<String>):Array<String> {
        this.nodes = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _byLabel(get, set) : Map<String, StdTypes.Int>;
    function get__byLabel():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this._byLabel) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__byLabel(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this._byLabel = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var _edges(get, set) : Map<String, Map<String, Bool>>;
    function get__edges():Map<String, Map<String, Bool>> return {
        final __obj__:Map<String, Map<String, Bool>> = [];
        for (key => value in this._edges) {
            __obj__[key] = {
                final __obj__:Map<String, Bool> = [];
                for (key => value in value) {
                    __obj__[key] = value;
                };
                __obj__;
            };
        };
        __obj__;
    };
    function set__edges(v:Map<String, Map<String, Bool>>):Map<String, Map<String, Bool>> {
        this._edges = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = {
                    final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
                    for (key => value in value) {
                        __obj__[(key : stdgo.GoString)] = value;
                    };
                    __obj__;
                };
            };
            __obj__;
        };
        return v;
    }
    public function new(?nodes:Array<String>, ?_byLabel:Map<String, StdTypes.Int>, ?_edges:Map<String, Map<String, Bool>>) this = new stdgo._internal.internal.dag.Dag_graph.Graph(([for (i in nodes) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in _byLabel) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>();
        for (key => value in _edges) {
            __obj__[(key : stdgo.GoString)] = {
                final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
                for (key => value in value) {
                    __obj__[(key : stdgo.GoString)] = value;
                };
                __obj__;
            };
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.dag.Dag.T_rule_static_extension) @:dox(hide) abstract T_rule(stdgo._internal.internal.dag.Dag_t_rule.T_rule) from stdgo._internal.internal.dag.Dag_t_rule.T_rule to stdgo._internal.internal.dag.Dag_t_rule.T_rule {
    public var _less(get, set) : Array<String>;
    function get__less():Array<String> return [for (i in this._less) i];
    function set__less(v:Array<String>):Array<String> {
        this._less = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _op(get, set) : String;
    function get__op():String return this._op;
    function set__op(v:String):String {
        this._op = (v : stdgo.GoString);
        return v;
    }
    public var _def(get, set) : Array<String>;
    function get__def():Array<String> return [for (i in this._def) i];
    function set__def(v:Array<String>):Array<String> {
        this._def = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_less:Array<String>, ?_op:String, ?_def:Array<String>) this = new stdgo._internal.internal.dag.Dag_t_rule.T_rule(([for (i in _less) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_op : stdgo.GoString), ([for (i in _def) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.dag.Dag.T_rulesParser_static_extension) @:dox(hide) abstract T_rulesParser(stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser) from stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser to stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser {
    public var _lineno(get, set) : StdTypes.Int;
    function get__lineno():StdTypes.Int return this._lineno;
    function set__lineno(v:StdTypes.Int):StdTypes.Int {
        this._lineno = (v : stdgo.GoInt);
        return v;
    }
    public var _lastWord(get, set) : String;
    function get__lastWord():String return this._lastWord;
    function set__lastWord(v:String):String {
        this._lastWord = (v : stdgo.GoString);
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public function new(?_lineno:StdTypes.Int, ?_lastWord:String, ?_text:String) this = new stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser((_lineno : stdgo.GoInt), (_lastWord : stdgo.GoString), (_text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_syntaxError = stdgo._internal.internal.dag.Dag_t_syntaxerror.T_syntaxError;
typedef GraphPointer = stdgo._internal.internal.dag.Dag_graphpointer.GraphPointer;
class Graph_static_extension {
    static public function edges(_g:Graph, _from:String):Array<String> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _from = (_from : stdgo.GoString);
        return [for (i in stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension.edges(_g, _from)) i];
    }
    static public function hasEdge(_g:Graph, _from:String, _to:String):Bool {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        return stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension.hasEdge(_g, _from, _to);
    }
    static public function delEdge(_g:Graph, _from:String, _to:String):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension.delEdge(_g, _from, _to);
    }
    static public function addEdge(_g:Graph, _from:String, _to:String):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension.addEdge(_g, _from, _to);
    }
    static public function _addNode(_g:Graph, _label:String):Bool {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _label = (_label : stdgo.GoString);
        return stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension._addNode(_g, _label);
    }
    static public function transitiveReduction(_g:Graph):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension.transitiveReduction(_g);
    }
    static public function topo(_g:Graph):Array<String> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        return [for (i in stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension.topo(_g)) i];
    }
    static public function transpose(_g:Graph):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension.transpose(_g);
    }
}
@:dox(hide) typedef T_rulePointer = stdgo._internal.internal.dag.Dag_t_rulepointer.T_rulePointer;
@:dox(hide) class T_rule_static_extension {

}
@:dox(hide) typedef T_rulesParserPointer = stdgo._internal.internal.dag.Dag_t_rulesparserpointer.T_rulesParserPointer;
@:dox(hide) class T_rulesParser_static_extension {
    static public function _nextToken(_p:T_rulesParser):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>);
        return stdgo._internal.internal.dag.Dag_t_rulesparser_static_extension.T_rulesParser_static_extension._nextToken(_p);
    }
    static public function _nextList(_p:T_rulesParser):stdgo.Tuple<Array<String>, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>);
        return {
            final obj = stdgo._internal.internal.dag.Dag_t_rulesparser_static_extension.T_rulesParser_static_extension._nextList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _syntaxError(_p:T_rulesParser, _msg:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_t_rulesparser_static_extension.T_rulesParser_static_extension._syntaxError(_p, _msg);
    }
}
@:dox(hide) typedef T_syntaxErrorPointer = stdgo._internal.internal.dag.Dag_t_syntaxerrorpointer.T_syntaxErrorPointer;
@:dox(hide) class T_syntaxError_static_extension {
    static public function error(_e:T_syntaxError):String {
        return stdgo._internal.internal.dag.Dag_t_syntaxerror_static_extension.T_syntaxError_static_extension.error(_e);
    }
}
/**
    * Package dag implements a language for expressing directed acyclic
    * graphs.
    * 
    * The general syntax of a rule is:
    * 
    * 	a, b < c, d;
    * 
    * which means c and d come after a and b in the partial order
    * (that is, there are edges from c and d to a and b),
    * but doesn't provide a relative order between a vs b or c vs d.
    * 
    * The rules can chain together, as in:
    * 
    * 	e < f, g < h;
    * 
    * which is equivalent to
    * 
    * 	e < f, g;
    * 	f, g < h;
    * 
    * Except for the special bottom element "NONE", each name
    * must appear exactly once on the right-hand side of any rule.
    * That rule serves as the definition of the allowed successor
    * for that name. The definition must appear before any uses
    * of the name on the left-hand side of a rule. (That is, the
    * rules themselves must be ordered according to the partial
    * order, for easier reading by people.)
    * 
    * Negative assertions double-check the partial order:
    * 
    * 	i !< j
    * 
    * means that it must NOT be the case that i < j.
    * Negative assertions may appear anywhere in the rules,
    * even before i and j have been defined.
    * 
    * Comments begin with #.
**/
class Dag {
    /**
        * Parse parses the DAG language and returns the transitive closure of
        * the described graph. In the returned graph, there is an edge from "b"
        * to "a" if b < a (or a > b) in the partial order.
    **/
    static public inline function parse(_dag:String):stdgo.Tuple<Graph, stdgo.Error> {
        final _dag = (_dag : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.dag.Dag_parse.parse(_dag);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
