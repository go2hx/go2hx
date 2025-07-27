package go;
/**
 * All interfaces and structs unify with this type
 */
typedef StructType = {
	/**
	 * Allows struct or interfaces to provide back type information.
	 * @return go.AnyInterface
	 */
	public function __underlying__():go.AnyInterface;
}