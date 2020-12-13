import haxe.Exception;

class Errors extends Exception {

	private function new(text:String) {
		super(text);
	}

	// As finds the first error in err's chain that matches target, and if so, sets
	// target to that error value and returns true. Otherwise, it returns false.
	//
	// The chain consists of err itself followed by the sequence of errors obtained by
	// repeatedly calling Unwrap.
	//
	// An error matches target if the error's concrete value is assignable to the value
	// pointed to by target, or if the error has a method As(interface{}) bool such that
	// As(target) returns true. In the latter case, the As method is responsible for
	// setting target.
	//
	// An error type might provide an As method so it can be treated as if it were a
	// different error type.
	//
	// As panics if target is not a non-nil pointer to either a type that implements
	// error, or to any interface type.
	public static function As(err:Errors, target:Any):Bool {
		return false;
	}

	// Unwrap returns the result of calling the Unwrap method on err, if err's
	// type contains an Unwrap method returning error.
	// Otherwise, Unwrap returns nil.
	public static function Unwrap(err:Errors):Errors {
		return null;
	}

	// Is reports whether any error in err's chain matches target.
	//
	// The chain consists of err itself followed by the sequence of errors obtained by
	// repeatedly calling Unwrap.
	//
	// An error is considered to match a target if it is equal to that target or if
	// it implements a method Is(error) bool such that Is(target) returns true.
	//
	// An error type might provide an Is method so it can be treated as equivalent
	// to an existing error. For example, if MyError defines
	//
	//	func (m MyError) Is(target error) bool { return target == fs.ErrExist }
	//
	// then Is(MyError{}, fs.ErrExist) returns true. See syscall.Errno.Is for
	// an example in the standard library.
	public static function is(err:haxe.Exception, target:haxe.Exception):Bool {
		return false;
	}
}
