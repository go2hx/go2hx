package stdgo;
class Writer_static_extension {
    static public function write(t:stdgo._internal.internal.bisect.Bisect_writer.Writer, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.bisect.Bisect_writer_static_extension.Writer_static_extension.write(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract Writer(stdgo._internal.internal.bisect.Bisect_writer.Writer) from stdgo._internal.internal.bisect.Bisect_writer.Writer to stdgo._internal.internal.bisect.Bisect_writer.Writer {
    @:from
    static function fromHaxeInterface(x:{ function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):Writer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Writer = { write : _0 -> x.write([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.internal.bisect.Bisect.Matcher_static_extension) abstract Matcher(stdgo._internal.internal.bisect.Bisect_matcher.Matcher) from stdgo._internal.internal.bisect.Bisect_matcher.Matcher to stdgo._internal.internal.bisect.Bisect_matcher.Matcher {
    public var _verbose(get, set) : Bool;
    function get__verbose():Bool return this._verbose;
    function set__verbose(v:Bool):Bool {
        this._verbose = v;
        return v;
    }
    public var _quiet(get, set) : Bool;
    function get__quiet():Bool return this._quiet;
    function set__quiet(v:Bool):Bool {
        this._quiet = v;
        return v;
    }
    public var _enable(get, set) : Bool;
    function get__enable():Bool return this._enable;
    function set__enable(v:Bool):Bool {
        this._enable = v;
        return v;
    }
    public var _list(get, set) : Array<T_cond>;
    function get__list():Array<T_cond> return [for (i in this._list) i];
    function set__list(v:Array<T_cond>):Array<T_cond> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.bisect.Bisect_t_cond.T_cond>);
        return v;
    }
    public var _dedup(get, set) : T_atomicPointerDedup;
    function get__dedup():T_atomicPointerDedup return this._dedup;
    function set__dedup(v:T_atomicPointerDedup):T_atomicPointerDedup {
        this._dedup = v;
        return v;
    }
    public function new(?_verbose:Bool, ?_quiet:Bool, ?_enable:Bool, ?_list:Array<T_cond>, ?_dedup:T_atomicPointerDedup) this = new stdgo._internal.internal.bisect.Bisect_matcher.Matcher(_verbose, _quiet, _enable, ([for (i in _list) i] : stdgo.Slice<stdgo._internal.internal.bisect.Bisect_t_cond.T_cond>), _dedup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.bisect.Bisect.T_atomicPointerDedup_static_extension) @:dox(hide) abstract T_atomicPointerDedup(stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup) from stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup to stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup {
    public var _p(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__p():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._p;
    function set__p(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.bisect.Bisect.T_cond_static_extension) @:dox(hide) abstract T_cond(stdgo._internal.internal.bisect.Bisect_t_cond.T_cond) from stdgo._internal.internal.bisect.Bisect_t_cond.T_cond to stdgo._internal.internal.bisect.Bisect_t_cond.T_cond {
    public var _mask(get, set) : haxe.UInt64;
    function get__mask():haxe.UInt64 return this._mask;
    function set__mask(v:haxe.UInt64):haxe.UInt64 {
        this._mask = (v : stdgo.GoUInt64);
        return v;
    }
    public var _bits(get, set) : haxe.UInt64;
    function get__bits():haxe.UInt64 return this._bits;
    function set__bits(v:haxe.UInt64):haxe.UInt64 {
        this._bits = (v : stdgo.GoUInt64);
        return v;
    }
    public var _result(get, set) : Bool;
    function get__result():Bool return this._result;
    function set__result(v:Bool):Bool {
        this._result = v;
        return v;
    }
    public function new(?_mask:haxe.UInt64, ?_bits:haxe.UInt64, ?_result:Bool) this = new stdgo._internal.internal.bisect.Bisect_t_cond.T_cond((_mask : stdgo.GoUInt64), (_bits : stdgo.GoUInt64), _result);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.bisect.Bisect.T_parseError_static_extension) @:dox(hide) abstract T_parseError(stdgo._internal.internal.bisect.Bisect_t_parseerror.T_parseError) from stdgo._internal.internal.bisect.Bisect_t_parseerror.T_parseError to stdgo._internal.internal.bisect.Bisect_t_parseerror.T_parseError {
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public function new(?_text:String) this = new stdgo._internal.internal.bisect.Bisect_t_parseerror.T_parseError((_text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.bisect.Bisect.T_dedup_static_extension) @:dox(hide) abstract T_dedup(stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup) from stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup to stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup {
    public var _recent(get, set) : haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>>;
    function get__recent():haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>> return haxe.ds.Vector.fromArrayCopy([for (i in this._recent) haxe.ds.Vector.fromArrayCopy([for (i in i) i])]);
    function set__recent(v:haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>>):haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>> {
        this._recent = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>)] : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : Map<haxe.UInt64, Bool>;
    function get__m():Map<haxe.UInt64, Bool> return {
        final __obj__:Map<haxe.UInt64, Bool> = [];
        for (key => value in this._m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__m(v:Map<haxe.UInt64, Bool>):Map<haxe.UInt64, Bool> {
        this._m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, Bool>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = value;
            };
            __obj__;
        };
        return v;
    }
    public function new(?_recent:haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_m:Map<haxe.UInt64, Bool>) this = new stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup(([for (i in _recent) ([for (i in i) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>)] : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>), _mu, {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, Bool>();
        for (key => value in _m) {
            __obj__[(key : stdgo.GoUInt64)] = value;
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef MatcherPointer = stdgo._internal.internal.bisect.Bisect_matcherpointer.MatcherPointer;
class Matcher_static_extension {
    static public function _stack(_m:Matcher, _w:Writer):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        return stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension._stack(_m, _w);
    }
    static public function stack(_m:Matcher, _w:Writer):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        return stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension.stack(_m, _w);
    }
    static public function _fileLine(_m:Matcher, _w:Writer, _file:String, _line:StdTypes.Int):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        final _file = (_file : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension._fileLine(_m, _w, _file, _line);
    }
    static public function fileLine(_m:Matcher, _w:Writer, _file:String, _line:StdTypes.Int):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        final _file = (_file : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension.fileLine(_m, _w, _file, _line);
    }
    static public function _matchResult(_m:Matcher, _id:haxe.UInt64):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        final _id = (_id : stdgo.GoUInt64);
        return stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension._matchResult(_m, _id);
    }
    static public function shouldPrint(_m:Matcher, _id:haxe.UInt64):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        final _id = (_id : stdgo.GoUInt64);
        return stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension.shouldPrint(_m, _id);
    }
    static public function shouldEnable(_m:Matcher, _id:haxe.UInt64):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        final _id = (_id : stdgo.GoUInt64);
        return stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension.shouldEnable(_m, _id);
    }
    static public function markerOnly(_m:Matcher):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        return stdgo._internal.internal.bisect.Bisect_matcher_static_extension.Matcher_static_extension.markerOnly(_m);
    }
}
@:dox(hide) typedef T_atomicPointerDedupPointer = stdgo._internal.internal.bisect.Bisect_t_atomicpointerdeduppointer.T_atomicPointerDedupPointer;
@:dox(hide) class T_atomicPointerDedup_static_extension {
    static public function compareAndSwap(_p:T_atomicPointerDedup, _old:T_dedup, _new_:T_dedup):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup>);
        final _old = (_old : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup>);
        final _new_ = (_new_ : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup>);
        return stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup_static_extension.T_atomicPointerDedup_static_extension.compareAndSwap(_p, _old, _new_);
    }
    static public function load(_p:T_atomicPointerDedup):T_dedup {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup.T_atomicPointerDedup>);
        return stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup_static_extension.T_atomicPointerDedup_static_extension.load(_p);
    }
}
@:dox(hide) typedef T_condPointer = stdgo._internal.internal.bisect.Bisect_t_condpointer.T_condPointer;
@:dox(hide) class T_cond_static_extension {

}
@:dox(hide) typedef T_parseErrorPointer = stdgo._internal.internal.bisect.Bisect_t_parseerrorpointer.T_parseErrorPointer;
@:dox(hide) class T_parseError_static_extension {
    static public function error(_e:T_parseError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_parseerror.T_parseError>);
        return stdgo._internal.internal.bisect.Bisect_t_parseerror_static_extension.T_parseError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_dedupPointer = stdgo._internal.internal.bisect.Bisect_t_deduppointer.T_dedupPointer;
@:dox(hide) class T_dedup_static_extension {
    static public function _seenLossy(_d:T_dedup, _h:haxe.UInt64):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup>);
        final _h = (_h : stdgo.GoUInt64);
        return stdgo._internal.internal.bisect.Bisect_t_dedup_static_extension.T_dedup_static_extension._seenLossy(_d, _h);
    }
    static public function _seen(_d:T_dedup, _h:haxe.UInt64):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup>);
        final _h = (_h : stdgo.GoUInt64);
        return stdgo._internal.internal.bisect.Bisect_t_dedup_static_extension.T_dedup_static_extension._seen(_d, _h);
    }
}
/**
    * Package bisect can be used by compilers and other programs
    * to serve as a target for the bisect debugging tool.
    * See [golang.org/x/tools/cmd/bisect] for details about using the tool.
    * 
    * To be a bisect target, allowing bisect to help determine which of a set of independent
    * changes provokes a failure, a program needs to:
    * 
    *  1. Define a way to accept a change pattern on its command line or in its environment.
    *     The most common mechanism is a command-line flag.
    *     The pattern can be passed to [New] to create a [Matcher], the compiled form of a pattern.
    * 
    *  2. Assign each change a unique ID. One possibility is to use a sequence number,
    *     but the most common mechanism is to hash some kind of identifying information
    *     like the file and line number where the change might be applied.
    *     [Hash] hashes its arguments to compute an ID.
    * 
    *  3. Enable each change that the pattern says should be enabled.
    *     The [Matcher.ShouldEnable] method answers this question for a given change ID.
    * 
    *  4. Print a report identifying each change that the pattern says should be printed.
    *     The [Matcher.ShouldPrint] method answers this question for a given change ID.
    *     The report consists of one more lines on standard error or standard output
    *     that contain a “match marker”. [Marker] returns the match marker for a given ID.
    *     When bisect reports a change as causing the failure, it identifies the change
    *     by printing the report lines with the match marker removed.
    * 
    * # Example Usage
    * 
    * A program starts by defining how it receives the pattern. In this example, we will assume a flag.
    * The next step is to compile the pattern:
    * 
    * 	m, err := bisect.New(patternFlag)
    * 	if err != nil {
    * 		log.Fatal(err)
    * 	}
    * 
    * Then, each time a potential change is considered, the program computes
    * a change ID by hashing identifying information (source file and line, in this case)
    * and then calls m.ShouldPrint and m.ShouldEnable to decide whether to
    * print and enable the change, respectively. The two can return different values
    * depending on whether bisect is trying to find a minimal set of changes to
    * disable or to enable to provoke the failure.
    * 
    * It is usually helpful to write a helper function that accepts the identifying information
    * and then takes care of hashing, printing, and reporting whether the identified change
    * should be enabled. For example, a helper for changes identified by a file and line number
    * would be:
    * 
    * 	func ShouldEnable(file string, line int) {
    * 		h := bisect.Hash(file, line)
    * 		if m.ShouldPrint(h) {
    * 			fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    * 		}
    * 		return m.ShouldEnable(h)
    * 	}
    * 
    * Finally, note that New returns a nil Matcher when there is no pattern,
    * meaning that the target is not running under bisect at all,
    * so all changes should be enabled and none should be printed.
    * In that common case, the computation of the hash can be avoided entirely
    * by checking for m == nil first:
    * 
    * 	func ShouldEnable(file string, line int) bool {
    * 		if m == nil {
    * 			return false
    * 		}
    * 		h := bisect.Hash(file, line)
    * 		if m.ShouldPrint(h) {
    * 			fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    * 		}
    * 		return m.ShouldEnable(h)
    * 	}
    * 
    * When the identifying information is expensive to format, this code can call
    * [Matcher.MarkerOnly] to find out whether short report lines containing only the
    * marker are permitted for a given run. (Bisect permits such lines when it is
    * still exploring the space of possible changes and will not be showing the
    * output to the user.) If so, the client can choose to print only the marker:
    * 
    * 	func ShouldEnable(file string, line int) bool {
    * 		if m == nil {
    * 			return false
    * 		}
    * 		h := bisect.Hash(file, line)
    * 		if m.ShouldPrint(h) {
    * 			if m.MarkerOnly() {
    * 				bisect.PrintMarker(os.Stderr)
    * 			} else {
    * 				fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    * 			}
    * 		}
    * 		return m.ShouldEnable(h)
    * 	}
    * 
    * This specific helper – deciding whether to enable a change identified by
    * file and line number and printing about the change when necessary – is
    * provided by the [Matcher.FileLine] method.
    * 
    * Another common usage is deciding whether to make a change in a function
    * based on the caller's stack, to identify the specific calling contexts that the
    * change breaks. The [Matcher.Stack] method takes care of obtaining the stack,
    * printing it when necessary, and reporting whether to enable the change
    * based on that stack.
    * 
    * # Pattern Syntax
    * 
    * Patterns are generated by the bisect tool and interpreted by [New].
    * Users should not have to understand the patterns except when
    * debugging a target's bisect support or debugging the bisect tool itself.
    * 
    * The pattern syntax selecting a change is a sequence of bit strings
    * separated by + and - operators. Each bit string denotes the set of
    * changes with IDs ending in those bits, + is set addition, - is set subtraction,
    * and the expression is evaluated in the usual left-to-right order.
    * The special binary number “y” denotes the set of all changes,
    * standing in for the empty bit string.
    * In the expression, all the + operators must appear before all the - operators.
    * A leading + adds to an empty set. A leading - subtracts from the set of all
    * possible suffixes.
    * 
    * For example:
    * 
    *   - “01+10” and “+01+10” both denote the set of changes
    *     with IDs ending with the bits 01 or 10.
    * 
    *   - “01+10-1001” denotes the set of changes with IDs
    *     ending with the bits 01 or 10, but excluding those ending in 1001.
    * 
    *   - “-01-1000” and “y-01-1000 both denote the set of all changes
    *     with IDs not ending in 01 nor 1000.
    * 
    *   - “0+1-01+001” is not a valid pattern, because all the + operators do not
    *     appear before all the - operators.
    * 
    * In the syntaxes described so far, the pattern specifies the changes to
    * enable and report. If a pattern is prefixed by a “!”, the meaning
    * changes: the pattern specifies the changes to DISABLE and report. This
    * mode of operation is needed when a program passes with all changes
    * enabled but fails with no changes enabled. In this case, bisect
    * searches for minimal sets of changes to disable.
    * Put another way, the leading “!” inverts the result from [Matcher.ShouldEnable]
    * but does not invert the result from [Matcher.ShouldPrint].
    * 
    * As a convenience for manual debugging, “n” is an alias for “!y”,
    * meaning to disable and report all changes.
    * 
    * Finally, a leading “v” in the pattern indicates that the reports will be shown
    * to the user of bisect to describe the changes involved in a failure.
    * At the API level, the leading “v” causes [Matcher.Visible] to return true.
    * See the next section for details.
    * 
    * # Match Reports
    * 
    * The target program must enable only those changed matched
    * by the pattern, and it must print a match report for each such change.
    * A match report consists of one or more lines of text that will be
    * printed by the bisect tool to describe a change implicated in causing
    * a failure. Each line in the report for a given change must contain a
    * match marker with that change ID, as returned by [Marker].
    * The markers are elided when displaying the lines to the user.
    * 
    * A match marker has the form “[bisect-match 0x1234]” where
    * 0x1234 is the change ID in hexadecimal.
    * An alternate form is “[bisect-match 010101]”, giving the change ID in binary.
    * 
    * When [Matcher.Visible] returns false, the match reports are only
    * being processed by bisect to learn the set of enabled changes,
    * not shown to the user, meaning that each report can be a match
    * marker on a line by itself, eliding the usual textual description.
    * When the textual description is expensive to compute,
    * checking [Matcher.Visible] can help the avoid that expense
    * in most runs.
**/
class Bisect {
    /**
        * New creates and returns a new Matcher implementing the given pattern.
        * The pattern syntax is defined in the package doc comment.
        * 
        * In addition to the pattern syntax syntax, New("") returns nil, nil.
        * The nil *Matcher is valid for use: it returns true from ShouldEnable
        * and false from ShouldPrint for all changes. Callers can avoid calling
        * [Hash], [Matcher.ShouldEnable], and [Matcher.ShouldPrint] entirely
        * when they recognize the nil Matcher.
    **/
    static public inline function new_(_pattern:String):stdgo.Tuple<Matcher, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.bisect.Bisect_new_.new_(_pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * PrintMarker prints to w a one-line report containing only the marker for h.
        * It is appropriate to use when [Matcher.ShouldPrint] and [Matcher.MarkerOnly] both return true.
    **/
    static public inline function printMarker(_w:Writer, _h:haxe.UInt64):stdgo.Error {
        final _h = (_h : stdgo.GoUInt64);
        return stdgo._internal.internal.bisect.Bisect_printmarker.printMarker(_w, _h);
    }
    /**
        * Marker returns the match marker text to use on any line reporting details
        * about a match of the given ID.
        * It always returns the hexadecimal format.
    **/
    static public inline function marker(_id:haxe.UInt64):String {
        final _id = (_id : stdgo.GoUInt64);
        return stdgo._internal.internal.bisect.Bisect_marker.marker(_id);
    }
    /**
        * AppendMarker is like [Marker] but appends the marker to dst.
    **/
    static public inline function appendMarker(_dst:Array<std.UInt>, _id:haxe.UInt64):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _id = (_id : stdgo.GoUInt64);
        return [for (i in stdgo._internal.internal.bisect.Bisect_appendmarker.appendMarker(_dst, _id)) i];
    }
    /**
        * CutMarker finds the first match marker in line and removes it,
        * returning the shortened line (with the marker removed),
        * the ID from the match marker,
        * and whether a marker was found at all.
        * If there is no marker, CutMarker returns line, 0, false.
    **/
    static public inline function cutMarker(_line:String):stdgo.Tuple.Tuple3<String, haxe.UInt64, Bool> {
        final _line = (_line : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.bisect.Bisect_cutmarker.cutMarker(_line);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * Hash computes a hash of the data arguments,
        * each of which must be of type string, byte, int, uint, int32, uint32, int64, uint64, uintptr, or a slice of one of those types.
    **/
    static public inline function hash(_data:haxe.Rest<stdgo.AnyInterface>):haxe.UInt64 {
        return stdgo._internal.internal.bisect.Bisect_hash.hash(...[for (i in _data) i]);
    }
}
