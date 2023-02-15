package stdgo.unsafe;

import stdgo.Pointer;
import stdgo.StdGoTypes;
import stdgo.internal.reflect.Reflect.GoType;
using GoString.GoStringTools;

@:follow typedef Pointer_ = UnsafePointer;

abstract UnsafePointer(AnyInterface) from AnyInterface {
	private function new(value) {
		this = value;
	}

	public function __convert__(toType:GoType):Any {
		var fromType:GoType = (this.type : Dynamic)._common();
		var f = null;
		f = t -> switch t {
			case refType(_.get() => elem):
				f(elem);
			default:
				t;
		}
		fromType = f(fromType);
		toType = f(toType);
		if (fromType.equals(toType))
			return this.value;
		// to
		switch toType {
			case basic(uintptr_kind):
				return this.value;
			default:
		}
		// from
		switch fromType {
			case basic(kind):
				switch kind {
					case uintptr_kind:
						return this.value;
					default:
				}
			case sliceType(_.get() => elem):
				switch elem {
					case basic(uint8_kind):
						switch toType {
							case pointerType(_.get() => basic(string_kind)):
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

function offsetof_(x:AnyInterface):GoUIntptr {
	return 0;
}

function alignof_(x:AnyInterface):GoUIntptr {
	return 0;
}

function stringData(s:GoString):GoString
	return s;

function sliceData<T>(s:Slice<T>):Slice<T>
	return s;

function string(s:GoString, len:GoInt):GoString
	return s.substr(0,len);
