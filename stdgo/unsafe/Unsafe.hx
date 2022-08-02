package stdgo.unsafe;

import stdgo.Pointer;
import stdgo.StdGoTypes;
import stdgo.reflect.Reflect.GoType;

@:follow typedef Pointer_ = UnsafePointer;

abstract UnsafePointer(AnyInterface) from AnyInterface {
	private function new(value) {
		this = value;
	}

	public function __convert__(toType:GoType):Any {
		final fromType:GoType = this.type.common().value;
		if (fromType.equals(toType))
			return this.value;
		switch fromType {
			case sliceType(elem):
				switch elem {
					case basic(uint8_kind):
						switch toType {
							case pointer(basic(string_kind)):
								return Go.pointer(((this.value : Slice<GoUInt8>).toBytes() : GoString));
							default:
						}
					default:
				}
			default:
		}
		trace("unimplemented unsafe conversion: " + fromType + " -> " + toType);
		return this.value;
	}
}

function sizeof(x:AnyInterface):GoUIntptr {
	return x.type.size();
}

function offsetof(x:AnyInterface):GoUIntptr {
	return 0;
}

function alignof(x:AnyInterface):GoUIntptr {
	return 0;
}
