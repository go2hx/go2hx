@:forward
@:access(StringTools)
abstract GoString(String) from String to String {
  @:arrayAccess
  inline function get(id:Int) {
    return this.charAt(id);
  }
  @:op(A < B) static function lt(a:GoString, b:GoString):Bool {
    return new String(a) < new String(b);
  }

	@:op(A <= B) static function lte(a:GoString, b:GoString):Bool {
    return new String(a) <= new String(b);
  }

	@:op(A > B) static function gt(a:GoString, b:GoString):Bool {
    return new String(a) > new String(b);
  }

	@:op(A >= B) static function gte(a:GoString, b:GoString):Bool {
    return new String(a) >= new String(b);
  }

	@:op(A == B) static function eq(a:GoString, b:GoString):Bool {
    return new String(a) == new String(b);
  }

	@:op(A != B) static function neq(a:GoString, b:GoString):Bool {
    return new String(a) != new String(b);
  }

	@:op(A + B) static function add(a:GoString, b:GoString):GoString {
    return new String(a) + new String(b);
  }

	@:op(A += B) static function assignAdd(a:GoString, b:GoString):GoString {
    return new String(a) += new String(b);
  }
}