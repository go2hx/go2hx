package stdgo._internal.unsafe;

@:follow typedef Pointer_ = UnsafePointer;

abstract UnsafePointer(stdgo.AnyInterface) from stdgo.AnyInterface to stdgo.AnyInterface {
	private function new(value) {
		this = value;
	}
	public function __toRef__():stdgo.Ref<Dynamic>
		return this.value;

	public function __convert__(toType:stdgo._internal.internal.reflect.Reflect.GoType):Any {
		var fromType:stdgo._internal.internal.reflect.Reflect.GoType = (this.type : Dynamic)._common();
		var f = null;
		f = t -> switch t {
			case stdgo._internal.internal.reflect.Reflect.GoType.refType(_.get() => elem):
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
								return Go.pointer(((this.value : stdgo.Slice<GoUInt8>).toBytes() : stdgo.GoString));
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
	return new stdgo.GoUIntptr(x.type.size());
}

function offsetof_(x:AnyInterface):GoUIntptr {
	return new stdgo.GoUIntptr(0);
}

function alignof_(x:AnyInterface):GoUIntptr {
	return new stdgo.GoUIntptr(0);
}

function stringData(s:GoString):Dynamic
	return null;

function sliceData<T>(s:Slice<T>):Dynamic
	return null;

function string(s:stdgo.Pointer<stdgo.GoByte>, len:GoInt):GoString
	return "";

function slice(_ptr:Pointer<Dynamic>,_len:GoInt):Array<Dynamic>
	return [];