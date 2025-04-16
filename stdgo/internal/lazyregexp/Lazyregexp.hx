package stdgo.internal.lazyregexp;
typedef Regexp = stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp;
typedef RegexpPointer = stdgo._internal.internal.lazyregexp.Lazyregexp_regexppointer.RegexpPointer;
/**
    * Package lazyregexp is a thin wrapper over regexp, allowing the use of global
    * regexp variables without forcing them to be compiled at init.
**/
class Lazyregexp {
    /**
        * New creates a new lazy regexp, delaying the compiling work until it is first
        * needed. If the code is being run as part of tests, the regexp compiling will
        * happen immediately.
    **/
    static public inline function new_(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> return stdgo._internal.internal.lazyregexp.Lazyregexp_new_.new_(_str);
}
