package stdgo.errors;
var errUnsupported(get, set) : stdgo.Error;
private function get_errUnsupported():stdgo.Error return stdgo._internal.errors.Errors_errunsupported.errUnsupported;
private function set_errUnsupported(v:stdgo.Error):stdgo.Error {
        stdgo._internal.errors.Errors_errunsupported.errUnsupported = (v : stdgo.Error);
        return v;
    }
@:dox(hide) class T__interface_0_static_extension {
    static public function unwrap(t:stdgo._internal.errors.Errors_t__interface_0.T__interface_0):stdgo.Error {
        return stdgo._internal.errors.Errors_t__interface_0_static_extension.T__interface_0_static_extension.unwrap(t);
    }
}
@:interface @:dox(hide) @:forward abstract T__interface_0(stdgo._internal.errors.Errors_t__interface_0.T__interface_0) from stdgo._internal.errors.Errors_t__interface_0.T__interface_0 to stdgo._internal.errors.Errors_t__interface_0.T__interface_0 {
    @:from
    static function fromHaxeInterface(x:{ function unwrap():stdgo.Error; }):T__interface_0 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_0 = { unwrap : () -> x.unwrap(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_1_static_extension {
    static public function is_(t:stdgo._internal.errors.Errors_t__interface_1.T__interface_1, _0:stdgo.Error):Bool {
        final _0 = (_0 : stdgo.Error);
        return stdgo._internal.errors.Errors_t__interface_1_static_extension.T__interface_1_static_extension.is_(t, _0);
    }
}
@:interface @:dox(hide) @:forward abstract T__interface_1(stdgo._internal.errors.Errors_t__interface_1.T__interface_1) from stdgo._internal.errors.Errors_t__interface_1.T__interface_1 to stdgo._internal.errors.Errors_t__interface_1.T__interface_1 {
    @:from
    static function fromHaxeInterface(x:{ function is_(_0:stdgo.Error):Bool; }):T__interface_1 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_1 = { is_ : _0 -> x.is_(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_2_static_extension {
    static public function unwrap(t:stdgo._internal.errors.Errors_t__interface_2.T__interface_2):Array<stdgo.Error> {
        return [for (i in stdgo._internal.errors.Errors_t__interface_2_static_extension.T__interface_2_static_extension.unwrap(t)) i];
    }
}
@:interface @:dox(hide) @:forward abstract T__interface_2(stdgo._internal.errors.Errors_t__interface_2.T__interface_2) from stdgo._internal.errors.Errors_t__interface_2.T__interface_2 to stdgo._internal.errors.Errors_t__interface_2.T__interface_2 {
    @:from
    static function fromHaxeInterface(x:{ function unwrap():Array<stdgo.Error>; }):T__interface_2 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_2 = { unwrap : () -> [for (i in x.unwrap()) i], __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_3_static_extension {
    static public function as(t:stdgo._internal.errors.Errors_t__interface_3.T__interface_3, _0:stdgo.AnyInterface):Bool {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.errors.Errors_t__interface_3_static_extension.T__interface_3_static_extension.as(t, _0);
    }
}
@:interface @:dox(hide) @:forward abstract T__interface_3(stdgo._internal.errors.Errors_t__interface_3.T__interface_3) from stdgo._internal.errors.Errors_t__interface_3.T__interface_3 to stdgo._internal.errors.Errors_t__interface_3.T__interface_3 {
    @:from
    static function fromHaxeInterface(x:{ function as(_0:stdgo.AnyInterface):Bool; }):T__interface_3 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_3 = { as : _0 -> x.as(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.errors.Errors.T_errorString_static_extension) @:dox(hide) abstract T_errorString(stdgo._internal.errors.Errors_t_errorstring.T_errorString) from stdgo._internal.errors.Errors_t_errorstring.T_errorString to stdgo._internal.errors.Errors_t_errorstring.T_errorString {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public function new(?_s:String) this = new stdgo._internal.errors.Errors_t_errorstring.T_errorString((_s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.errors.Errors.T_joinError_static_extension) @:dox(hide) abstract T_joinError(stdgo._internal.errors.Errors_t_joinerror.T_joinError) from stdgo._internal.errors.Errors_t_joinerror.T_joinError to stdgo._internal.errors.Errors_t_joinerror.T_joinError {
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_errs:Array<stdgo.Error>) this = new stdgo._internal.errors.Errors_t_joinerror.T_joinError(([for (i in _errs) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_errorStringPointer = stdgo._internal.errors.Errors_t_errorstringpointer.T_errorStringPointer;
@:dox(hide) class T_errorString_static_extension {
    static public function error(_e:T_errorString):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.errors.Errors_t_errorstring.T_errorString>);
        return stdgo._internal.errors.Errors_t_errorstring_static_extension.T_errorString_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_joinErrorPointer = stdgo._internal.errors.Errors_t_joinerrorpointer.T_joinErrorPointer;
@:dox(hide) class T_joinError_static_extension {
    static public function unwrap(_e:T_joinError):Array<stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.errors.Errors_t_joinerror.T_joinError>);
        return [for (i in stdgo._internal.errors.Errors_t_joinerror_static_extension.T_joinError_static_extension.unwrap(_e)) i];
    }
    static public function error(_e:T_joinError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.errors.Errors_t_joinerror.T_joinError>);
        return stdgo._internal.errors.Errors_t_joinerror_static_extension.T_joinError_static_extension.error(_e);
    }
}
/**
    * Package errors implements functions to manipulate errors.
    * 
    * The [New] function creates errors whose only content is a text message.
    * 
    * An error e wraps another error if e's type has one of the methods
    * 
    * 	Unwrap() error
    * 	Unwrap() []error
    * 
    * If e.Unwrap() returns a non-nil error w or a slice containing w,
    * then we say that e wraps w. A nil error returned from e.Unwrap()
    * indicates that e does not wrap any error. It is invalid for an
    * Unwrap method to return an []error containing a nil error value.
    * 
    * An easy way to create wrapped errors is to call [fmt.Errorf] and apply
    * the %w verb to the error argument:
    * 
    * 	wrapsErr := fmt.Errorf("... %w ...", ..., err, ...)
    * 
    * Successive unwrapping of an error creates a tree. The [Is] and [As]
    * functions inspect an error's tree by examining first the error
    * itself followed by the tree of each of its children in turn
    * (pre-order, depth-first traversal).
    * 
    * Is examines the tree of its first argument looking for an error that
    * matches the second. It reports whether it finds a match. It should be
    * used in preference to simple equality checks:
    * 
    * 	if errors.Is(err, fs.ErrExist)
    * 
    * is preferable to
    * 
    * 	if err == fs.ErrExist
    * 
    * because the former will succeed if err wraps [io/fs.ErrExist].
    * 
    * As examines the tree of its first argument looking for an error that can be
    * assigned to its second argument, which must be a pointer. If it succeeds, it
    * performs the assignment and returns true. Otherwise, it returns false. The form
    * 
    * 	var perr *fs.PathError
    * 	if errors.As(err, &perr) {
    * 		fmt.Println(perr.Path)
    * 	}
    * 
    * is preferable to
    * 
    * 	if perr, ok := err.(*fs.PathError); ok {
    * 		fmt.Println(perr.Path)
    * 	}
    * 
    * because the former will succeed if err wraps an [*io/fs.PathError].
**/
class Errors {
    /**
        * New returns an error that formats as the given text.
        * Each call to New returns a distinct error value even if the text is identical.
    **/
    static public inline function new_(_text:String):stdgo.Error {
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.errors.Errors_new_.new_(_text);
    }
    /**
        * Join returns an error that wraps the given errors.
        * Any nil error values are discarded.
        * Join returns nil if every value in errs is nil.
        * The error formats as the concatenation of the strings obtained
        * by calling the Error method of each element of errs, with a newline
        * between each string.
        * 
        * A non-nil error returned by Join implements the Unwrap() []error method.
    **/
    static public inline function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error {
        return stdgo._internal.errors.Errors_join.join(...[for (i in _errs) i]);
    }
    /**
        * Unwrap returns the result of calling the Unwrap method on err, if err's
        * type contains an Unwrap method returning error.
        * Otherwise, Unwrap returns nil.
        * 
        * Unwrap only calls a method of the form "Unwrap() error".
        * In particular Unwrap does not unwrap errors returned by [Join].
    **/
    static public inline function unwrap(_err:stdgo.Error):stdgo.Error {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.errors.Errors_unwrap.unwrap(_err);
    }
    /**
        * Is reports whether any error in err's tree matches target.
        * 
        * The tree consists of err itself, followed by the errors obtained by repeatedly
        * calling Unwrap. When err wraps multiple errors, Is examines err followed by a
        * depth-first traversal of its children.
        * 
        * An error is considered to match a target if it is equal to that target or if
        * it implements a method Is(error) bool such that Is(target) returns true.
        * 
        * An error type might provide an Is method so it can be treated as equivalent
        * to an existing error. For example, if MyError defines
        * 
        * 	func (m MyError) Is(target error) bool { return target == fs.ErrExist }
        * 
        * then Is(MyError{}, fs.ErrExist) returns true. See [syscall.Errno.Is] for
        * an example in the standard library. An Is method should only shallowly
        * compare err and the target and not call Unwrap on either.
    **/
    static public inline function is_(_err:stdgo.Error, _target:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        final _target = (_target : stdgo.Error);
        return stdgo._internal.errors.Errors_is_.is_(_err, _target);
    }
    /**
        * As finds the first error in err's tree that matches target, and if one is found, sets
        * target to that error value and returns true. Otherwise, it returns false.
        * 
        * The tree consists of err itself, followed by the errors obtained by repeatedly
        * calling Unwrap. When err wraps multiple errors, As examines err followed by a
        * depth-first traversal of its children.
        * 
        * An error matches target if the error's concrete value is assignable to the value
        * pointed to by target, or if the error has a method As(interface{}) bool such that
        * As(target) returns true. In the latter case, the As method is responsible for
        * setting target.
        * 
        * An error type might provide an As method so it can be treated as if it were a
        * different error type.
        * 
        * As panics if target is not a non-nil pointer to either a type that implements
        * error, or to any interface type.
    **/
    static public inline function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool {
        final _err = (_err : stdgo.Error);
        final _target = (_target : stdgo.AnyInterface);
        return stdgo._internal.errors.Errors_as.as(_err, _target);
    }
}
