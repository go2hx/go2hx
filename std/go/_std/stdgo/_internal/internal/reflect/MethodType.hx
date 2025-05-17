
package stdgo._internal.internal.reflect;
@:structInit
class MethodType {
	public var name:String;
	public var type:GoType.GoTypeRef<GoType>;
	public var recv:GoType.GoTypeRef<GoType>;

	public function new(name, type, recv) {
		this.name = name;
		this.type = type;
		this.recv = recv;
	}

	function string():String
		return name;

	public function toString()
		return '$name: $type';
}