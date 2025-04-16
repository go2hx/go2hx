package stdgo.internal.dag;
typedef Graph = stdgo._internal.internal.dag.Dag_graph.Graph;
typedef GraphPointer = stdgo._internal.internal.dag.Dag_graphpointer.GraphPointer;
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
    static public inline function parse(_dag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>; var _1 : stdgo.Error; } return stdgo._internal.internal.dag.Dag_parse.parse(_dag);
}
