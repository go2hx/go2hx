package stdgo.internal.bisect;
/**
    // Package bisect can be used by compilers and other programs
    // to serve as a target for the bisect debugging tool.
    // See [golang.org/x/tools/cmd/bisect] for details about using the tool.
    //
    // To be a bisect target, allowing bisect to help determine which of a set of independent
    // changes provokes a failure, a program needs to:
    //
    //  1. Define a way to accept a change pattern on its command line or in its environment.
    //     The most common mechanism is a command-line flag.
    //     The pattern can be passed to [New] to create a [Matcher], the compiled form of a pattern.
    //
    //  2. Assign each change a unique ID. One possibility is to use a sequence number,
    //     but the most common mechanism is to hash some kind of identifying information
    //     like the file and line number where the change might be applied.
    //     [Hash] hashes its arguments to compute an ID.
    //
    //  3. Enable each change that the pattern says should be enabled.
    //     The [Matcher.ShouldEnable] method answers this question for a given change ID.
    //
    //  4. Print a report identifying each change that the pattern says should be printed.
    //     The [Matcher.ShouldPrint] method answers this question for a given change ID.
    //     The report consists of one more lines on standard error or standard output
    //     that contain a “match marker”. [Marker] returns the match marker for a given ID.
    //     When bisect reports a change as causing the failure, it identifies the change
    //     by printing the report lines with the match marker removed.
    //
    // # Example Usage
    //
    // A program starts by defining how it receives the pattern. In this example, we will assume a flag.
    // The next step is to compile the pattern:
    //
    //	m, err := bisect.New(patternFlag)
    //	if err != nil {
    //		log.Fatal(err)
    //	}
    //
    // Then, each time a potential change is considered, the program computes
    // a change ID by hashing identifying information (source file and line, in this case)
    // and then calls m.ShouldPrint and m.ShouldEnable to decide whether to
    // print and enable the change, respectively. The two can return different values
    // depending on whether bisect is trying to find a minimal set of changes to
    // disable or to enable to provoke the failure.
    //
    // It is usually helpful to write a helper function that accepts the identifying information
    // and then takes care of hashing, printing, and reporting whether the identified change
    // should be enabled. For example, a helper for changes identified by a file and line number
    // would be:
    //
    //	func ShouldEnable(file string, line int) {
    //		h := bisect.Hash(file, line)
    //		if m.ShouldPrint(h) {
    //			fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    //		}
    //		return m.ShouldEnable(h)
    //	}
    //
    // Finally, note that New returns a nil Matcher when there is no pattern,
    // meaning that the target is not running under bisect at all,
    // so all changes should be enabled and none should be printed.
    // In that common case, the computation of the hash can be avoided entirely
    // by checking for m == nil first:
    //
    //	func ShouldEnable(file string, line int) bool {
    //		if m == nil {
    //			return false
    //		}
    //		h := bisect.Hash(file, line)
    //		if m.ShouldPrint(h) {
    //			fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    //		}
    //		return m.ShouldEnable(h)
    //	}
    //
    // When the identifying information is expensive to format, this code can call
    // [Matcher.MarkerOnly] to find out whether short report lines containing only the
    // marker are permitted for a given run. (Bisect permits such lines when it is
    // still exploring the space of possible changes and will not be showing the
    // output to the user.) If so, the client can choose to print only the marker:
    //
    //	func ShouldEnable(file string, line int) bool {
    //		if m == nil {
    //			return false
    //		}
    //		h := bisect.Hash(file, line)
    //		if m.ShouldPrint(h) {
    //			if m.MarkerOnly() {
    //				bisect.PrintMarker(os.Stderr)
    //			} else {
    //				fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    //			}
    //		}
    //		return m.ShouldEnable(h)
    //	}
    //
    // This specific helper – deciding whether to enable a change identified by
    // file and line number and printing about the change when necessary – is
    // provided by the [Matcher.FileLine] method.
    //
    // Another common usage is deciding whether to make a change in a function
    // based on the caller's stack, to identify the specific calling contexts that the
    // change breaks. The [Matcher.Stack] method takes care of obtaining the stack,
    // printing it when necessary, and reporting whether to enable the change
    // based on that stack.
    //
    // # Pattern Syntax
    //
    // Patterns are generated by the bisect tool and interpreted by [New].
    // Users should not have to understand the patterns except when
    // debugging a target's bisect support or debugging the bisect tool itself.
    //
    // The pattern syntax selecting a change is a sequence of bit strings
    // separated by + and - operators. Each bit string denotes the set of
    // changes with IDs ending in those bits, + is set addition, - is set subtraction,
    // and the expression is evaluated in the usual left-to-right order.
    // The special binary number “y” denotes the set of all changes,
    // standing in for the empty bit string.
    // In the expression, all the + operators must appear before all the - operators.
    // A leading + adds to an empty set. A leading - subtracts from the set of all
    // possible suffixes.
    //
    // For example:
    //
    //   - “01+10” and “+01+10” both denote the set of changes
    //     with IDs ending with the bits 01 or 10.
    //
    //   - “01+10-1001” denotes the set of changes with IDs
    //     ending with the bits 01 or 10, but excluding those ending in 1001.
    //
    //   - “-01-1000” and “y-01-1000 both denote the set of all changes
    //     with IDs not ending in 01 nor 1000.
    //
    //   - “0+1-01+001” is not a valid pattern, because all the + operators do not
    //     appear before all the - operators.
    //
    // In the syntaxes described so far, the pattern specifies the changes to
    // enable and report. If a pattern is prefixed by a “!”, the meaning
    // changes: the pattern specifies the changes to DISABLE and report. This
    // mode of operation is needed when a program passes with all changes
    // enabled but fails with no changes enabled. In this case, bisect
    // searches for minimal sets of changes to disable.
    // Put another way, the leading “!” inverts the result from [Matcher.ShouldEnable]
    // but does not invert the result from [Matcher.ShouldPrint].
    //
    // As a convenience for manual debugging, “n” is an alias for “!y”,
    // meaning to disable and report all changes.
    //
    // Finally, a leading “v” in the pattern indicates that the reports will be shown
    // to the user of bisect to describe the changes involved in a failure.
    // At the API level, the leading “v” causes [Matcher.Visible] to return true.
    // See the next section for details.
    //
    // # Match Reports
    //
    // The target program must enable only those changed matched
    // by the pattern, and it must print a match report for each such change.
    // A match report consists of one or more lines of text that will be
    // printed by the bisect tool to describe a change implicated in causing
    // a failure. Each line in the report for a given change must contain a
    // match marker with that change ID, as returned by [Marker].
    // The markers are elided when displaying the lines to the user.
    //
    // A match marker has the form “[bisect-match 0x1234]” where
    // 0x1234 is the change ID in hexadecimal.
    // An alternate form is “[bisect-match 010101]”, giving the change ID in binary.
    //
    // When [Matcher.Visible] returns false, the match reports are only
    // being processed by bisect to learn the set of enabled changes,
    // not shown to the user, meaning that each report can be a match
    // marker on a line by itself, eliding the usual textual description.
    // When the textual description is expensive to compute,
    // checking [Matcher.Visible] can help the avoid that expense
    // in most runs.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
final _offset64 : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _prime64 : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // Writer is the same interface as io.Writer.
    // It is duplicated here to avoid importing io.
    
    
**/
typedef Writer = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function write(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
};
/**
    // A Matcher is the parsed, compiled form of a PATTERN string.
    // The nil *Matcher is valid: it has all changes enabled but none reported.
    
    
**/
@:structInit @:using(stdgo.internal.bisect.Bisect.Matcher_static_extension) class Matcher {
    public var _verbose : Bool = false;
    public var _quiet : Bool = false;
    public var _enable : Bool = false;
    public var _list : stdgo.Slice<stdgo.internal.bisect.Bisect.T_cond> = (null : stdgo.Slice<stdgo.internal.bisect.Bisect.T_cond>);
    public var _dedup : stdgo.internal.bisect.Bisect.T_atomicPointerDedup = ({} : stdgo.internal.bisect.Bisect.T_atomicPointerDedup);
    public function new(?_verbose:Bool, ?_quiet:Bool, ?_enable:Bool, ?_list:stdgo.Slice<stdgo.internal.bisect.Bisect.T_cond>, ?_dedup:stdgo.internal.bisect.Bisect.T_atomicPointerDedup) {
        if (_verbose != null) this._verbose = _verbose;
        if (_quiet != null) this._quiet = _quiet;
        if (_enable != null) this._enable = _enable;
        if (_list != null) this._list = _list;
        if (_dedup != null) this._dedup = _dedup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Matcher(_verbose, _quiet, _enable, _list, _dedup);
    }
}
/**
    // atomicPointerDedup is an atomic.Pointer[dedup],
    // but we are avoiding using Go 1.19's atomic.Pointer
    // until the bootstrap toolchain can be relied upon to have it.
    
    
**/
@:structInit @:private @:using(stdgo.internal.bisect.Bisect.T_atomicPointerDedup_static_extension) class T_atomicPointerDedup {
    public var _p : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_p:stdgo.unsafe.Unsafe.UnsafePointer) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atomicPointerDedup(_p);
    }
}
/**
    // A cond is a single condition in the matcher.
    // Given an input id, if id&mask == bits, return the result.
    
    
**/
@:structInit @:private class T_cond {
    public var _mask : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _bits : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _result : Bool = false;
    public function new(?_mask:stdgo.StdGoTypes.GoUInt64, ?_bits:stdgo.StdGoTypes.GoUInt64, ?_result:Bool) {
        if (_mask != null) this._mask = _mask;
        if (_bits != null) this._bits = _bits;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cond(_mask, _bits, _result);
    }
}
/**
    // parseError is a trivial error implementation,
    // defined here to avoid importing errors.
    
    
**/
@:structInit @:private @:using(stdgo.internal.bisect.Bisect.T_parseError_static_extension) class T_parseError {
    public var _text : stdgo.GoString = "";
    public function new(?_text:stdgo.GoString) {
        if (_text != null) this._text = _text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseError(_text);
    }
}
/**
    // A dedup is a deduplicator for call stacks, so that we only print
    // a report for new call stacks, not for call stacks we've already
    // reported.
    //
    // It has two modes: an approximate but lock-free mode that
    // may still emit some duplicates, and a precise mode that uses
    // a lock and never emits duplicates.
    
    
**/
@:structInit @:private @:using(stdgo.internal.bisect.Bisect.T_dedup_static_extension) class T_dedup {
    /**
        // 128-entry 4-way, lossy cache for seenLossy
    **/
    public var _recent : stdgo.GoArray<stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>> = new stdgo.GoArray<stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>>(...[for (i in 0 ... 128) new stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoUInt64)])]);
    /**
        // complete history for seen
    **/
    public var _mu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _m : stdgo.GoMap<stdgo.StdGoTypes.GoUInt64, Bool> = (null : stdgo.GoMap<stdgo.StdGoTypes.GoUInt64, Bool>);
    public function new(?_recent:stdgo.GoArray<stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>>, ?_mu:stdgo.sync.Sync.Mutex, ?_m:stdgo.GoMap<stdgo.StdGoTypes.GoUInt64, Bool>) {
        if (_recent != null) this._recent = _recent;
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dedup(_recent, _mu, _m);
    }
}
/**
    // New creates and returns a new Matcher implementing the given pattern.
    // The pattern syntax is defined in the package doc comment.
    //
    // In addition to the pattern syntax syntax, New("") returns nil, nil.
    // The nil *Matcher is valid for use: it returns true from ShouldEnable
    // and false from ShouldPrint for all changes. Callers can avoid calling
    // [Hash], [Matcher.ShouldEnable], and [Matcher.ShouldPrint] entirely
    // when they recognize the nil Matcher.
**/
function new_(_pattern:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.Ref<Matcher>; var _1 : stdgo.Error; } throw ":internal.bisect.new_ is not yet implemented";
/**
    // printFileLine prints a non-marker-only report for file:line to w.
**/
function _printFileLine(_w:Writer, _h:stdgo.StdGoTypes.GoUInt64, _file:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt):stdgo.Error throw ":internal.bisect._printFileLine is not yet implemented";
/**
    // appendFileLine appends file:line to dst, returning the extended slice.
**/
function _appendFileLine(_dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _file:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.GoByte> throw ":internal.bisect._appendFileLine is not yet implemented";
/**
    // PrintMarker prints to w a one-line report containing only the marker for h.
    // It is appropriate to use when [Matcher.ShouldPrint] and [Matcher.MarkerOnly] both return true.
**/
function printMarker(_w:Writer, _h:stdgo.StdGoTypes.GoUInt64):stdgo.Error throw ":internal.bisect.printMarker is not yet implemented";
/**
    // printStack prints to w a multi-line report containing a formatting of the call stack stk,
    // with each line preceded by the marker for h.
**/
function _printStack(_w:Writer, _h:stdgo.StdGoTypes.GoUInt64, _stk:stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>):stdgo.Error throw ":internal.bisect._printStack is not yet implemented";
/**
    // Marker returns the match marker text to use on any line reporting details
    // about a match of the given ID.
    // It always returns the hexadecimal format.
**/
function marker(_id:stdgo.StdGoTypes.GoUInt64):stdgo.GoString throw ":internal.bisect.marker is not yet implemented";
/**
    // AppendMarker is like [Marker] but appends the marker to dst.
**/
function appendMarker(_dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _id:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoByte> throw ":internal.bisect.appendMarker is not yet implemented";
/**
    // CutMarker finds the first match marker in line and removes it,
    // returning the shortened line (with the marker removed),
    // the ID from the match marker,
    // and whether a marker was found at all.
    // If there is no marker, CutMarker returns line, 0, false.
**/
function cutMarker(_line:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.StdGoTypes.GoUInt64; var _2 : Bool; } throw ":internal.bisect.cutMarker is not yet implemented";
/**
    // Hash computes a hash of the data arguments,
    // each of which must be of type string, byte, int, uint, int32, uint32, int64, uint64, uintptr, or a slice of one of those types.
**/
function hash(_data:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.StdGoTypes.GoUInt64 throw ":internal.bisect.hash is not yet implemented";
function _fnv(_h:stdgo.StdGoTypes.GoUInt64, _x:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoUInt64 throw ":internal.bisect._fnv is not yet implemented";
function _fnvString(_h:stdgo.StdGoTypes.GoUInt64, _x:stdgo.GoString):stdgo.StdGoTypes.GoUInt64 throw ":internal.bisect._fnvString is not yet implemented";
function _fnvUint64(_h:stdgo.StdGoTypes.GoUInt64, _x:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoUInt64 throw ":internal.bisect._fnvUint64 is not yet implemented";
function _fnvUint32(_h:stdgo.StdGoTypes.GoUInt64, _x:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt64 throw ":internal.bisect._fnvUint32 is not yet implemented";
class Matcher_asInterface {
    /**
        // stack does the real work for Stack.
        // This lets stack's body handle m == nil and potentially be inlined.
    **/
    @:keep
    public dynamic function _stack(_w:Writer):Bool return __self__.value._stack(_w);
    /**
        // MatchStack assigns the current call stack a change ID.
        // If the stack should be printed, MatchStack prints it.
        // Then MatchStack reports whether a change at the current call stack should be enabled.
    **/
    @:keep
    public dynamic function stack(_w:Writer):Bool return __self__.value.stack(_w);
    /**
        // fileLine does the real work for FileLine.
        // This lets FileLine's body handle m == nil and potentially be inlined.
    **/
    @:keep
    public dynamic function _fileLine(_w:Writer, _file:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt):Bool return __self__.value._fileLine(_w, _file, _line);
    /**
        // FileLine reports whether the change identified by file and line should be enabled.
        // If the change should be printed, FileLine prints a one-line report to w.
    **/
    @:keep
    public dynamic function fileLine(_w:Writer, _file:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt):Bool return __self__.value.fileLine(_w, _file, _line);
    /**
        // matchResult returns the result from the first condition that matches id.
    **/
    @:keep
    public dynamic function _matchResult(_id:stdgo.StdGoTypes.GoUInt64):Bool return __self__.value._matchResult(_id);
    /**
        // ShouldPrint reports whether to print identifying information about the change with the given id.
    **/
    @:keep
    public dynamic function shouldPrint(_id:stdgo.StdGoTypes.GoUInt64):Bool return __self__.value.shouldPrint(_id);
    /**
        // ShouldEnable reports whether the change with the given id should be enabled.
    **/
    @:keep
    public dynamic function shouldEnable(_id:stdgo.StdGoTypes.GoUInt64):Bool return __self__.value.shouldEnable(_id);
    /**
        // MarkerOnly reports whether it is okay to print only the marker for
        // a given change, omitting the identifying information.
        // MarkerOnly returns true when bisect is using the printed reports
        // only for an intermediate search step, not for showing to users.
    **/
    @:keep
    public dynamic function markerOnly():Bool return __self__.value.markerOnly();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Matcher>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.bisect.Bisect.Matcher_asInterface) class Matcher_static_extension {
    /**
        // stack does the real work for Stack.
        // This lets stack's body handle m == nil and potentially be inlined.
    **/
    @:keep
    static public function _stack( _m:stdgo.StdGoTypes.Ref<Matcher>, _w:Writer):Bool throw "Matcher:internal.bisect._stack is not yet implemented";
    /**
        // MatchStack assigns the current call stack a change ID.
        // If the stack should be printed, MatchStack prints it.
        // Then MatchStack reports whether a change at the current call stack should be enabled.
    **/
    @:keep
    static public function stack( _m:stdgo.StdGoTypes.Ref<Matcher>, _w:Writer):Bool throw "Matcher:internal.bisect.stack is not yet implemented";
    /**
        // fileLine does the real work for FileLine.
        // This lets FileLine's body handle m == nil and potentially be inlined.
    **/
    @:keep
    static public function _fileLine( _m:stdgo.StdGoTypes.Ref<Matcher>, _w:Writer, _file:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt):Bool throw "Matcher:internal.bisect._fileLine is not yet implemented";
    /**
        // FileLine reports whether the change identified by file and line should be enabled.
        // If the change should be printed, FileLine prints a one-line report to w.
    **/
    @:keep
    static public function fileLine( _m:stdgo.StdGoTypes.Ref<Matcher>, _w:Writer, _file:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt):Bool throw "Matcher:internal.bisect.fileLine is not yet implemented";
    /**
        // matchResult returns the result from the first condition that matches id.
    **/
    @:keep
    static public function _matchResult( _m:stdgo.StdGoTypes.Ref<Matcher>, _id:stdgo.StdGoTypes.GoUInt64):Bool throw "Matcher:internal.bisect._matchResult is not yet implemented";
    /**
        // ShouldPrint reports whether to print identifying information about the change with the given id.
    **/
    @:keep
    static public function shouldPrint( _m:stdgo.StdGoTypes.Ref<Matcher>, _id:stdgo.StdGoTypes.GoUInt64):Bool throw "Matcher:internal.bisect.shouldPrint is not yet implemented";
    /**
        // ShouldEnable reports whether the change with the given id should be enabled.
    **/
    @:keep
    static public function shouldEnable( _m:stdgo.StdGoTypes.Ref<Matcher>, _id:stdgo.StdGoTypes.GoUInt64):Bool throw "Matcher:internal.bisect.shouldEnable is not yet implemented";
    /**
        // MarkerOnly reports whether it is okay to print only the marker for
        // a given change, omitting the identifying information.
        // MarkerOnly returns true when bisect is using the printed reports
        // only for an intermediate search step, not for showing to users.
    **/
    @:keep
    static public function markerOnly( _m:stdgo.StdGoTypes.Ref<Matcher>):Bool throw "Matcher:internal.bisect.markerOnly is not yet implemented";
}
class T_atomicPointerDedup_asInterface {
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.StdGoTypes.Ref<T_dedup>, _new:stdgo.StdGoTypes.Ref<T_dedup>):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function load():stdgo.StdGoTypes.Ref<T_dedup> return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_atomicPointerDedup>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.bisect.Bisect.T_atomicPointerDedup_asInterface) class T_atomicPointerDedup_static_extension {
    @:keep
    static public function compareAndSwap( _p:stdgo.StdGoTypes.Ref<T_atomicPointerDedup>, _old:stdgo.StdGoTypes.Ref<T_dedup>, _new:stdgo.StdGoTypes.Ref<T_dedup>):Bool throw "T_atomicPointerDedup:internal.bisect.compareAndSwap is not yet implemented";
    @:keep
    static public function load( _p:stdgo.StdGoTypes.Ref<T_atomicPointerDedup>):stdgo.StdGoTypes.Ref<T_dedup> throw "T_atomicPointerDedup:internal.bisect.load is not yet implemented";
}
class T_parseError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_parseError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.bisect.Bisect.T_parseError_asInterface) class T_parseError_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<T_parseError>):stdgo.GoString throw "T_parseError:internal.bisect.error is not yet implemented";
}
class T_dedup_asInterface {
    /**
        // seenLossy is a variant of seen that avoids a lock by using a cache of recently seen hashes.
        // Each cache entry is N-way set-associative: h can appear in any of the slots.
        // If h does not appear in any of them, then it is inserted into a random slot,
        // overwriting whatever was there before.
    **/
    @:keep
    public dynamic function _seenLossy(_h:stdgo.StdGoTypes.GoUInt64):Bool return __self__.value._seenLossy(_h);
    /**
        // seen records that h has now been seen and reports whether it was seen before.
        // When seen returns false, the caller is expected to print a report for h.
    **/
    @:keep
    public dynamic function _seen(_h:stdgo.StdGoTypes.GoUInt64):Bool return __self__.value._seen(_h);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dedup>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.bisect.Bisect.T_dedup_asInterface) class T_dedup_static_extension {
    /**
        // seenLossy is a variant of seen that avoids a lock by using a cache of recently seen hashes.
        // Each cache entry is N-way set-associative: h can appear in any of the slots.
        // If h does not appear in any of them, then it is inserted into a random slot,
        // overwriting whatever was there before.
    **/
    @:keep
    static public function _seenLossy( _d:stdgo.StdGoTypes.Ref<T_dedup>, _h:stdgo.StdGoTypes.GoUInt64):Bool throw "T_dedup:internal.bisect._seenLossy is not yet implemented";
    /**
        // seen records that h has now been seen and reports whether it was seen before.
        // When seen returns false, the caller is expected to print a report for h.
    **/
    @:keep
    static public function _seen( _d:stdgo.StdGoTypes.Ref<T_dedup>, _h:stdgo.StdGoTypes.GoUInt64):Bool throw "T_dedup:internal.bisect._seen is not yet implemented";
}
