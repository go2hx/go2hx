package stdgo._internal.internal.reflect;
@:structInit
class FieldType {
	public var name:String;
	public var type:GoType.GoTypeRef<GoType>;
	public var tag:String;
	public var embedded:Bool;
	public var optional:Bool;

	public function new(name, type, tag, embedded,optional) {
		this.name = name;
		this.type = type;
		this.tag = tag;
		this.embedded = embedded;
		this.optional = optional;
	}
	public function toString():String {
		return '$name opt: $optional';
	}
}